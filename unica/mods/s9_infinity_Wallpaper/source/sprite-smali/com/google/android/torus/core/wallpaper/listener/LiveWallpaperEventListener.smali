.class public interface abstract Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener$Companion;,
        Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008f\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aJ\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0019\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;",
        "",
        "",
        "xOffset",
        "xOffsetStep",
        "Lq3/m;",
        "onOffsetChanged",
        "(FF)V",
        "zoomLevel",
        "onZoomChanged",
        "(F)V",
        "onWallpaperReapplied",
        "()V",
        "Landroid/app/WallpaperColors;",
        "computeWallpaperColors",
        "()Landroid/app/WallpaperColors;",
        "Landroid/os/Bundle;",
        "extras",
        "onPreviewInfoReceived",
        "(Landroid/os/Bundle;)V",
        "onWake",
        "onSleep",
        "",
        "shouldZoomOutWallpaper",
        "()Z",
        "shortcutIconAndNowBarDataUpdated",
        "Companion",
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


# static fields
.field public static final ACTION:Ljava/lang/String; = "ACTION"

.field public static final Companion:Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener$Companion;

.field public static final SLEEP_ACTION_LOCATION_X:Ljava/lang/String; = "SLEEP_ACTION_LOCATION_X"

.field public static final SLEEP_ACTION_LOCATION_Y:Ljava/lang/String; = "SLEEP_ACTION_LOCATION_Y"

.field public static final WAKE_ACTION_LOCATION_X:Ljava/lang/String; = "WAKE_ACTION_LOCATION_X"

.field public static final WAKE_ACTION_LOCATION_Y:Ljava/lang/String; = "WAKE_ACTION_LOCATION_Y"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener$Companion;->$$INSTANCE:Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener$Companion;

    sput-object v0, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;->Companion:Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener$Companion;

    return-void
.end method


# virtual methods
.method public abstract computeWallpaperColors()Landroid/app/WallpaperColors;
.end method

.method public abstract onOffsetChanged(FF)V
.end method

.method public abstract onPreviewInfoReceived(Landroid/os/Bundle;)V
.end method

.method public abstract onSleep(Landroid/os/Bundle;)V
.end method

.method public abstract onWake(Landroid/os/Bundle;)V
.end method

.method public abstract onWallpaperReapplied()V
.end method

.method public abstract onZoomChanged(F)V
.end method

.method public abstract shortcutIconAndNowBarDataUpdated(Landroid/os/Bundle;)V
.end method

.method public abstract shouldZoomOutWallpaper()Z
.end method
