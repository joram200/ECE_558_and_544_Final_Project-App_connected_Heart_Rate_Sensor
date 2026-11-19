package edu.pdx.joram2.cardiotraining.ui.viewmodel

import android.app.Application
import android.content.Intent
import android.location.Location
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewModelScope
import edu.pdx.joram2.cardiotraining.CardioTrainingApp
import edu.pdx.joram2.cardiotraining.data.AlertEvent
import edu.pdx.joram2.cardiotraining.data.AppScreen
import edu.pdx.joram2.cardiotraining.data.HiiType
import edu.pdx.joram2.cardiotraining.data.LissType
import edu.pdx.joram2.cardiotraining.data.SessionUiState
import edu.pdx.joram2.cardiotraining.data.SetupUiState
import edu.pdx.joram2.cardiotraining.data.TrackingRepository
import edu.pdx.joram2.cardiotraining.data.TrainingType
import edu.pdx.joram2.cardiotraining.data.UnitSystem
import edu.pdx.joram2.cardiotraining.data.db.SessionEntity
import edu.pdx.joram2.cardiotraining.data.domain.Anaerobic
import edu.pdx.joram2.cardiotraining.data.domain.HighIntensityInterval
import edu.pdx.joram2.cardiotraining.data.domain.LowIntensitySteadyState
import edu.pdx.joram2.cardiotraining.data.domain.PaceStatus
import edu.pdx.joram2.cardiotraining.data.domain.Racking
import edu.pdx.joram2.cardiotraining.data.domain.Running
import edu.pdx.joram2.cardiotraining.data.domain.TrainingSession
import edu.pdx.joram2.cardiotraining.data.domain.VO2Max
import edu.pdx.joram2.cardiotraining.service.NotificationHelper
import edu.pdx.joram2.cardiotraining.service.TrackingService
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

class SessionViewModel(application: Application) : AndroidViewModel(application) {

    private val ctx = application.applicationContext
    private val repository = (application as CardioTrainingApp).repository

    // ── Public state ─────────────────────────────────────────────────────────

    private val _uiState = MutableStateFlow(SessionUiState())
    val uiState: StateFlow<SessionUiState> = _uiState.asStateFlow()

    private val _alertEvents = MutableSharedFlow<AlertEvent>()
    val alertEvents: SharedFlow<AlertEvent> = _alertEvents.asSharedFlow()

    private val _setupState = MutableStateFlow(SetupUiState())
    val setupState: StateFlow<SetupUiState> = _setupState.asStateFlow()

    // ── Archive state ─────────────────────────────────────────────────────────

    private val _archiveFilter = MutableStateFlow<TrainingType?>(null)
    val archiveFilter: StateFlow<TrainingType?> = _archiveFilter.asStateFlow()

    val filteredSessions: StateFlow<List<edu.pdx.joram2.cardiotraining.data.db.SessionEntity>> =
        combine(repository.getAllSessions(), _archiveFilter) { sessions, filter ->
            if (filter == null) sessions
            else sessions.filter { it.trainingType == filter.name }
        }.stateIn(
            scope        = viewModelScope,
            started      = SharingStarted.WhileSubscribed(5_000),
            initialValue = emptyList()
        )

    // ── Private tracking state ────────────────────────────────────────────────

    private var activeSession: TrainingSession? = null
    private var lastLocation: Location? = null
    private var prevPaceStatus: PaceStatus = PaceStatus.ON_PACE
    private var durationAlertFired = false
    private var autoStopCounter = 0
    private var prevPhaseIndex = -1

    // ── Init ─────────────────────────────────────────────────────────────────

    init {
        viewModelScope.launch { collectTrackingData() }
        viewModelScope.launch { collectAndFireAlerts() }
    }

    // ── Setup event handlers ──────────────────────────────────────────────────

    fun onTrainingTypeChanged(type: TrainingType) {
        _setupState.update { it.copy(trainingType = type) }
        if (type == TrainingType.LISS) {
            onLissTypeChanged(_setupState.value.lissType)
        }
    }

    fun onLissTypeChanged(type: LissType) {
        val (min, max) = if (type == LissType.RACKING) 3.5 to 4.5 else 5.0 to 6.0
        _setupState.update { it.copy(lissType = type, paceMinMph = min, paceMaxMph = max) }
    }

    fun onHiiTypeChanged(type: HiiType) {
        _setupState.update { it.copy(hiiType = type) }
    }

    fun onDurationChanged(minutes: Int) {
        _setupState.update { it.copy(durationMinutes = minutes) }
    }

    fun onPaceMinChanged(mph: Double) {
        _setupState.update { it.copy(paceMinMph = mph) }
    }

