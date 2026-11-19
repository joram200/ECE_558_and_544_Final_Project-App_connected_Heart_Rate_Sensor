package edu.pdx.joram2.cardiotraining.data.domain

open class LowIntensitySteadyState(
    override val durationSet: Long,
    val paceMin: Double,
    val paceMax: Double
) : TrainingSession {

    override var durationMeasured: Long = 0L
    override val durationMeet: Boolean get() = durationMeasured >= durationSet
    override var timeOnPace: Long = 0L
    override var timeTooFast: Long = 0L
    override var timeTooSlow: Long = 0L

    var distanceMeasured: Double = 0.0  // miles
    var speed: Double = 0.0             // mph
    var paceStatus: PaceStatus = PaceStatus.ON_PACE

    fun updatePaceStatus() {
        paceStatus = when {
            speed < paceMin -> PaceStatus.TOO_SLOW
            speed > paceMax -> PaceStatus.TOO_FAST
            else            -> PaceStatus.ON_PACE
        }
    }
}
