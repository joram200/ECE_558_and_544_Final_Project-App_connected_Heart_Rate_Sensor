package edu.pdx.joram2.cardiotraining

import android.app.Application
import edu.pdx.joram2.cardiotraining.data.SessionRepository
import edu.pdx.joram2.cardiotraining.data.db.AppDatabase

class CardioTrainingApp : Application() {
    val database by lazy { AppDatabase.getDatabase(this) }
    val repository by lazy { SessionRepository(database.sessionDao()) }
}