    fun onPaceMaxChanged(mph: Double) {
        _setupState.update { it.copy(paceMaxMph = mph) }
    }

    fun onArchiveFilterChanged(type: TrainingType?) {
        _archiveFilter.value = type
    }

    fun onUnitSystemChanged(system: UnitSystem) {
        _setupState.update { it.copy(unitSystem = system) }
        _uiState.update { it.copy(unitSystem = system) }
    }

    // ── Session lifecycle ─────────────────────────────────────────────────────

    fun onStartSession() {
        val setup = _setupState.value
        val perIntervalMs = setup.durationMinutes * 60_000L

        // For HII, durationSet = total session time = perInterval × numIntervals × 2 (work + rest)
        // For LISS, durationSet = the duration the user typed directly
        activeSession = when {
            setup.trainingType == TrainingType.LISS && setup.lissType == LissType.RACKING ->
                Racking(perIntervalMs, setup.paceMinMph, setup.paceMaxMph)
            setup.trainingType == TrainingType.LISS ->
                Running(perIntervalMs, setup.paceMinMph, setup.paceMaxMph)
            setup.hiiType == HiiType.VO2MAX ->
                VO2Max(perIntervalMs * 4 * 2)   // 4 work + 4 rest phases
            else ->
                Anaerobic(perIntervalMs * 6 * 2) // 6 work + 6 rest phases
        }

        val durationMs = activeSession!!.durationSet

        lastLocation = null
        prevPaceStatus = PaceStatus.ON_PACE
        durationAlertFired = false
        autoStopCounter = 0
        prevPhaseIndex = -1

        _uiState.update {
            it.copy(
                screen        = AppScreen.ACTIVE,
                trainingType  = setup.trainingType,
                lissType      = setup.lissType,
                hiiType       = setup.hiiType,
                unitSystem    = setup.unitSystem,
                durationSetMs = durationMs,
                paceMinMph    = setup.paceMinMph,
                paceMaxMph    = setup.paceMaxMph,
                totalIntervals = when (val s = activeSession) {
                    is VO2Max    -> s.numIntervals
                    is Anaerobic -> s.numIntervals
                    else         -> 0
                },
                isSessionActive = true,
                elapsedTimeMs   = 0L,
                distanceMiles   = 0.0,
                timeOnPaceMs    = 0L,
                timeTooFastMs   = 0L,
                timeTooSlowMs   = 0L
            )
        }

        startTrackingService()
    }

    fun onStopSession() {
        stopTrackingService()

        val session = activeSession
        val entity = if (session != null) {
            val ui = _uiState.value
            SessionEntity(
                trainingType      = ui.trainingType.name,
                subType           = session::class.simpleName ?: "Unknown",
                durationSetMs     = session.durationSet,
                durationMeasuredMs = session.durationMeasured,
                distanceMiles     = if (session is LowIntensitySteadyState) session.distanceMeasured else 0.0,
                paceMinMph        = ui.paceMinMph,
                paceMaxMph        = ui.paceMaxMph,
                timeOnPaceMs      = session.timeOnPace,
                timeTooFastMs     = session.timeTooFast,
                timeTooSlowMs     = session.timeTooSlow,
                numIntervals      = when (session) {
                    is VO2Max    -> session.numIntervals
                    is Anaerobic -> session.numIntervals
                    else         -> 0
                }
            )
        } else null

        _uiState.update { it.copy(screen = AppScreen.SUMMARY, isSessionActive = false) }

        if (entity != null) {
            viewModelScope.launch { repository.insertSession(entity) }
        }

        activeSession = null
        lastLocation  = null
        TrackingRepository.reset()
    }

    fun onNewSession() {
        _uiState.update { it.copy(screen = AppScreen.SETUP) }
    }

    // ── Data collection ───────────────────────────────────────────────────────

