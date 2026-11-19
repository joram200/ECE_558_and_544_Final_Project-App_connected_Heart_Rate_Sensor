package edu.pdx.joram2.cardiotraining.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import android.media.AudioManager
import android.media.ToneGenerator
import android.os.Handler
import android.os.Looper
import android.os.VibrationEffect
import android.os.Vibrator
import androidx.core.app.NotificationCompat
import androidx.core.content.ContextCompat
import edu.pdx.joram2.cardiotraining.R
import edu.pdx.joram2.cardiotraining.data.AlertEvent

object NotificationHelper {

    private const val CHANNEL_SESSION       = "channel_session"
    private const val CHANNEL_TOO_SLOW      = "channel_too_slow"
    private const val CHANNEL_TOO_FAST      = "channel_too_fast"
    private const val CHANNEL_OVER_DUR      = "channel_over_dur"
    private const val CHANNEL_INTERVAL_DONE = "channel_interval_done"
    private const val CHANNEL_REST_DONE     = "channel_rest_done"

    fun createChannels(context: Context) {
        val nm = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager

        // Session channel — persistent, no sound
        nm.createNotificationChannel(
            NotificationChannel(CHANNEL_SESSION, "Session Active", NotificationManager.IMPORTANCE_LOW)
        )

        // Alert channels — IMPORTANCE_HIGH for heads-up display; sounds are played via
        // ToneGenerator in fireAlert() so each event gets a genuinely distinct tone.
        // Channels are set silent here to avoid the system sound doubling up with ToneGenerator.
        listOf(
            CHANNEL_TOO_SLOW      to "Pace Too Slow",
            CHANNEL_TOO_FAST      to "Pace Too Fast",
            CHANNEL_OVER_DUR      to "Duration Exceeded",
            CHANNEL_INTERVAL_DONE to "Interval Complete",
            CHANNEL_REST_DONE     to "Rest Complete"
        ).forEach { (id, name) ->
            nm.createNotificationChannel(
                NotificationChannel(id, name, NotificationManager.IMPORTANCE_HIGH).also {
                    it.setSound(null, null)
                }
            )
        }
    }

    fun buildForegroundNotification(context: Context): Notification =
        NotificationCompat.Builder(context, CHANNEL_SESSION)
            .setContentTitle("Cardio Session Active")
            .setContentText("Tracking your session…")
            .setSmallIcon(R.drawable.ic_launcher_foreground)
            .setOngoing(true)
            .build()

    fun fireAlert(context: Context, event: AlertEvent) {
        val config = when (event) {
            is AlertEvent.TooSlow     -> AlertConfig(
                channel     = CHANNEL_TOO_SLOW,
                title       = "Pace Too Slow",
                text        = "You are below your target pace.",
                pattern     = longArrayOf(0, 300, 100, 300),
                toneType    = ToneGenerator.TONE_CDMA_LOW_L,
                toneDurMs   = 500,
                stream      = AudioManager.STREAM_NOTIFICATION
            )
            is AlertEvent.TooFast     -> AlertConfig(
                channel     = CHANNEL_TOO_FAST,
                title       = "Pace Too Fast",
                text        = "You are above your target pace.",
                pattern     = longArrayOf(0, 100, 50, 100, 50, 100),
                toneType    = ToneGenerator.TONE_CDMA_HIGH_L,
                toneDurMs   = 500,
                stream      = AudioManager.STREAM_NOTIFICATION
            )
            is AlertEvent.OverDuration -> AlertConfig(
                channel     = CHANNEL_OVER_DUR,
                title       = "Duration Reached",
                text        = "You have met your session goal.",
                pattern     = longArrayOf(0, 500, 200, 500),
                toneType    = ToneGenerator.TONE_PROP_BEEP2,
                toneDurMs   = 800,
                stream      = AudioManager.STREAM_ALARM
            )
            is AlertEvent.IntervalComplete -> AlertConfig(
                channel     = CHANNEL_INTERVAL_DONE,
                title       = "Interval Complete",
                text        = "Great work! Now rest.",
                pattern     = longArrayOf(0, 200, 100, 200, 100, 200),
                toneType    = ToneGenerator.TONE_PROP_ACK,
                toneDurMs   = 600,
                stream      = AudioManager.STREAM_NOTIFICATION
            )
            is AlertEvent.RestComplete -> AlertConfig(
                channel     = CHANNEL_REST_DONE,
                title       = "Rest Complete",
                text        = "Next interval starting — go!",
                pattern     = longArrayOf(0, 500, 100, 500),
                toneType    = ToneGenerator.TONE_CDMA_MED_L,
                toneDurMs   = 500,
                stream      = AudioManager.STREAM_NOTIFICATION
            )
        }

        // Post heads-up notification (silent — tone handled below)
        val nm = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        nm.notify(
            event::class.simpleName.hashCode(),
            NotificationCompat.Builder(context, config.channel)
                .setContentTitle(config.title)
                .setContentText(config.text)
                .setSmallIcon(R.drawable.ic_launcher_foreground)
                .setAutoCancel(true)
                .build()
        )

        // Vibrate
        ContextCompat.getSystemService(context, Vibrator::class.java)
            ?.vibrate(VibrationEffect.createWaveform(config.pattern, -1))

        // Play distinct tone via ToneGenerator
        try {
            val tg = ToneGenerator(config.stream, ToneGenerator.MAX_VOLUME)
            tg.startTone(config.toneType, config.toneDurMs)
            Handler(Looper.getMainLooper()).postDelayed({ tg.release() }, (config.toneDurMs + 200).toLong())
        } catch (_: RuntimeException) {
            // ToneGenerator can throw if audio focus is unavailable; alert still fires via vibration
        }
    }

    private data class AlertConfig(
        val channel   : String,
        val title     : String,
        val text      : String,
        val pattern   : LongArray,
        val toneType  : Int,
        val toneDurMs : Int,
        val stream    : Int
    )
}
