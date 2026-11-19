package edu.pdx.joram2.cardiotraining.ui.screen

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.ui.graphics.Color
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import edu.pdx.joram2.cardiotraining.data.SessionUiState
import edu.pdx.joram2.cardiotraining.data.TrainingType
import edu.pdx.joram2.cardiotraining.ui.util.buildSessionSubtitleFromState
import edu.pdx.joram2.cardiotraining.ui.util.buildSessionTitleFromState
import edu.pdx.joram2.cardiotraining.ui.util.formatDistance
import edu.pdx.joram2.cardiotraining.ui.util.formatElapsed
import edu.pdx.joram2.cardiotraining.ui.util.formatPaceStatus
import edu.pdx.joram2.cardiotraining.ui.util.formatSpeed
import edu.pdx.joram2.cardiotraining.ui.util.paceStatusColor

@Composable
fun ActiveScreen(
    state  : SessionUiState,
    onStop : () -> Unit
) {
    Column(
        modifier            = Modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        // ── Session header ────────────────────────────────────
        Text(
            text  = buildSessionTitleFromState(state),
            style = MaterialTheme.typography.titleLarge
        )
        Text(
            text  = buildSessionSubtitleFromState(state),
            style = MaterialTheme.typography.titleMedium
        )

        HorizontalDivider()

        // ── Large elapsed clock ───────────────────────────────
        Text(
            text  = formatElapsed(state.elapsedTimeMs),
            style = MaterialTheme.typography.displayMedium
        )
        Text("Set — ${formatElapsed(state.durationSetMs)}")

        HorizontalDivider()

        // ── LISS live metrics ─────────────────────────────────
        if (state.trainingType == TrainingType.LISS) {
            Text("Pace — ${formatSpeed(state.currentSpeedMph, state.unitSystem)}")
            Text(
                text  = formatPaceStatus(state.paceStatus),
                color = paceStatusColor(state.paceStatus),
                style = MaterialTheme.typography.bodyLarge
            )
            Text("Distance ${formatDistance(state.distanceMiles, state.unitSystem)}")
        }

        // ── HII live metrics ──────────────────────────────────
        if (state.trainingType == TrainingType.HII) {
            val phaseColor = if (state.isResting) Color(0xFF1565C0) else Color(0xFF2E7D32)
            Text(
                text  = if (state.isResting) "Rest" else "Work — Interval ${state.currentInterval} / ${state.totalIntervals}",
                color = phaseColor,
                style = MaterialTheme.typography.titleLarge
            )
            if (state.totalIntervals > 0 && state.durationSetMs > 0L) {
                val phaseDurationMs  = state.durationSetMs / (state.totalIntervals * 2)
                val phaseRemainingMs = phaseDurationMs - (state.elapsedTimeMs % phaseDurationMs)
                val nextLabel = if (state.isResting) "Next interval" else "Rest"
                Text("$nextLabel in ${formatElapsed(phaseRemainingMs)}")
            }
        }

        Spacer(Modifier.weight(1f))

        // ── Stop button ───────────────────────────────────────
        Button(
            onClick  = onStop,
            modifier = Modifier.fillMaxWidth(),
            colors   = ButtonDefaults.buttonColors(
                containerColor = MaterialTheme.colorScheme.error
            )
        ) { Text("Stop") }
    }
}
