package edu.pdx.joram2.cardiotraining.data

import edu.pdx.joram2.cardiotraining.data.db.SessionDao
import edu.pdx.joram2.cardiotraining.data.db.SessionEntity
import kotlinx.coroutines.flow.Flow

class SessionRepository(private val dao: SessionDao) {

    fun getAllSessions(): Flow<List<SessionEntity>> = dao.getAllSessions()

    fun getSessionsByType(type: String): Flow<List<SessionEntity>> =
        dao.getSessionsByType(type)

    suspend fun insertSession(entity: SessionEntity) = dao.insert(entity)
}
