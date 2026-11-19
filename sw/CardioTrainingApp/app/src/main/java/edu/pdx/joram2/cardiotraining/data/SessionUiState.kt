package edu.pdx.joram2.cardiotraining.data

import edu.pdx.joram2.cardiotraining.data.domain.PaceStatus

enum class TrainingType { LISS, HII }
enum class LissType     { RUNNING, RACKING }
enum class HiiType      { VO2MAX, ANAEROBIC }
enum class AppScreen    { SETUP, ACTIVE, SUMMARY }
enum class UnitSystem   { IMPERIAL, METRIC }

/**
 * Immutable UI state snapshot observed by all screens via collectAsStateWithLifecycle().
 *
 * Speed and distance are always stored internally in Imperial units (mph, miles).
 * Conversion to Metric (m/s, km) is applied at the UI display layer based on [unitSystem].
 */
data class SessionUiState(
    val screen: AppScreen         = AppScreen.SETUP,
    val trainingType: TrainingType = TrainingType.LISS,
    val lissType: LissType        = LissType.RACKING,
    val hiiType: HiiType          = HiiType.VO2MAX,
    val unitSystem: UnitSystem    = UnitSystem.IMPERIAL,

    // Active session display
    val elapsedTimeMs: Long       = 0L,
    val durationSetMs: Long       = 0L,
    val currentSpeedMph: Double   = 0.0,
    val paceStatus: PaceStatus    = PaceStatus.ON_PACE,
    val paceMinMph: Double        = 3.5,
    val paceMaxMph: Double        = 4.5,
    val distanceMiles: Double     = 0.0,

    // HII-specific
    val currentInterval: Int      = 0,
    val totalIntervals: Int       = 0,
    val isResting: Boolean        = false,

    // Summary / pace time buckets
    val timeOnPaceMs: Long        = 0L,
    val timeTooFastMs: Long       = 0L,
    val timeTooSlowMs: Long       = 0L,

    val isSessionActive: Boolean  = false
)
