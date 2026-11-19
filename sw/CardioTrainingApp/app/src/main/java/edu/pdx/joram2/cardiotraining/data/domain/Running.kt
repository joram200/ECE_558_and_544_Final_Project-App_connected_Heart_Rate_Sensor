package edu.pdx.joram2.cardiotraining.data.domain

class Running(
    durationSet: Long,
    paceMin: Double = 5.0,
    paceMax: Double = 6.0
) : LowIntensitySteadyState(durationSet, paceMin, paceMax)
