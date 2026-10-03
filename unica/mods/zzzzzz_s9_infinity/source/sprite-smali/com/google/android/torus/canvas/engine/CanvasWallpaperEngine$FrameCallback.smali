.class public final Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\t8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;",
        "Landroid/view/Choreographer$FrameCallback;",
        "<init>",
        "(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;)V",
        "",
        "frameTimeNanos",
        "Lq3/m;",
        "doFrame",
        "(J)V",
        "",
        "running",
        "Z",
        "getRunning$torus_release",
        "()Z",
        "setRunning$torus_release",
        "(Z)V",
        "anyFrameDrawn",
        "getAnyFrameDrawn$torus_release",
        "setAnyFrameDrawn$torus_release",
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
.field private anyFrameDrawn:Z

.field private running:Z

.field final synthetic this$0:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->this$0:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->this$0:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;

    invoke-static {v0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->access$getChoreographer$p(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    const v0, 0xf4240

    int-to-long v0, v0

    div-long v0, p1, v0

    iget-boolean v2, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->anyFrameDrawn:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->anyFrameDrawn:Z

    iget-object v2, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->this$0:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;

    invoke-static {v2}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->access$getTimeController$p(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;)Lcom/google/android/torus/core/time/TimeController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/torus/core/time/TimeController;->resetDeltaTime(J)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->this$0:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;

    invoke-static {v2}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->access$getTimeController$p(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;)Lcom/google/android/torus/core/time/TimeController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/torus/core/time/TimeController;->updateDeltaTime(J)V

    iget-object v2, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->this$0:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;

    invoke-static {v2}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->access$getTimeController$p(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;)Lcom/google/android/torus/core/time/TimeController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/torus/core/time/TimeController;->getDeltaTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onUpdate(JJ)V

    iget-object p0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->this$0:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;

    invoke-static {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->access$getTimeController$p(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;)Lcom/google/android/torus/core/time/TimeController;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/torus/core/time/TimeController;->resetDeltaTime(J)V

    return-void
.end method

.method public final getAnyFrameDrawn$torus_release()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->anyFrameDrawn:Z

    return p0
.end method

.method public final getRunning$torus_release()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->running:Z

    return p0
.end method

.method public final setAnyFrameDrawn$torus_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->anyFrameDrawn:Z

    return-void
.end method

.method public final setRunning$torus_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->running:Z

    return-void
.end method
