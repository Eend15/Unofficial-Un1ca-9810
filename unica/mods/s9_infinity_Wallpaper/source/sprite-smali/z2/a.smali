.class public final Lz2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li2/a;

.field public final b:LT2/b;

.field public final c:Lh2/b;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Li2/a;LT2/b;Lh2/b;)V
    .locals 8

    const-string v0, "dumpUtil"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/a;->a:Li2/a;

    iput-object p2, p0, Lz2/a;->b:LT2/b;

    iput-object p3, p0, Lz2/a;->c:Lh2/b;

    const-string p1, "snowy"

    const-string p2, "none"

    const-string p3, "rainy"

    filled-new-array {p2, p3, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/a;->d:Ljava/util/List;

    const-string v4, "evening"

    const-string v5, "sunset"

    const-string v0, "none"

    const-string v1, "sunrise"

    const-string v2, "morning"

    const-string v3, "noon"

    const-string v6, "midnight"

    const-string v7, "night"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/a;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    :try_start_3
    invoke-static {p2, v0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p1, v0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-static {p2, v0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_0
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-static {p1, p2}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_1
    :try_start_9
    const-string p2, "MagicianSpriteMigrator"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void

    :goto_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;I)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "context"

    invoke-static {v2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MagicianSpriteMigrator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "migrate, which:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v4, 0x24be4

    const/4 v6, 0x1

    if-gt v0, v4, :cond_0

    const-string v1, "MagicianSpriteMigrator"

    const-string v2, "migration is not required, "

    invoke-static {v0, v2}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_0
    iget-object v0, v1, Lz2/a;->a:Li2/a;

    invoke-virtual {v0, v3}, Li2/a;->J0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MagicianSpriteMigrator"

    const-string v1, "migration was completed already, skip"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v4, "isOutdoor"

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "isNight"

    invoke-virtual {v0, v7, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "weatherId"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "oneUiVersion"

    invoke-virtual {v0, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_2

    const-string v0, "MagicianSpriteMigrator"

    const-string v1, "migrate, weatherId is invalid"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_2
    const v10, 0x27100

    if-lt v0, v10, :cond_3

    const-string v1, "MagicianSpriteMigrator"

    const-string v2, "migration is not required, oneUiVersion is "

    invoke-static {v0, v2}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_3
    iget-object v0, v1, Lz2/a;->c:Lh2/b;

    const-string v10, "MagicianSpriteMigrator"

    const-string v11, "copyGeneratedFiles started"

    invoke-virtual {v0, v10, v11}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lz2/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    iget-object v0, v1, Lz2/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    const-string v0, "sunset"

    invoke-static {v12, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "sunrise"

    invoke-static {v12, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "midnight"

    invoke-static {v12, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const-string v0, "rainy"

    invoke-static {v14, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "snowy"

    invoke-static {v14, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move/from16 v17, v4

    move/from16 v18, v7

    move-object/from16 v19, v10

    goto/16 :goto_9

    :cond_7
    const-string v0, "call : get_generated_image, with : "

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "content://com.samsung.android.wallpaper.magician.weather"

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_8

    :try_start_1
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v5, "id"

    invoke-virtual {v15, v5, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "which"

    invoke-virtual {v15, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "weather"

    invoke-virtual {v15, v5, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "time"

    invoke-virtual {v15, v5, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "is_outdoor"

    invoke-virtual {v15, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "is_night"

    invoke-virtual {v15, v5, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "generated_file_only"

    invoke-virtual {v15, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "MagicianSpriteMigrator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v17, v4

    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "get_generated_image"

    const/4 v4, 0x0

    invoke-virtual {v11, v0, v4, v15}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x0

    goto :goto_1

    :goto_2
    :try_start_4
    invoke-static {v11, v5}, Lw0/f;->k(Landroid/content/ContentProviderClient;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_9

    const-string v0, "MagicianSpriteMigrator"

    const-string v5, "getWallpaperUri failed"

    const/4 v6, 0x0

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v11}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lw0/l;

    const-string v5, "requested_uri"

    const-class v6, Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    const-string v6, "requested_alpha_uri"

    const-class v11, Landroid/net/Uri;

    invoke-virtual {v4, v6, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    const/16 v6, 0x9

    invoke-direct {v0, v6}, Lw0/l;-><init>(I)V

    iput-object v5, v0, Lw0/l;->e:Ljava/lang/Object;

    iput-object v4, v0, Lw0/l;->f:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :goto_3
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-static {v11, v2}, Lw0/f;->k(Landroid/content/ContentProviderClient;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    move/from16 v17, v4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    monitor-exit p0

    if-eqz v4, :cond_e

    iget-object v0, v1, Lz2/a;->c:Lh2/b;

    const-string v5, "MagicianSpriteMigrator"

    iget-object v6, v4, Lw0/l;->e:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    iget-object v11, v4, Lw0/l;->f:Ljava/lang/Object;

    check-cast v11, Landroid/net/Uri;

    const-string v15, "migrate, weather:"

    move/from16 v18, v7

    const-string v7, ", time:"

    move-object/from16 v19, v10

    const-string v10, ", "

    invoke-static {v15, v14, v7, v12, v10}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lw0/l;->e:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v5, v1, Lz2/a;->b:LT2/b;

    const-string v6, "time"

    invoke-static {v12, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "weather"

    invoke-static {v14, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "none"

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5, v3, v8, v9}, LT2/b;->b(IJ)Ljava/lang/String;

    move-result-object v5

    const-string v7, "original"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getAbsolutePath(...)"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5, v3, v8, v9}, LT2/b;->b(IJ)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    :goto_5
    invoke-static {v2, v0, v5}, Lz2/a;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_b
    iget-object v0, v4, Lw0/l;->f:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_d

    iget-object v4, v1, Lz2/a;->b:LT2/b;

    const-string v5, "time"

    invoke-static {v12, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "weather"

    invoke-static {v14, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "none"

    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4, v3, v8, v9}, LT2/b;->b(IJ)Ljava/lang/String;

    move-result-object v4

    const-string v6, "original_alpha"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getAbsolutePath(...)"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4, v3, v8, v9}, LT2/b;->b(IJ)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_fg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    :goto_6
    invoke-static {v2, v0, v4}, Lz2/a;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_d
    :goto_7
    move/from16 v4, v17

    move/from16 v7, v18

    move-object/from16 v10, v19

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_e
    iget-object v0, v1, Lz2/a;->c:Lh2/b;

    const-string v2, "MagicianSpriteMigrator"

    const-string v3, "copyGeneratedFiles failed"

    invoke-virtual {v0, v2, v3}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lz2/a;->c:Lh2/b;

    const-string v1, "MagicianSpriteMigrator"

    const-string v2, "migrate failed"

    invoke-virtual {v0, v1, v2}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :goto_8
    monitor-exit p0

    throw v0

    :goto_9
    const-string v0, "MagicianSpriteMigrator"

    const-string v4, "migrate, skip!"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    const-string v4, "MagicianSpriteMigrator"

    const-string v0, "deleteGeneratedFiles, result: "

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "content://com.samsung.android.wallpaper.magician.weather"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-eqz v2, :cond_11

    const-string v5, "delete_generated_image"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "id"

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "which"

    invoke-virtual {v6, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_10

    const-string v5, "provider_call_result"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move v6, v2

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_10
    const/4 v6, 0x0

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move v5, v6

    goto :goto_c

    :cond_11
    const/4 v5, 0x0

    goto :goto_c

    :goto_b
    const-string v2, "deleteGeneratedFiles: "

    invoke-static {v2, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v2

    :goto_c
    if-eqz v5, :cond_12

    iget-object v0, v1, Lz2/a;->a:Li2/a;

    invoke-virtual {v0, v3}, Li2/a;->L0(I)V

    :cond_12
    iget-object v0, v1, Lz2/a;->c:Lh2/b;

    const-string v1, "MagicianSpriteMigrator"

    const-string v2, "migrate completed"

    invoke-virtual {v0, v1, v2}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_13
    move v1, v6

    return v1
.end method
