.class final Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;
.super Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/torus/core/wallpaper/LiveWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LiveWallpaperEngineWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\tJ\u0019\u0010\u000f\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\tJ\u0019\u0010\u0010\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\tJ1\u0010\u0015\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J?\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0011\u0010\'\u001a\u0004\u0018\u00010&H\u0016\u00a2\u0006\u0004\u0008\'\u0010(JE\u00101\u001a\u0004\u0018\u00010.2\u0008\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00112\u0006\u0010-\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u00010.2\u0006\u00100\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00081\u00102J\u0017\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u000203H\u0016\u00a2\u0006\u0004\u00085\u00106J\r\u00107\u001a\u00020\n\u00a2\u0006\u0004\u00087\u0010\u000cJ\u0015\u00108\u001a\u00020\u00072\u0006\u0010/\u001a\u00020.\u00a2\u0006\u0004\u00088\u00109J\u0015\u0010:\u001a\u00020\u00072\u0006\u0010/\u001a\u00020.\u00a2\u0006\u0004\u0008:\u00109J\u0015\u0010;\u001a\u00020\u00072\u0006\u0010/\u001a\u00020.\u00a2\u0006\u0004\u0008;\u00109J\r\u0010<\u001a\u00020\u0007\u00a2\u0006\u0004\u0008<\u0010=J\u000f\u0010>\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008>\u0010=J\u0017\u0010?\u001a\u00020\u00072\u0008\u0010/\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u0008?\u00109J\u0017\u0010A\u001a\u00020\n2\u0006\u0010@\u001a\u00020\u0011H\u0007\u00a2\u0006\u0004\u0008A\u0010BR\u0016\u0010D\u001a\u00020C8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008D\u0010E\u00a8\u0006F"
    }
    d2 = {
        "Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;",
        "Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;",
        "Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;",
        "<init>",
        "(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)V",
        "Landroid/view/SurfaceHolder;",
        "surfaceHolder",
        "Lq3/m;",
        "onCreate",
        "(Landroid/view/SurfaceHolder;)V",
        "",
        "isKeyguardTouchEventRequired",
        "()Z",
        "holder",
        "onSurfaceCreated",
        "onSurfaceDestroyed",
        "onSurfaceRedrawNeeded",
        "",
        "format",
        "width",
        "height",
        "onSurfaceChanged",
        "(Landroid/view/SurfaceHolder;III)V",
        "",
        "xOffset",
        "yOffset",
        "xOffsetStep",
        "yOffsetStep",
        "xPixelOffset",
        "yPixelOffset",
        "onOffsetsChanged",
        "(FFFFII)V",
        "zoom",
        "onZoomChanged",
        "(F)V",
        "visible",
        "onVisibilityChanged",
        "(Z)V",
        "Landroid/app/WallpaperColors;",
        "onComputeColors",
        "()Landroid/app/WallpaperColors;",
        "",
        "action",
        "x",
        "y",
        "z",
        "Landroid/os/Bundle;",
        "extras",
        "resultRequested",
        "onCommand",
        "(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)V",
        "shouldZoomOutWallpaper",
        "onWake",
        "(Landroid/os/Bundle;)V",
        "onSleep",
        "shortcutIconAndNowBarDataUpdated",
        "onWallpaperReapplied",
        "()V",
        "onKeyguardGoingAway",
        "onPreviewInfoReceived",
        "which",
        "isSupportFixedOrientation",
        "(I)Z",
        "Lcom/google/android/torus/core/engine/TorusEngine;",
        "wallpaperEngine",
        "Lcom/google/android/torus/core/engine/TorusEngine;",
        "torus_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

.field private wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)V

    return-void
.end method


