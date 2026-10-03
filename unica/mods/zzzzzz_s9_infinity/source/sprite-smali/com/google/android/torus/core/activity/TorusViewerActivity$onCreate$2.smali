.class public final Lcom/google/android/torus/core/activity/TorusViewerActivity$onCreate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/torus/core/activity/TorusViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J/\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "com/google/android/torus/core/activity/TorusViewerActivity$onCreate$2",
        "Landroid/view/SurfaceHolder$Callback;",
        "Landroid/view/SurfaceHolder;",
        "holder",
        "",
        "format",
        "width",
        "height",
        "Lq3/m;",
        "surfaceChanged",
        "(Landroid/view/SurfaceHolder;III)V",
        "surfaceDestroyed",
        "(Landroid/view/SurfaceHolder;)V",
        "surfaceCreated",
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
.field final synthetic this$0:Lcom/google/android/torus/core/activity/TorusViewerActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/torus/core/activity/TorusViewerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity$onCreate$2;->this$0:Lcom/google/android/torus/core/activity/TorusViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity$onCreate$2;->this$0:Lcom/google/android/torus/core/activity/TorusViewerActivity;

    invoke-static {p0}, Lcom/google/android/torus/core/activity/TorusViewerActivity;->access$getWallpaperEngine$p(Lcom/google/android/torus/core/activity/TorusViewerActivity;)Lcom/google/android/torus/core/engine/TorusEngine;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p3, p4}, Lcom/google/android/torus/core/engine/TorusEngine;->resize(II)V

    return-void

    :cond_0
    const-string p0, "wallpaperEngine"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
