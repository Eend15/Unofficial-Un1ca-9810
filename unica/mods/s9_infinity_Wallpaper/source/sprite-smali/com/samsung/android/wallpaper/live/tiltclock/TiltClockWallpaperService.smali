.class public Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;
.super Lj1/a;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;-><init>()V

    const-string v0, "TiltClockWallpaperService"

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Ld2/h;

    invoke-direct {v0, p0}, Ld2/h;-><init>(Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;)V

    return-object v0
.end method
