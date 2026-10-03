.class public Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/Sc00000002Thumbnail;
.super Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/ScThumbnail;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/ScThumbnail;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/ScThumbnail;->getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getThumbnailByBackupId(Landroid/content/Context;LJ1/g;)LJ1/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeThumbnail(Landroid/content/Context;)Z
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/Sc00000002Thumbnail;->mContext:Landroid/content/Context;

    sget v0, Li1/i;->blue:I

    invoke-static {p1, v0}, Le0/a;->I(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/Sc00000002Thumbnail;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

.method public saveThumbnail()Landroid/os/ParcelFileDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/Sc00000002Thumbnail;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/smartcase/thumbnail/Sc00000002Thumbnail;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const-string v2, "SmartCase_blue_thumbnail.jpg"

    invoke-static {v0, p0, v2, v1}, Le0/a;->Y(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method
