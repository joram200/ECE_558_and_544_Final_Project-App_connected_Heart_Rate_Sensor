package edu.pdx.joram2.cardiotraining.data.domain

class Racking(
    durationSet: Long,
    paceMin: Double = 3.5,
    paceMax: Double = 4.5
) : LowIntensitySteadyState(durationSet, paceMin, paceMax)
