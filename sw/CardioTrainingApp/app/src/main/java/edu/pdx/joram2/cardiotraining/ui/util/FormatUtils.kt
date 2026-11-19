package edu.pdx.joram2.cardiotraining.ui.util

import androidx.compose.ui.graphics.Color
import edu.pdx.joram2.cardiotraining.data.HiiType
import edu.pdx.joram2.cardiotraining.data.LissType
import edu.pdx.joram2.cardiotraining.data.SessionUiState
import edu.pdx.joram2.cardiotraining.data.TrainingType
import edu.pdx.joram2.cardiotraining.data.UnitSystem
import edu.pdx.joram2.cardiotraining.data.domain.PaceStatus
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

fun formatElapsed(ms: Long): String {
    val h = ms / 3_600_000
    val m = (ms % 3_600_000) / 60_000
    val s = (ms % 60_000) / 1_000
    return "%02d:%02d:%02d".format(h, m, s)
}

fun formatElapsedMinutes(ms: Long): String = "${ms / 60_000} min"

fun formatSpeed(mph: Double, unitSystem: UnitSystem): String =
    if (unitSystem == UnitSystem.IMPERIAL)
        "%.1f mph".format(mph)
    else
        "%.2f m/s".format(mph * 0.44704)

fun formatDistance(miles: Double, unitSystem: UnitSystem): String =
    if (unitSystem == UnitSystem.IMPERIAL)
        "%.3f mi".format(miles)
    else
        "%.2f km".format(miles * 1.60934)

fun formatPaceInput(mph: Double, unitSystem: UnitSystem): String =
    if (unitSystem == UnitSystem.IMPERIAL)
        "%.1f".format(mph)
    else
        "%.2f".format(mph * 0.44704)

fun parsePaceInput(input: String, unitSystem: UnitSystem): Double {
    val raw = input.toDoubleOrNull() ?: return 0.0
    return if (unitSystem == UnitSystem.IMPERIAL) raw else raw / 0.44704
}

fun formatPaceStatus(status: PaceStatus): String = when (status) {
    PaceStatus.ON_PACE  -> "On Pace"
    PaceStatus.TOO_FAST -> "Too Fast"
    PaceStatus.TOO_SLOW -> "Too Slow"
}

fun paceStatusColor(status: PaceStatus): Color = when (status) {
    PaceStatus.ON_PACE  -> Color(0xFF2E7D32)
    PaceStatus.TOO_FAST -> Color(0xFFB71C1C)
    PaceStatus.TOO_SLOW -> Color(0xFFE65100)
}

fun formatTimestamp(epochMs: Long): String =
    SimpleDateFormat("MMM d, yyyy  HH:mm", Locale.getDefault()).format(Date(epochMs))

fun buildSessionTitle(trainingType: TrainingType): String =
    if (trainingType == TrainingType.LISS) "LISS Training" else "HII Training"

fun buildSessionSubtitle(trainingType: TrainingType, lissType: LissType, hiiType: HiiType): String =
    if (trainingType == TrainingType.LISS)
        lissType.name.lowercase().replaceFirstChar { it.uppercase() }
    else
        hiiType.name.replace("_", " ").lowercase().replaceFirstChar { it.uppercase() }

fun buildSessionTitleFromState(state: SessionUiState) = buildSessionTitle(state.trainingType)

fun buildSessionSubtitleFromState(state: SessionUiState) =
    buildSessionSubtitle(state.trainingType, state.lissType, state.hiiType)
