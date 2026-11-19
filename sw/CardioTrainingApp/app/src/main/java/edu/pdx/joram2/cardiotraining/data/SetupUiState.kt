package edu.pdx.joram2.cardiotraining.data

/**
 * Immutable state container for the Setup screen inputs.
 * Pace values are always stored in mph internally regardless of [unitSystem].
 */
data class SetupUiState(
    val trainingType: TrainingType = TrainingType.LISS,
    val lissType: LissType        = LissType.RACKING,
    val hiiType: HiiType          = HiiType.VO2MAX,
    val unitSystem: UnitSystem    = UnitSystem.IMPERIAL,
    val durationMinutes: Int      = 30,
    val paceMinMph: Double        = 3.5,
    val paceMaxMph: Double        = 4.5
)