# virtual methods
.method public isKeyguardTouchEventRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p0, :cond_0

    instance-of p0, p0, Lcom/google/android/torus/core/engine/listener/TorusTouchListener;

    return p0

    :cond_0
    const-string p0, "wallpaperEngine"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final isSupportFixedOrientation(I)Z
    .locals 5
    .annotation build Le/a;
    .end annotation

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-static {}, Lf2/g;->f()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isTablet() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SprWallpaper|LiveWallpaper"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lf2/g;->c()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isFold = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lf2/g;->b()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isFlip = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lf2/g;->a(Landroid/content/Context;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isCoverFolded = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lf2/g;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, LK/I;->b0(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    invoke-static {}, Lf2/g;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, LK/I;->b0(I)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    invoke-static {}, Lf2/g;->f()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "support inconsistency = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 4

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "ACTION"

    const/4 v2, 0x0

    const-string v3, "wallpaperEngine"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v0, "android.wallpaper.goingtosleep"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_3

    :sswitch_1
    const-string v0, "samsung.android.wallpaper.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/torus/core/engine/TorusEngine;->dispatchPauseCommand()V

    goto/16 :goto_3

    :cond_1
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :sswitch_2
    const-string v0, "android.wallpaper.keyguardgoingaway"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->onKeyguardGoingAway()V

    goto/16 :goto_3

    :sswitch_3
    const-string v0, "android.wallpaper.reapply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->onWallpaperReapplied()V

    goto/16 :goto_3

    :sswitch_4
    const-string v0, "samsung.android.wallpaper.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/torus/core/engine/TorusEngine;->dispatchResumeCommand()V

    goto/16 :goto_3

    :cond_5
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :sswitch_5
    const-string v0, "android.wallpaper.previewinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0, p5}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->onPreviewInfoReceived(Landroid/os/Bundle;)V

    goto :goto_3

    :sswitch_6
    const-string v0, "samsung.android.wallpaper.blocktoucharea"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    if-nez p5, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_8
    move-object v0, p5

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->shortcutIconAndNowBarDataUpdated(Landroid/os/Bundle;)V

    goto :goto_3

    :sswitch_7
    const-string v0, "samsung.android.wallpaper.goingtosleep"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    if-nez p5, :cond_a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_a
    move-object v0, p5

    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SLEEP_ACTION_LOCATION_X"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SLEEP_ACTION_LOCATION_Y"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->onSleep(Landroid/os/Bundle;)V

    goto :goto_3

    :sswitch_8
    const-string v0, "android.wallpaper.wakingup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    if-nez p5, :cond_c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_2

    :cond_c
    move-object v0, p5

    :goto_2
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "WAKE_ACTION_LOCATION_X"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "WAKE_ACTION_LOCATION_Y"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->onWake(Landroid/os/Bundle;)V

    :cond_d
    :goto_3
    if-eqz p6, :cond_e

    return-object p5

    :cond_e
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4943dbf9 -> :sswitch_8
        -0x2a4e26bf -> :sswitch_7
        -0x10281e22 -> :sswitch_6
        -0x83557b5 -> :sswitch_5
        0x3cd396ac -> :sswitch_4
        0x45c01370 -> :sswitch_3
        0x4eb77f17 -> :sswitch_2
        0x5caf0b97 -> :sswitch_1
        0x69401ccd -> :sswitch_0
    .end sparse-switch
.end method

