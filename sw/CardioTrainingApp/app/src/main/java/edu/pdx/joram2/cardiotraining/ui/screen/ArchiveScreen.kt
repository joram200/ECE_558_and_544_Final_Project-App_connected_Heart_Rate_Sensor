package edu.pdx.joram2.cardiotraining.ui.screen

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Card
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import edu.pdx.joram2.cardiotraining.data.TrainingType
import edu.pdx.joram2.cardiotraining.data.db.SessionEntity
import edu.pdx.joram2.cardiotraining.ui.util.formatElapsed
import edu.pdx.joram2.cardiotraining.ui.util.formatTimestamp

@Composable
fun ArchiveScreen(
    sessions       : List<SessionEntity>,
    activeFilter   : TrainingType?,
    onFilterChange : (TrainingType?) -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        // ── Filter dropdown ───────────────────────────────────
        Text("Training", style = MaterialTheme.typography.labelLarge)
        LabeledDropdown(
            options  = listOf(null) + TrainingType.entries,
            selected = activeFilter,
            onSelect = onFilterChange,
            label    = { it?.name ?: "All" }
        )

        Spacer(Modifier.height(8.dp))

        // ── Session cards ─────────────────────────────────────
        LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) {
            items(sessions, key = { it.id }) { session ->
                ArchiveCard(session)
            }
            if (sessions.isEmpty()) {
                item {
                    Text(
                        text  = "No sessions recorded yet.",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
        }
    }
}

@Composable
fun ArchiveCard(session: SessionEntity) {
    val isLiss = session.trainingType == TrainingType.LISS.name

    Card(modifier = Modifier.fillMaxWidth()) {
        Column(
            modifier            = Modifier.padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            // ── Header ────────────────────────────────────────
            Text(
                text       = "${session.trainingType} Training",
                style      = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold
            )
            Text(
                text  = session.subType,
                style = MaterialTheme.typography.bodyMedium
            )
            Text(
                text  = formatTimestamp(session.timestamp),
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )

            HorizontalDivider()

            // ── Duration ──────────────────────────────────────
            Text("Elapsed  — ${formatElapsed(session.durationMeasuredMs)}")
            Text("Set      — ${formatElapsed(session.durationSetMs)}")

            // ── LISS-only breakdown ───────────────────────────
            if (isLiss) {
                HorizontalDivider()
                Text("On Pace  — ${formatElapsed(session.timeOnPaceMs)}")
                Text("Too Fast — ${formatElapsed(session.timeTooFastMs)}")
                Text("Too Slow — ${formatElapsed(session.timeTooSlowMs)}")
                HorizontalDivider()
                Text("Distance: ${"%.3f mi".format(session.distanceMiles)}")
                val elapsedHours = session.durationMeasuredMs / 3_600_000.0
                if (session.distanceMiles > 0.0 && elapsedHours > 0.0) {
                    val avgMph = session.distanceMiles / elapsedHours
                    val midMph = (session.paceMinMph + session.paceMaxMph) / 2.0
                    val diffMph = avgMph - midMph
                    Text("Avg Pace: ${"%.1f mph".format(avgMph)}")
                    Text("vs Target: ${if (diffMph >= 0) "+" else ""}${"%.2f mph".format(diffMph)}")
                }
                Text("Pace range: %.1f – %.1f mph".format(session.paceMinMph, session.paceMaxMph))
            }

            // ── HII-only breakdown ────────────────────────────
            if (!isLiss) {
                HorizontalDivider()
                val intervalDurationMs =
                    if (session.numIntervals > 0) session.durationSetMs / (session.numIntervals * 2)
                    else 0L
                Text("Intervals: ${session.numIntervals}")
                Text("Per interval: ${formatElapsed(intervalDurationMs)}")
            }
        }
    }
}
