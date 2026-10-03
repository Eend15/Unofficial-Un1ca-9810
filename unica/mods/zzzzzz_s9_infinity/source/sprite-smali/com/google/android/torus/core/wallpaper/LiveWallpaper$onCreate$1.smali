.class public final Lcom/google/android/torus/core/wallpaper/LiveWallpaper$onCreate$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/google/android/torus/core/wallpaper/LiveWallpaper$onCreate$1",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Lq3/m;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
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


# direct methods
.method public constructor <init>(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$onCreate$1;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7ed8ea7f

    const/4 v2, -0x1

    if-eq v0, v1, :cond_2

    const v1, -0x56ac2893

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "WAKE_ACTION_LOCATION_X"

    invoke-virtual {p1, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "WAKE_ACTION_LOCATION_Y"

    invoke-virtual {p1, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$onCreate$1;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    invoke-static {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$getWakeStateChangeListeners$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->onWake(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "SLEEP_ACTION_LOCATION_X"

    invoke-virtual {p1, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "SLEEP_ACTION_LOCATION_Y"

    invoke-virtual {p1, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$onCreate$1;->this$0:Lcom/google/android/torus/core/wallpaper/LiveWallpaper;

    invoke-static {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->access$getWakeStateChangeListeners$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;->onSleep(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