.method public onComputeColors()Landroid/app/WallpaperColors;
    .locals 4

    iget-object v0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v1, 0x0

    const-string v2, "wallpaperEngine"

    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    invoke-interface {v0}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;->computeWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 6

    const-string v0, "surfaceHolder"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->isSupportFixedOrientation(I)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->setFixedOrientation(ZZ)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_1

    and-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    move v2, v4

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LiveWallpaperEngineWrapper.onCreate, which: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SprWallpaper|LiveWallpaper"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    invoke-virtual {v4, v1, p1, v3, v2}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->getWallpaperEngine(Landroid/content/Context;Landroid/view/SurfaceHolder;ZI)Lcom/google/android/torus/core/engine/TorusEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    iget-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    invoke-static {p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$getNumEngines$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$setNumEngines$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;I)V

    iget-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p1, :cond_4

    instance-of p1, p1, Lcom/google/android/torus/core/engine/listener/TorusTouchListener;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    const-string p0, "wallpaperEngine"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onKeyguardGoingAway()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p0, :cond_2

    instance-of v2, p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperKeyguardEventListener;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperKeyguardEventListener;

    invoke-interface {p0}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperKeyguardEventListener;->onKeyguardGoingAway()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 p2, 0x0

    const-string p4, "wallpaperEngine"

    if-eqz p0, :cond_3

    instance-of p5, p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    if-eqz p5, :cond_2

    if-eqz p0, :cond_1

    check-cast p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    const/4 p2, 0x0

    invoke-static {p3, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_0
    invoke-interface {p0, p1, p3}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;->onOffsetChanged(FF)V

    goto :goto_0

    :cond_1
    invoke-static {p4}, LF3/k;->m(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p4}, LF3/k;->m(Ljava/lang/String;)V

    throw p2
.end method

.method public final onPreviewInfoReceived(Landroid/os/Bundle;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p0, :cond_2

    instance-of v2, p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    invoke-interface {p0, p1}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;->onPreviewInfoReceived(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public final onSleep(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "extras"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p0, :cond_2

    instance-of v2, p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    invoke-interface {p0, p1}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;->onSleep(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p0, :cond_0

    invoke-interface {p0, p3, p4}, Lcom/google/android/torus/core/engine/TorusEngine;->resize(II)V

    return-void

    :cond_0
    const-string p0, "wallpaperEngine"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p1, :cond_7

    instance-of v2, p1, Lcom/google/android/torus/core/content/ConfigurationChangeListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/google/android/torus/core/content/ConfigurationChangeListener;

    invoke-static {v2, p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$addConfigChangeListener(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;Lcom/google/android/torus/core/content/ConfigurationChangeListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p1, :cond_6

    instance-of v2, p1, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    check-cast p1, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;

    invoke-virtual {p1, p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;->setServiceEngineReference$torus_release(Landroid/service/wallpaper/WallpaperService$Engine;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    invoke-static {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$getNumEngines$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1, v0}, Lcom/google/android/torus/core/engine/TorusEngine;->create(Z)V

    return-void

    :cond_5
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    invoke-static {p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$getNumEngines$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$setNumEngines$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;I)V

    iget-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p1, :cond_6

    instance-of v2, p1, Lcom/google/android/torus/core/content/ConfigurationChangeListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/google/android/torus/core/content/ConfigurationChangeListener;

    invoke-static {v2, p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$removeConfigChangeListener(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;Lcom/google/android/torus/core/content/ConfigurationChangeListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    invoke-static {p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$getNumEngines$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)I

    move-result p1

    const/4 v2, 0x0

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    invoke-static {p1, v2}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$setNumEngines$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;I)V

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/google/android/torus/core/engine/TorusEngine;->pause()V

    goto :goto_1

    :cond_3
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p0, :cond_5

    invoke-interface {p0, v2}, Lcom/google/android/torus/core/engine/TorusEngine;->destroy(Z)V

    return-void

    :cond_5
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/torus/core/engine/TorusEngine;->onSurfaceRedrawNeeded()V

    return-void

    :cond_0
    const-string p0, "wallpaperEngine"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p0, :cond_2

    instance-of v2, p0, Lcom/google/android/torus/core/engine/listener/TorusTouchListener;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/torus/core/engine/listener/TorusTouchListener;

    invoke-interface {p0, p1}, Lcom/google/android/torus/core/engine/listener/TorusTouchListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/torus/core/engine/TorusEngine;->resume()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/google/android/torus/core/engine/TorusEngine;->pause()V

    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public final onWake(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "extras"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p0, :cond_2

    instance-of v2, p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    invoke-interface {p0, p1}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;->onWake(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public final onWallpaperReapplied()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p0, :cond_2

    instance-of v2, p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    invoke-interface {p0}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;->onWallpaperReapplied()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public onZoomChanged(F)V
    .locals 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onZoomChanged(F)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p0, :cond_2

    instance-of v2, p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    invoke-interface {p0, p1}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;->onZoomChanged(F)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public final shortcutIconAndNowBarDataUpdated(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "extras"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p0, :cond_2

    instance-of v2, p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;

    invoke-interface {p0, p1}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;->shortcutIconAndNowBarDataUpdated(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public final shouldZoomOutWallpaper()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
