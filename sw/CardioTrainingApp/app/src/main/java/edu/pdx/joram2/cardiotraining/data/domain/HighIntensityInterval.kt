package edu.pdx.joram2.cardiotraining.data.domain

abstract class HighIntensityInterval(
    override val durationSet: Long,
    val numIntervals: Int
) : TrainingSession {

    override var durationMeasured: Long = 0L
    override val durationMeet: Boolean get() = durationMeasured >= durationSet
    override var timeOnPace: Long = 0L
    override var timeTooFast: Long = 0L
    override var timeTooSlow: Long = 0L

    var currentInterval: Int = 0

    // Placeholder for Final Project IoT biometric integration
    open fun readBiometricData() {}
}
