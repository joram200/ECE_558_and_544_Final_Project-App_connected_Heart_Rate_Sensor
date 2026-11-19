package edu.pdx.joram2.cardiotraining.data.db

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "sessions")
data class SessionEntity(
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val trainingType: String,       // "LISS" | "HII"
    val subType: String,            // "Running" | "Racking" | "VO2Max" | "Anaerobic"
    val durationSetMs: Long,
    val durationMeasuredMs: Long,
    val distanceMiles: Double,
    val paceMinMph: Double,
    val paceMaxMph: Double,
    val timeOnPaceMs: Long,
    val timeTooFastMs: Long,
    val timeTooSlowMs: Long,
    val numIntervals: Int = 0,
    val timestamp: Long = System.currentTimeMillis()
)
