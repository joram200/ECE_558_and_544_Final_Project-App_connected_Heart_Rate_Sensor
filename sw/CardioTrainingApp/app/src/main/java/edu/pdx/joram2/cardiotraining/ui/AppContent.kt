package edu.pdx.joram2.cardiotraining.ui

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material3.PrimaryTabRow
import androidx.compose.material3.Tab
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import edu.pdx.joram2.cardiotraining.data.AppScreen
import edu.pdx.joram2.cardiotraining.ui.screen.ActiveScreen
import edu.pdx.joram2.cardiotraining.ui.screen.ArchiveScreen
import edu.pdx.joram2.cardiotraining.ui.screen.SetupScreen
import edu.pdx.joram2.cardiotraining.ui.screen.SummaryScreen
import edu.pdx.joram2.cardiotraining.ui.viewmodel.SessionViewModel
import kotlinx.coroutines.launch

@Composable
fun AppContent(viewModel: SessionViewModel, modifier: Modifier = Modifier) {
    val uiState    by viewModel.uiState.collectAsStateWithLifecycle()
    val setupState by viewModel.setupState.collectAsStateWithLifecycle()
    val sessions   by viewModel.filteredSessions.collectAsStateWithLifecycle()
    val filter     by viewModel.archiveFilter.collectAsStateWithLifecycle()

    val pagerState = rememberPagerState(pageCount = { 2 })
    val scope      = rememberCoroutineScope()

    Column(modifier = modifier.fillMaxSize()) {

        // ── Tab Row ───────────────────────────────────────────
        PrimaryTabRow(selectedTabIndex = pagerState.currentPage) {
            Tab(
                selected = pagerState.currentPage == 0,
                text     = { Text("Session") },
                onClick  = { scope.launch { pagerState.animateScrollToPage(0) } }
            )
            Tab(
                selected = pagerState.currentPage == 1,
                text     = { Text("Archive") },
                onClick  = { scope.launch { pagerState.animateScrollToPage(1) } }
            )
        }

        // ── Pager body ────────────────────────────────────────
        HorizontalPager(
            state    = pagerState,
            modifier = Modifier.fillMaxSize()
        ) { page ->
            when (page) {
                0 -> when (uiState.screen) {
                    AppScreen.SETUP   -> SetupScreen(
                        state                = setupState,
                        onTrainingTypeChange = viewModel::onTrainingTypeChanged,
                        onLissTypeChange     = viewModel::onLissTypeChanged,
                        onHiiTypeChange      = viewModel::onHiiTypeChanged,
                        onDurationChange     = viewModel::onDurationChanged,
                        onPaceMinChange      = viewModel::onPaceMinChanged,
                        onPaceMaxChange      = viewModel::onPaceMaxChanged,
                        onUnitSystemChange   = viewModel::onUnitSystemChanged,
                        onStart              = viewModel::onStartSession
                    )
                    AppScreen.ACTIVE  -> ActiveScreen(
                        state  = uiState,
                        onStop = viewModel::onStopSession
                    )
                    AppScreen.SUMMARY -> SummaryScreen(
                        state        = uiState,
                        onNewSession = viewModel::onNewSession
                    )
                }
                1 -> ArchiveScreen(
                    sessions       = sessions,
                    activeFilter   = filter,
                    onFilterChange = viewModel::onArchiveFilterChanged
                )
            }
        }
    }
}
