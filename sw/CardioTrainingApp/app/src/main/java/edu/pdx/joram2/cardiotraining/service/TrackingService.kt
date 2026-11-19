package edu.pdx.joram2.cardiotraining.service

import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.os.SystemClock
import androidx.core.content.ContextCompat
import com.google.android.gms.location.FusedLocationProviderClient
import com.google.android.gms.location.LocationCallback
import com.google.android.gms.location.LocationRequest
import com.google.android.gms.location.LocationResult
import com.google.android.gms.location.LocationServices
import com.google.android.gms.location.Priority
import edu.pdx.joram2.cardiotraining.data.TrackingRepository
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

class TrackingService : Service() {

    companion object {
        const val ACTION_START = "edu.pdx.joram2.cardiotraining.ACTION_START"
        const val ACTION_STOP  = "edu.pdx.joram2.cardiotraining.ACTION_STOP"
        const val FOREGROUND_NOTIFICATION_ID = 1
    }

    private val serviceJob = SupervisorJob()
    private val serviceScope = CoroutineScope(Dispatchers.Default + serviceJob)

    private lateinit var fusedLocationClient: FusedLocationProviderClient
    private lateinit var locationCallback: LocationCallback
    private var timerJob: Job? = null

    override fun onCreate() {
        super.onCreate()
        fusedLocationClient = LocationServices.getFusedLocationProviderClient(this)
        locationCallback = object : LocationCallback() {
            override fun onLocationResult(result: LocationResult) {
                val loc = result.lastLocation
                    ?: result.locations.firstOrNull()
                    ?: return
                TrackingRepository.liveLocation.value = loc
            }
        }
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_START -> startTracking()
            ACTION_STOP  -> { stopTracking(); stopSelf() }
        }
        return START_STICKY
    }

    private fun startTracking() {
        NotificationHelper.createChannels(this)
        startForeground(FOREGROUND_NOTIFICATION_ID, NotificationHelper.buildForegroundNotification(this))
        TrackingRepository.isActive.value = true

        val request = LocationRequest.Builder(Priority.PRIORITY_HIGH_ACCURACY, 1000L)
            .setMinUpdateIntervalMillis(500L)
            .build()

        try {
            fusedLocationClient.requestLocationUpdates(
                request,
                ContextCompat.getMainExecutor(this),
                locationCallback
            )
        } catch (_: SecurityException) {
            // Permission denied at runtime; ViewModel will not receive location updates
        }

        val startTime = SystemClock.elapsedRealtime()
        timerJob = serviceScope.launch {
            while (TrackingRepository.isActive.value) {
                TrackingRepository.elapsedMs.value = SystemClock.elapsedRealtime() - startTime
                delay(500L)
            }
        }
    }

    private fun stopTracking() {
        fusedLocationClient.removeLocationUpdates(locationCallback)
        timerJob?.cancel()
        TrackingRepository.isActive.value = false
        stopForeground(STOP_FOREGROUND_REMOVE)
    }

    override fun onDestroy() {
        super.onDestroy()
        serviceJob.cancel()
    }

    override fun onBind(intent: Intent?): IBinder? = null
}
