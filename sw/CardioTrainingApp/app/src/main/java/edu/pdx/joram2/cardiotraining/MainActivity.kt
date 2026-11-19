package edu.pdx.joram2.cardiotraining

import android.Manifest
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.activity.result.contract.ActivityResultContracts.RequestMultiplePermissions
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.lifecycle.viewmodel.compose.viewModel
import edu.pdx.joram2.cardiotraining.ui.AppContent
import edu.pdx.joram2.cardiotraining.ui.theme.CardioTrainingAppTheme
import edu.pdx.joram2.cardiotraining.ui.viewmodel.SessionViewModel

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        val app = application as CardioTrainingApp

        setContent {
            CardioTrainingAppTheme {
                val viewModel: SessionViewModel = viewModel(
                    factory = SessionViewModel.factory(app)
                )

                val permissionsToRequest = buildList {
                    add(Manifest.permission.ACCESS_FINE_LOCATION)
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                        add(Manifest.permission.POST_NOTIFICATIONS)
                    }
                }.toTypedArray()

                val permissionLauncher = rememberLauncherForActivityResult(
                    RequestMultiplePermissions()
                ) { /* results handled by OS dialogs; ViewModel proceeds regardless */ }

                LaunchedEffect(Unit) {
                    permissionLauncher.launch(permissionsToRequest)
                }

                Scaffold(modifier = Modifier.fillMaxSize()) { innerPadding ->
                    AppContent(
                        viewModel = viewModel,
                        modifier  = Modifier.padding(innerPadding)
                    )
                }
            }
        }
    }
}
