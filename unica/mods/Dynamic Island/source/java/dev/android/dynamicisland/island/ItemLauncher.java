package dev.android.dynamicisland.island;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.View;
import dev.android.dynamicisland.island.feedback.Haptics;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.XLog;
import java.util.function.Supplier;

/** Opens the app behind an item and runs its action buttons, with the activity-start permission System UI needs. */
final class ItemLauncher {
    private final Context ctx;
    private final Haptics haptics;
    /** The island view to grow the launch animation from; may yield null. */
    private final Supplier<View> anchor;

    ItemLauncher(Context ctx, Haptics haptics, Supplier<View> anchor) {
        this.ctx = ctx;
        this.haptics = haptics;
        this.anchor = anchor;
    }

    void open(IslandItem item, RectF from) {
        try {
            Bundle options = launchOptions(from);
            if (item.contentIntent != null) {
                PendingIntent pi = item.contentIntent;
                pi.send(ctx, 0, null, null, null, null, options);
            } else if (item.packageName != null) {
                Intent launch = ctx.getPackageManager().getLaunchIntentForPackage(item.packageName);
                if (launch != null) {
                    launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    ctx.startActivity(launch, options);
                }
            }
        } catch (Throwable t) {
            XLog.e("open item failed", t);
        }
    }

    void runAction(IslandItem.Action action) {
        haptics.click();
        try {
            if (action.runnable != null) {
                action.runnable.run();
            } else if (action.intent != null) {
                action.intent.send(ctx, 0, null, null, null, null, backgroundStartOptions().toBundle());
            }
        } catch (Throwable t) {
            XLog.e("action failed", t);
        }
    }

    /** Sends {@code text} through the reply action of a notification. */
    boolean sendReply(IslandItem.Action action, CharSequence text) {
        try {
            Intent fill = new Intent();
            Bundle results = new Bundle();
            for (android.app.RemoteInput input : action.remoteInputs) {
                results.putCharSequence(input.getResultKey(), text);
            }
            android.app.RemoteInput.addResultsToIntent(action.remoteInputs, fill, results);
            action.intent.send(ctx, 0, fill, null, null, null, backgroundStartOptions().toBundle());
            haptics.click();
            return true;
        } catch (Throwable t) {
            XLog.e("reply failed", t);
            return false;
        }
    }

    /** Grows from the island when its bounds are known. */
    private Bundle launchOptions(RectF from) {
        View view = anchor.get();
        ActivityOptions options;
        if (view != null && from != null && from.width() > 0.0f) {
            options = ActivityOptions.makeScaleUpAnimation(view, Math.round(from.left), Math.round(from.top),
                    Math.round(from.width()), Math.round(from.height()));
        } else {
            options = ActivityOptions.makeBasic();
        }
        allowBackgroundStart(options);
        return options.toBundle();
    }

    private static ActivityOptions backgroundStartOptions() {
        ActivityOptions options = ActivityOptions.makeBasic();
        allowBackgroundStart(options);
        return options;
    }

    /** SystemUI is not in the foreground, so its pending intents need explicit permission to start activities. */
    private static void allowBackgroundStart(ActivityOptions options) {
        try {
            options.setPendingIntentBackgroundActivityStartMode(ActivityOptions.MODE_BACKGROUND_ACTIVITY_START_ALLOWED);
        } catch (Throwable ignored) {
            // older Android versions do not have the mode
        }
    }
}