    private suspend fun collectTrackingData() {
        // Timer coroutine
        viewModelScope.launch {
            TrackingRepository.elapsedMs.collect { ms ->
                val session = activeSession ?: return@collect
                session.durationMeasured = ms
                if (!durationAlertFired && ms >= session.durationSet) {
                    durationAlertFired = true
                    _alertEvents.emit(AlertEvent.OverDuration)
                }
                // Derive current interval and rest/work phase for HII sessions
                var currentInterval = 0
                var isResting = false
                if (session is HighIntensityInterval && session.numIntervals > 0) {
                    // numIntervals work phases + numIntervals rest phases = numIntervals * 2 total
                    val totalPhases   = session.numIntervals * 2
                    val phaseDuration = session.durationSet / totalPhases
                    val phaseIndex    = (ms / phaseDuration).toInt().coerceAtMost(totalPhases - 1)

                    isResting       = phaseIndex % 2 == 1
                    currentInterval = phaseIndex / 2 + 1
                    session.currentInterval = currentInterval

                    if (phaseIndex != prevPhaseIndex && prevPhaseIndex != -1) {
                        if (isResting) _alertEvents.emit(AlertEvent.IntervalComplete)
                        else           _alertEvents.emit(AlertEvent.RestComplete)
                    }
                    prevPhaseIndex = phaseIndex
                }
                _uiState.update { it.copy(
                    elapsedTimeMs   = ms,
                    currentInterval = currentInterval,
                    isResting       = isResting
                ) }
            }
        }

        // Location coroutine
        TrackingRepository.liveLocation.collect { location ->
            location ?: return@collect
            val session = activeSession ?: return@collect

            // Use GPS speed when available; derive from position delta when falling back
            // to WiFi/network positioning (which does not populate location.speed).
            // elapsedRealtimeNanos is a monotonic boot clock — more reliable than
            // location.time (which can be the same value across repeated cached fixes).
            val speedMph: Float = when {
                location.hasSpeed() && location.speed > 0f ->
                    location.speed * 2.23694f
                lastLocation != null -> {
                    val distM = lastLocation!!.distanceTo(location)
                    val dtSec = (location.elapsedRealtimeNanos - lastLocation!!.elapsedRealtimeNanos) / 1_000_000_000f
                    if (dtSec > 0f) (distM / dtSec) * 2.23694f else 0f
                }
                else -> 0f
            }


            if (session is LowIntensitySteadyState) {
                // Always update speed for display
                session.speed = speedMph.toDouble()

                if (speedMph >= 0.5f) {
                    // Distance accumulation
                    lastLocation?.let { prev ->
                        val deltaMiles = prev.distanceTo(location) * 0.000621371
                        session.distanceMeasured += deltaMiles
                    }

                    // Pace status + alerts — only while moving
                    session.updatePaceStatus()
                    val newStatus = session.paceStatus
                    if (newStatus != prevPaceStatus) {
                        prevPaceStatus = newStatus
                        when (newStatus) {
                            PaceStatus.TOO_SLOW -> _alertEvents.emit(AlertEvent.TooSlow)
                            PaceStatus.TOO_FAST -> _alertEvents.emit(AlertEvent.TooFast)
                            PaceStatus.ON_PACE  -> { /* no alert for returning to pace */ }
                        }
                    }

                    // Time buckets — only while moving
                    when (session.paceStatus) {
                        PaceStatus.ON_PACE  -> session.timeOnPace  += 500L
                        PaceStatus.TOO_FAST -> session.timeTooFast += 500L
                        PaceStatus.TOO_SLOW -> session.timeTooSlow += 500L
                    }
                }
                // Below 0.5 mph: speed display updates but paceStatus and
                // prevPaceStatus are frozen — no alert, no time accumulation
            } else {
                // HII: accumulate active time on every tick regardless of speed
                session.timeOnPace += 500L
            }

            // Auto-stop: 60 ticks × 500ms = 30 s below 0.5 mph — LISS only;
            // HII sessions include intentional stationary rest periods.
            if (session is LowIntensitySteadyState) {
                if (speedMph < 0.5f) {
                    autoStopCounter++
                    if (autoStopCounter >= 60) {
                        onStopSession()
                        return@collect
                    }
                } else {
                    autoStopCounter = 0
                }
            }

            lastLocation = location

            _uiState.update { state ->
                state.copy(
                    currentSpeedMph  = speedMph.toDouble(),
                    paceStatus       = if (session is LowIntensitySteadyState) session.paceStatus
                                       else PaceStatus.ON_PACE,
                    distanceMiles    = if (session is LowIntensitySteadyState) session.distanceMeasured
                                       else 0.0,
                    timeOnPaceMs     = session.timeOnPace,
                    timeTooFastMs    = session.timeTooFast,
                    timeTooSlowMs    = session.timeTooSlow
                )
            }
        }
    }

    private suspend fun collectAndFireAlerts() {
        alertEvents.collect { event ->
            NotificationHelper.fireAlert(ctx, event)
        }
    }

    // ── Service helpers ───────────────────────────────────────────────────────

    private fun startTrackingService() {
        ctx.startForegroundService(
            Intent(ctx, TrackingService::class.java).apply { action = TrackingService.ACTION_START }
        )
    }

    private fun stopTrackingService() {
        ctx.startService(
            Intent(ctx, TrackingService::class.java).apply { action = TrackingService.ACTION_STOP }
        )
    }

    // ── Factory ───────────────────────────────────────────────────────────────

    companion object {
        fun factory(app: CardioTrainingApp): ViewModelProvider.Factory =
            object : ViewModelProvider.AndroidViewModelFactory(app) {}
    }
}
