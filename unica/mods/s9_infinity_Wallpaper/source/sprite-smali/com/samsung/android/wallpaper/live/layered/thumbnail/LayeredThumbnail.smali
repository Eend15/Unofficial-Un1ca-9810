.class public Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "LayeredThumbnail"


# instance fields
.field private final LANDSCAPE_THUMBNAIL:Ljava/lang/String;

.field private final PORTRAIT_THUMBNAIL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "portrait.jpg"

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;->PORTRAIT_THUMBNAIL:Ljava/lang/String;

    const-string v0, "landscape.jpg"

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;->LANDSCAPE_THUMBNAIL:Ljava/lang/String;

    return-void
.end method

.method private createBitmap(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 5

    const-string p0, "createBitmap : IOException while closing ParcelFileDescriptor"

    const-string v0, "LayeredThumbnail"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    throw v2
.end method

.method private createCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p1, p0, v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getCropHints(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const-string v0, "LayeredThumbnail"

    const-string v1, "getCropHints : cropHints = "

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "cropHints"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p1, v2

    :goto_0
    const-string v3, "getCropHints: e = "

    invoke-static {v3, v1}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail$1;-><init>(Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;)V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_0
    return-object v2
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "portrait.jpg"

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const-string p0, "landscape.jpg"

    return-object p0

    :cond_1
    const-string p0, "getFileName : orientation = "

    invoke-static {p1, p0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "LayeredThumbnail"

    invoke-static {v0, p0, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0
.end method

.method private getPfdFromBitmap(Landroid/content/Context;II)Landroid/os/ParcelFileDescriptor;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;->getFileName(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    invoke-static {p1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getPfdFromBitmap : e = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "LayeredThumbnail"

    invoke-static {p2, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private saveBitmapToInternalStorage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 2

    const/4 p0, 0x0

    const-string v0, "LayeredThumbnail"

    if-nez p2, :cond_0

    const-string p1, "saveBitmapToInternalStorage : bitmap is null"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v0, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "saveBitmapToInternalStorage : Failed to create directory"

    new-array p4, p0, [Ljava/lang/Object;

    invoke-static {v0, p1, p4}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p2, p1, p4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p1, "saveBitmapToInternalStorage : IOException while saving bitmap to internal storage"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v0, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private saveCropBitmaps(Landroid/content/Context;IZLJ1/i;)V
    .locals 5

    and-int/lit8 v0, p2, 0x3c

    if-eqz p3, :cond_0

    or-int/lit8 p3, v0, 0x1

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    iget-object p4, p4, LJ1/i;->i:Landroid/os/Bundle;

    invoke-direct {p0, p4}, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;->getCropHints(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p4

    const-string v0, "single_image.jpg"

    invoke-static {p1, p3, v0}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    const-string v0, "LayeredThumbnail"

    const/4 v1, 0x0

    if-nez p3, :cond_2

    const-string p0, "saveCropBitmaps: pfd is null"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p3}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "saveCropBitmaps: failed to delete directory"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p3}, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;->createBitmap(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "isValidBitmap: Bitmap is recycled. bitmap = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {p0, p3, v2}, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;->createCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v4, v2, :cond_5

    const-string v2, "portrait.jpg"

    goto :goto_2

    :cond_5
    const-string v2, "landscape.jpg"

    :goto_2
    invoke-direct {p0, p1, v3, v2, p2}, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;->saveBitmapToInternalStorage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    const-string p0, "saveCropBitmaps: failed to make thumbnail"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;
    .locals 5

    iget v0, p2, LJ1/d;->h:I

    iget v1, p2, LJ1/d;->j:I

    invoke-static {p1, v0, v1}, LK/I;->F(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getThumbnail : which="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, LJ1/d;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", srcWhich="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, LJ1/d;->i:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "LayeredThumbnail"

    invoke-static {v4, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;->getPfdFromBitmap(Landroid/content/Context;II)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, LJ1/e;

    invoke-direct {p1, p0}, LJ1/e;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p1

    :cond_1
    const-string p0, "thumbnail.jpg"

    invoke-static {p1, p2, p0}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getThumbnailFileDescriptor: return asset file = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, p2}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, LJ1/e;

    invoke-direct {p1, p0}, LJ1/e;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p1
.end method

.method public bridge synthetic getThumbnailByBackupId(Landroid/content/Context;LJ1/g;)LJ1/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetBackgroundRegion(Landroid/content/Context;LJ1/a;)LJ1/b;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Lf2/l;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lf2/l;->d:J

    const/4 v5, 0x0

    iput-boolean v5, v2, Lf2/l;->e:Z

    iput v5, v2, Lf2/l;->c:I

    const/16 v6, 0x64

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, v2, Lf2/l;->a:[Ljava/lang/String;

    new-array v6, v6, [J

    iput-object v6, v2, Lf2/l;->b:[J

    iput-boolean v5, v2, Lf2/l;->e:Z

    iput-wide v3, v2, Lf2/l;->d:J

    iput v5, v2, Lf2/l;->c:I

    iget-object v6, v2, Lf2/l;->b:[J

    invoke-static {v6, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v3, v2, Lf2/l;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lf2/l;->e:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-string v8, "Start"

    invoke-virtual {v2, v8, v6, v7}, Lf2/l;->d(Ljava/lang/String;J)V

    iget v6, v1, LJ1/a;->h:I

    const-string v7, "bg_region"

    invoke-static {v0, v6, v7}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    const-string v8, "LayeredThumbnail"

    if-nez v7, :cond_0

    const-string v0, "getBackgroundRegion: bg region file not found!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_0
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v10, v10, [B

    :goto_0
    invoke-virtual {v9, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_1

    invoke-virtual {v7, v10, v5, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_f

    :cond_1
    new-instance v10, Lcom/samsung/android/wallpaper/stretch/utils/BgRegion;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    const-string v12, "byteArray"

    invoke-static {v11, v12}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    iput-boolean v3, v10, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    iput v3, v10, Lcom/samsung/android/wallpaper/stretch/utils/BgRegion;->e:I

    invoke-virtual {v10, v5, v11}, Lcom/samsung/android/wallpaper/stretch/utils/BgRegion;->k(I[B)V

    iput-boolean v5, v10, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v7, "load bgRegion"

    invoke-virtual {v2, v7}, Lf2/l;->c(Ljava/lang/String;)V

    const-string v7, "single_image.jpg"

    invoke-static {v0, v6, v7}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v0, "getBackgroundRegion: single image file not found!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_2
    :try_start_3
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-static {v11, v4, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v11, Landroid/util/Size;

    iget v12, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v11, v12, v9}, Landroid/util/Size;-><init>(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-gtz v7, :cond_4

    :cond_3
    move-object v2, v4

    move v1, v5

    goto/16 :goto_d

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "load single image bounds: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lf2/l;->c(Ljava/lang/String;)V

    invoke-static {v0, v6}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v9, "cropHints"

    invoke-virtual {v7, v9, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v9, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail$2;

    move-object/from16 v12, p0

    invoke-direct {v9, v12}, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail$2;-><init>(Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;)V

    invoke-virtual {v9}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v12, v7, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    goto :goto_1

    :cond_5
    move-object v7, v4

    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x2

    if-ge v9, v12, :cond_7

    :cond_6
    move-object v2, v4

    move v1, v5

    goto/16 :goto_c

    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "load crop hints: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lf2/l;->c(Ljava/lang/String;)V

    iget v1, v1, LJ1/a;->j:I

    invoke-static {v0, v6, v1}, LK/I;->F(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_15

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v12, v0, Landroid/graphics/Point;->y:I

    mul-int v13, v1, v12

    if-gtz v13, :cond_8

    goto/16 :goto_b

    :cond_8
    int-to-float v1, v1

    int-to-float v12, v12

    div-float/2addr v1, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v1, v12

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    move-object v15, v4

    move v14, v5

    :goto_2
    const/16 v16, 0x0

    if-ge v14, v9, :cond_d

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Landroid/graphics/Rect;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v4, v12

    cmpl-float v5, v1, v4

    if-nez v5, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "use same ratio crop hints: at "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : null"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lf2/l;->c(Ljava/lang/String;)V

    move-object v15, v3

    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    mul-float v5, v4, v1

    cmpl-float v5, v5, v16

    if-lez v5, :cond_b

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v13

    if-gez v5, :cond_b

    move-object v15, v3

    move v13, v4

    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    :cond_c
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getBackgroundRegion: empty cropHint at ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v8, v3, v5}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move v5, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_d
    move v4, v5

    :goto_5
    if-nez v15, :cond_e

    const-string v0, "getBackgroundRegion: crop hints not founds"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    const/4 v1, 0x0

    return-object v1

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "use crop hints: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lf2/l;->c(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    iget v7, v15, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    iget v9, v15, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v1

    iget v11, v15, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    mul-float/2addr v11, v3

    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-direct {v5, v7, v9, v11, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    cmpl-float v3, v3, v1

    const/high16 v7, 0x40000000    # 2.0f

    if-lez v3, :cond_f

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v1, v3

    div-float/2addr v1, v7

    cmpl-float v3, v1, v16

    if-lez v3, :cond_10

    iget v3, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v5, Landroid/graphics/RectF;->left:F

    iget v3, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iput v3, v5, Landroid/graphics/RectF;->right:F

    goto :goto_7

    :cond_f
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v3

    div-float/2addr v1, v7

    cmpl-float v3, v1, v16

    if-lez v3, :cond_10

    iget v3, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    iput v3, v5, Landroid/graphics/RectF;->top:F

    iget v3, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    :cond_10
    :goto_7
    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v1, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;

    invoke-direct {v1, v10}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    invoke-virtual {v1, v4}, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->b(Landroid/graphics/Rect;)V

    iget v3, v4, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->translate(II)V

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    iget-boolean v5, v1, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-nez v5, :cond_12

    invoke-virtual {v1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_8

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot scale immutable region."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_8
    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v5

    const-string v7, "getBoundaryPath(...)"

    invoke-static {v5, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v5, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v7, v3, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v9, v3, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v1, v4, v7, v9, v3}, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->set(IIII)Z

    invoke-virtual {v1, v5, v1}, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->b(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    filled-new-array {v1, v5, v1, v5}, [I

    move-result-object v1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    filled-new-array {v5, v5, v3, v3}, [I

    move-result-object v3

    const/4 v5, 0x0

    :goto_9
    const/4 v7, 0x4

    if-ge v5, v7, :cond_13

    aget v10, v1, v5

    aget v11, v3, v5

    add-int/lit8 v12, v10, 0x1

    add-int/lit8 v13, v11, 0x1

    sget-object v14, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_13
    iget-boolean v1, v2, Lf2/l;->e:Z

    if-nez v1, :cond_14

    const-string v1, "stop: not started crop process done"

    const-string v3, "StopWatch"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    const/4 v1, 0x0

    iput-boolean v1, v2, Lf2/l;->e:Z

    const-string v1, "crop process done"

    invoke-virtual {v2, v1, v9, v10}, Lf2/l;->d(Ljava/lang/String;J)V

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getBackgroundRegion: display="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " srcWhich="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " region="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, LJ1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, LJ1/b;->h:Landroid/graphics/Region;

    return-object v0

    :cond_15
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBackgroundRegion: display is not ready. size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    return-object v2

    :goto_c
    const-string v0, "getBackgroundRegion: wrong crop hints"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getBackgroundRegion: wrong single image size : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_5
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    const-string v0, "getBackgroundRegion : IOException while closing ParcelFileDescriptor"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto :goto_11

    :goto_f
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public prepareWallpaper(Landroid/content/Context;LJ1/i;)LJ1/j;
    .locals 5

    iget v0, p2, LJ1/i;->h:I

    const-string v1, "prepareWallpaper : which = "

    invoke-static {v0, v1}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "LayeredThumbnail"

    invoke-static {v4, v1, v3}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit8 v1, v0, 0x3c

    const/4 v3, 0x1

    invoke-static {v0, v3}, LK/I;->Y(II)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, v3, v2, p2}, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;->saveCropBitmaps(Landroid/content/Context;IZLJ1/i;)V

    :cond_0
    const/4 v2, 0x2

    invoke-static {v0, v2}, LK/I;->Y(II)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/2addr v1, v2

    invoke-static {v0}, LK/I;->c0(I)Z

    move-result v0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/wallpaper/live/layered/thumbnail/LayeredThumbnail;->saveCropBitmaps(Landroid/content/Context;IZLJ1/i;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
