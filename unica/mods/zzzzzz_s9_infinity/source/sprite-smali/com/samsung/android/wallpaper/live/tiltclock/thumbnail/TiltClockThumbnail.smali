.class public Lcom/samsung/android/wallpaper/live/tiltclock/thumbnail/TiltClockThumbnail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiltClockThumbnail"

.field private static final THUMBNAIL_FILE_NAME:Ljava/lang/String; = "TiltClock_thumbnail.jpg"

.field private static final THUMBNAIL_HIDE_CLOCK:Ljava/lang/String; = "TiltClock_hide_clock.jpg"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBackgroundOnlyThumbnail(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lf2/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Li1/g;->tilt_clock_thumbnail_width_B7:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget v1, Li1/g;->tilt_clock_thumbnail_height_B7:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    :cond_0
    sget v0, Li1/g;->tilt_clock_thumbnail_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget v1, Li1/g;->tilt_clock_thumbnail_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, La4/x;->x(I)Landroid/graphics/drawable/PaintDrawable;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method public static getTiltClockThumbnail(Landroid/content/Context;ILjava/util/Calendar;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/wallpaper/live/tiltclock/thumbnail/TiltClockThumbnail;->getTiltClockThumbnail(Landroid/content/Context;ILjava/util/Calendar;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getTiltClockThumbnail(Landroid/content/Context;ILjava/util/Calendar;Z)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "TiltClockThumbnail"

    const-string p2, "getTiltClockThumbnail : Context is NULL"

    invoke-static {p1, p2, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4
    invoke-static {}, Lf2/g;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget v2, Li1/g;->tilt_clock_thumbnail_width_B7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 6
    sget v3, Li1/g;->tilt_clock_thumbnail_height_B7:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 7
    :cond_1
    sget v2, Li1/g;->tilt_clock_thumbnail_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 8
    sget v3, Li1/g;->tilt_clock_thumbnail_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 9
    :goto_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 10
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    new-instance v5, La0/b;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, La0/b;-><init>(Landroid/content/Context;Z)V

    .line 12
    iput p1, v5, La0/b;->c:I

    .line 13
    iput-boolean v6, v5, La0/b;->d:Z

    .line 14
    invoke-static {p0}, Lo1/b;->b(Landroid/content/Context;)Lo1/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo1/b;->d(Ljava/util/Calendar;)Lo1/a;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    .line 15
    iget-object p2, p1, Lo1/a;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 16
    sget p3, Li1/j;->replace_alternate_date:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 17
    sget p2, Li1/j;->replace_alternate_date:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 18
    :cond_2
    const-string p2, ""

    .line 19
    :cond_3
    :goto_1
    new-instance p0, Lo1/a;

    iget-object p3, p1, Lo1/a;->a:Ljava/lang/String;

    iget-object p1, p1, Lo1/a;->c:Ljava/lang/String;

    invoke-direct {p0, p3, p2, p1}, Lo1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object p0, v5, La0/b;->n:Ljava/lang/Object;

    .line 21
    iput-boolean v6, v5, La0/b;->b:Z

    goto :goto_2

    .line 22
    :cond_4
    iput-object p1, v5, La0/b;->n:Ljava/lang/Object;

    .line 23
    iput-boolean v6, v5, La0/b;->b:Z

    .line 24
    :cond_5
    :goto_2
    new-instance p0, Ld2/e;

    invoke-direct {p0, v0}, Ld2/e;-><init>(I)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Ld2/e;->a:F

    .line 26
    iput-object p0, v5, La0/b;->m:Ljava/lang/Object;

    .line 27
    invoke-virtual {v5, v4, v2, v1}, La0/b;->a(Landroid/graphics/Canvas;II)V

    return-object v3
.end method


# virtual methods
.method public getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;
    .locals 8

    iget p0, p2, LJ1/d;->k:I

    invoke-static {p0}, LB/a;->z(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getThumbnail: clockType = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TiltClockThumbnail"

    invoke-static {v2, p0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Landroidx/appcompat/app/N;

    iget-object v1, p2, LJ1/d;->m:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroidx/appcompat/app/N;-><init>(Landroid/os/Bundle;)V

    iget v1, p0, Landroidx/appcompat/app/N;->a:I

    const/4 v2, 0x2

    const-string v3, "TiltClock_thumbnail.jpg"

    iget p2, p2, LJ1/d;->k:I

    if-ne p2, v2, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {p1, v1, p0}, Lcom/samsung/android/wallpaper/live/tiltclock/thumbnail/TiltClockThumbnail;->getTiltClockThumbnail(Landroid/content/Context;ILjava/util/Calendar;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "ThumbnailUtils"

    const-string v0, "encodeImageToCacheDir: e = "

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v1

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_0
    const/high16 p0, 0x10000000

    invoke-static {p2, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :goto_1
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_3
    throw p0

    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    invoke-static {p1, v1}, Lcom/samsung/android/wallpaper/live/tiltclock/thumbnail/TiltClockThumbnail;->createBackgroundOnlyThumbnail(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, LB1/a;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0}, LB1/a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-static {p0, p1, p2}, LK/I;->s(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Runnable;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_5

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iget-wide v4, p0, Landroidx/appcompat/app/N;->b:J

    invoke-virtual {p2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-wide v4, p0, Landroidx/appcompat/app/N;->b:J

    iget-wide v6, p0, Landroidx/appcompat/app/N;->c:J

    cmp-long p0, v4, v6

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    move p0, v0

    :goto_4
    invoke-static {p1, v1, p2, p0}, Lcom/samsung/android/wallpaper/live/tiltclock/thumbnail/TiltClockThumbnail;->getTiltClockThumbnail(Landroid/content/Context;ILjava/util/Calendar;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p1, p0, v3, v0}, Le0/a;->Y(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    :cond_5
    :goto_5
    new-instance p0, LJ1/e;

    invoke-direct {p0, v1}, LJ1/e;-><init>(Landroid/os/ParcelFileDescriptor;)V

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

.method public prepareWallpaper(Landroid/content/Context;LJ1/i;)LJ1/j;
    .locals 6

    new-instance p0, LJ1/j;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "tiltclock"

    const-string v2, "tiltclock"

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LJ1/j;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    return-object p0
.end method
