.class public Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherThumbnailProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherThumbnailProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;
    .locals 6

    iget p0, p2, LJ1/d;->i:I

    new-instance p2, Ly2/d;

    invoke-direct {p2, p1}, Ly2/d;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "WeatherThumbnailProvider"

    if-eqz v0, :cond_0

    const-string v1, "weatherId"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "getThumbnail : extras is null!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2, p0}, Ly2/d;->a(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p0}, Ly2/d;->b(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getThumbnail : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string p2, "thumbnail.jpg"

    invoke-static {p1, p0, p2}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getThumbnail : return asset file. pfd = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance p0, LJ1/e;

    invoke-direct {p0, p2}, LJ1/e;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p0
.end method

.method public bridge synthetic getThumbnailByBackupId(Landroid/content/Context;LJ1/g;)LJ1/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onGetBackgroundRegion(Landroid/content/Context;LJ1/a;)LJ1/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic prepareWallpaper(Landroid/content/Context;LJ1/i;)LJ1/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
