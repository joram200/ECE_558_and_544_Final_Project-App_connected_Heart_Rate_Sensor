package edu.pdx.joram2.cardiotraining.ui.screen

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import edu.pdx.joram2.cardiotraining.data.SessionUiState
import edu.pdx.joram2.cardiotraining.data.TrainingType
import edu.pdx.joram2.cardiotraining.ui.util.buildSessionSubtitleFromState
import edu.pdx.joram2.cardiotraining.ui.util.buildSessionTitleFromState
import edu.pdx.joram2.cardiotraining.ui.util.formatDistance
import edu.pdx.joram2.cardiotraining.ui.util.formatElapsed
import edu.pdx.joram2.cardiotraining.ui.util.formatSpeed

@Composable
fun SummaryScreen(
    state        : SessionUiState,
    onNewSession : () -> Unit
) {
    Column(
        modifier            = Modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        // ── Completion header ─────────────────────────────────
        Text(
            text  = "${buildSessionTitleFromState(state)} Completed!",
            style = MaterialTheme.typography.titleLarge
        )
        Text(
            text  = buildSessionSubtitleFromState(state),
            style = MaterialTheme.typography.titleMedium
        )

        HorizontalDivider()

        // ── Duration stats ────────────────────────────────────
        Text(
            text  = formatElapsed(state.elapsedTimeMs),
            style = MaterialTheme.typography.displaySmall
        )
        Text("Set — ${formatElapsed(state.durationSetMs)}")

        // ── LISS summary ──────────────────────────────────────
        if (state.trainingType == TrainingType.LISS) {
            HorizontalDivider()
            Text("On Pace   — ${formatElapsed(state.timeOnPaceMs)}")
            Text("Too Fast  — ${formatElapsed(state.timeTooFastMs)}")
            Text("Too Slow  — ${formatElapsed(state.timeTooSlowMs)}")
            HorizontalDivider()
            Text("Distance: ${formatDistance(state.distanceMiles, state.unitSystem)}")
            if (state.distanceMiles > 0.0 && state.elapsedTimeMs > 0L) {
                val avgMph = state.distanceMiles / (state.elapsedTimeMs / 3_600_000.0)
                val midMph = (state.paceMinMph + state.paceMaxMph) / 2.0
                val diffMph = avgMph - midMph
                Text("Avg Pace  — ${formatSpeed(avgMph, state.unitSystem)}")
                val diffDisplay = if (state.unitSystem == edu.pdx.joram2.cardiotraining.data.UnitSystem.IMPERIAL)
                    diffMph else diffMph * 0.44704
                val diffUnit = if (state.unitSystem == edu.pdx.joram2.cardiotraining.data.UnitSystem.IMPERIAL) "mph" else "m/s"
                Text("vs Target — ${if (diffDisplay >= 0) "+" else ""}${"%.2f".format(diffDisplay)} $diffUnit")
            }
        }

        // ── HII summary ───────────────────────────────────────
        if (state.trainingType == TrainingType.HII) {
            HorizontalDivider()
            Text("Intervals completed: ${state.currentInterval} / ${state.totalIntervals}")
            if (state.totalIntervals > 0 && state.durationSetMs > 0L) {
                val perIntervalMs = state.durationSetMs / (state.totalIntervals * 2)
                Text("Per interval — ${formatElapsed(perIntervalMs)}")
            }
            Text("Active time — ${formatElapsed(state.timeOnPaceMs)}")
        }

        Spacer(Modifier.weight(1f))

        // ── New Session button ────────────────────────────────
        Button(
            onClick  = onNewSession,
            modifier = Modifier.fillMaxWidth()
        ) { Text("New Session") }
    }
}
