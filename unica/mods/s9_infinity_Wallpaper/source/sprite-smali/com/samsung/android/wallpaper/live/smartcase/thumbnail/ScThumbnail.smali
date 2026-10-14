.class abstract Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/ScThumbnail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScThumbnail"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/ScThumbnail;->makeThumbnail(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LJ1/e;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/ScThumbnail;->saveThumbnail()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-direct {p1, p0}, LJ1/e;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "ScThumbnail"

    const-string p2, "getThumbnailFileDescriptor : fail to makeThumbnail"

    invoke-static {p1, p2, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getThumbnailByBackupId(Landroid/content/Context;LJ1/g;)LJ1/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract makeThumbnail(Landroid/content/Context;)Z
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

.method public abstract saveThumbnail()Landroid/os/ParcelFileDescriptor;
.end method
