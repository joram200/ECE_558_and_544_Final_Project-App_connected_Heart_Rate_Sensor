package edu.pdx.joram2.cardiotraining.data

sealed class AlertEvent {
    object TooSlow          : AlertEvent()
    object TooFast          : AlertEvent()
    object OverDuration     : AlertEvent()
    object IntervalComplete : AlertEvent()
    object RestComplete     : AlertEvent()
}
