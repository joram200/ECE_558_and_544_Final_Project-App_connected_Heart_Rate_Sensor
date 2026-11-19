package edu.pdx.joram2.cardiotraining.data.domain

interface TrainingSession {
    val durationSet: Long       // milliseconds
    var durationMeasured: Long  // milliseconds
    val durationMeet: Boolean   // true when durationMeasured >= durationSet
    var timeOnPace: Long        // cumulative ms spent on pace
    var timeTooFast: Long       // cumulative ms spent too fast
    var timeTooSlow: Long       // cumulative ms spent too slow
}
