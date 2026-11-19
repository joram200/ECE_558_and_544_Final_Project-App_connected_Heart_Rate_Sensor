package edu.pdx.joram2.cardiotraining.data

import android.location.Location
import kotlinx.coroutines.flow.MutableStateFlow

/**
 * In-memory singleton that is the sole bridge between TrackingService (writer)
 * and SessionViewModel (reader). No Room, no Activity context required.
 * MutableStateFlow is used (not SharedFlow) so reset() and replay-on-reconnect are trivial.
 */
object TrackingRepository {
    val liveLocation : MutableStateFlow<Location?> = MutableStateFlow(null)
    val elapsedMs    : MutableStateFlow<Long>      = MutableStateFlow(0L)
    val isActive     : MutableStateFlow<Boolean>   = MutableStateFlow(false)

    fun reset() {
        liveLocation.value = null
        elapsedMs.value    = 0L
        isActive.value     = false
    }
}
