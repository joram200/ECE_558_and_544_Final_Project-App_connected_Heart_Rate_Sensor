package edu.pdx.joram2.cardiotraining.ui.screen

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.FilterChip
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.dp
import edu.pdx.joram2.cardiotraining.data.HiiType
import edu.pdx.joram2.cardiotraining.data.LissType
import edu.pdx.joram2.cardiotraining.data.SetupUiState
import edu.pdx.joram2.cardiotraining.data.TrainingType
import edu.pdx.joram2.cardiotraining.data.UnitSystem
import edu.pdx.joram2.cardiotraining.ui.util.formatPaceInput
import edu.pdx.joram2.cardiotraining.ui.util.parsePaceInput

@Composable
fun SetupScreen(
    state               : SetupUiState,
    onTrainingTypeChange: (TrainingType) -> Unit,
    onLissTypeChange    : (LissType)     -> Unit,
    onHiiTypeChange     : (HiiType)      -> Unit,
    onDurationChange    : (Int)          -> Unit,
    onPaceMinChange     : (Double)       -> Unit,
    onPaceMaxChange     : (Double)       -> Unit,
    onUnitSystemChange  : (UnitSystem)   -> Unit,
    onStart             : ()             -> Unit
) {
    // Local string state for duration — allows the user to clear the field entirely
    // before typing a new value. Keyed on nothing: the ViewModel only gets notified
    // when a valid positive integer is confirmed.
    var durationText by remember { mutableStateOf(state.durationMinutes.toString()) }

    // Pace text fields — keyed on (lissType, unitSystem) so they reset to the new
    // defaults automatically when the user changes type or unit system.
    var paceMinText by remember(state.lissType, state.unitSystem) {
        mutableStateOf(formatPaceInput(state.paceMinMph, state.unitSystem))
    }
    var paceMaxText by remember(state.lissType, state.unitSystem) {
        mutableStateOf(formatPaceInput(state.paceMaxMph, state.unitSystem))
    }

    // Per-type default pace ranges in mph (for focus-loss fallback)
    val defaultPaceMin = if (state.lissType == LissType.RACKING) 3.5 else 5.0
    val defaultPaceMax = if (state.lissType == LissType.RACKING) 4.5 else 6.0

    Column(
        modifier            = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        // ── Training type ─────────────────────────────────────
        Text("Training", style = MaterialTheme.typography.labelLarge)
        LabeledDropdown(
            options  = TrainingType.entries,
            selected = state.trainingType,
            onSelect = onTrainingTypeChange,
            label    = { it.name }
        )

        // ── Duration ──────────────────────────────────────────
        Text(
            text  = if (state.trainingType == TrainingType.HII) "Interval Duration" else "Duration",
            style = MaterialTheme.typography.labelLarge
        )
        OutlinedTextField(
            value         = durationText,
            onValueChange = { input ->
                durationText = input
                val parsed = input.toIntOrNull() ?: 0
                if (parsed > 0) onDurationChange(parsed)
            },
            suffix          = { Text(if (state.trainingType == TrainingType.HII) "min / interval" else "minutes") },
            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
            singleLine      = true,
            modifier        = Modifier
                .fillMaxWidth()
                .onFocusChanged { focusState ->
                    if (!focusState.isFocused) {
                        val parsed = durationText.toIntOrNull() ?: 0
                        if (parsed <= 0) {
                            durationText = "1"
                            onDurationChange(1)
                        }
                    }
                }
        )

        // ── LISS-specific ─────────────────────────────────────
        if (state.trainingType == TrainingType.LISS) {
            Text("Type", style = MaterialTheme.typography.labelLarge)
            LabeledDropdown(
                options  = LissType.entries,
                selected = state.lissType,
                onSelect = onLissTypeChange,
                label    = { it.name.lowercase().replaceFirstChar { c -> c.uppercase() } }
            )

            Text("Pace Range", style = MaterialTheme.typography.labelLarge)
            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment     = Alignment.CenterVertically
            ) {
                OutlinedTextField(
                    value         = paceMinText,
                    onValueChange = { input ->
                        paceMinText = input
                        val parsed = parsePaceInput(input, state.unitSystem)
                        if (parsed > 0.0 && parsed < state.paceMaxMph) onPaceMinChange(parsed)
                    },
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Decimal),
                    singleLine      = true,
                    modifier        = Modifier
                        .weight(1f)
                        .onFocusChanged { focusState ->
                            if (!focusState.isFocused) {
                                var parsedMph = parsePaceInput(paceMinText, state.unitSystem)
                                if (parsedMph <= 0.0) parsedMph = defaultPaceMin
                                if (parsedMph >= state.paceMaxMph)
                                    parsedMph = (state.paceMaxMph - 0.1).coerceAtLeast(0.1)
                                paceMinText = formatPaceInput(parsedMph, state.unitSystem)
                                onPaceMinChange(parsedMph)
                            }
                        }
                )
                Text("—")
                OutlinedTextField(
                    value         = paceMaxText,
                    onValueChange = { input ->
                        paceMaxText = input
                        val parsed = parsePaceInput(input, state.unitSystem)
                        if (parsed > 0.0 && parsed > state.paceMinMph) onPaceMaxChange(parsed)
                    },
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Decimal),
                    singleLine      = true,
                    modifier        = Modifier
                        .weight(1f)
                        .onFocusChanged { focusState ->
                            if (!focusState.isFocused) {
                                var parsedMph = parsePaceInput(paceMaxText, state.unitSystem)
                                if (parsedMph <= 0.0) parsedMph = defaultPaceMax
                                if (parsedMph <= state.paceMinMph)
                                    parsedMph = state.paceMinMph + 0.1
                                paceMaxText = formatPaceInput(parsedMph, state.unitSystem)
                                onPaceMaxChange(parsedMph)
                            }
                        }
                )
                Text(if (state.unitSystem == UnitSystem.IMPERIAL) "mph" else "m/s")
            }
        }

        // ── HII-specific ──────────────────────────────────────
        if (state.trainingType == TrainingType.HII) {
            Text("Type", style = MaterialTheme.typography.labelLarge)
            LabeledDropdown(
                options  = HiiType.entries,
                selected = state.hiiType,
                onSelect = onHiiTypeChange,
                label    = { it.name.replace("_", " ").lowercase().replaceFirstChar { c -> c.uppercase() } }
            )
        }

        // ── Unit system ───────────────────────────────────────
        Text("Units", style = MaterialTheme.typography.labelLarge)
        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            FilterChip(
                selected = state.unitSystem == UnitSystem.IMPERIAL,
                onClick  = { onUnitSystemChange(UnitSystem.IMPERIAL) },
                label    = { Text("Imperial") }
            )
            FilterChip(
                selected = state.unitSystem == UnitSystem.METRIC,
                onClick  = { onUnitSystemChange(UnitSystem.METRIC) },
                label    = { Text("Metric") }
            )
        }

        Spacer(Modifier.weight(1f))

        // ── Start button ──────────────────────────────────────
        Button(
            onClick  = onStart,
            modifier = Modifier.fillMaxWidth()
        ) { Text("Start") }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun <T> LabeledDropdown(
    options  : List<T>,
    selected : T,
    onSelect : (T) -> Unit,
    label    : (T) -> String,
    modifier : Modifier = Modifier
) {
    var expanded by remember { mutableStateOf(false) }
    ExposedDropdownMenuBox(
        expanded         = expanded,
        onExpandedChange = { expanded = it },
        modifier         = modifier.fillMaxWidth()
    ) {
        OutlinedTextField(
            value         = label(selected),
            onValueChange = {},
            readOnly      = true,
            trailingIcon  = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
            modifier      = Modifier
                .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable)
                .fillMaxWidth()
        )
        ExposedDropdownMenu(
            expanded         = expanded,
            onDismissRequest = { expanded = false }
        ) {
            options.forEach { option ->
                DropdownMenuItem(
                    text    = { Text(label(option)) },
                    onClick = { onSelect(option); expanded = false }
                )
            }
        }
    }
}
