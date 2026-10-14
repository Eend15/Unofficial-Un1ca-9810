.class public final synthetic Ld2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM1/c;


# instance fields
.field public final synthetic a:Ld2/h;


# direct methods
.method public synthetic constructor <init>(Ld2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/f;->a:Ld2/h;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object p0, p0, Ld2/f;->a:Ld2/h;

    iget-object v0, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onDeviceStateChanged: newState[%d]"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, LK/I;->Z(I)Z

    move-result p1

    iput-boolean p1, p0, Ld2/h;->l:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ld2/h;->d(Z)V

    :cond_0
    return-void
.end method
