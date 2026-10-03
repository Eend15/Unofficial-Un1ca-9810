.class public abstract Lw0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:LZ4/a;

.field public static b:LZ4/b;

.field public static c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

.field public static d:LM1/d;

.field public static e:LZ4/c;

.field public static f:LA1/e;

.field public static g:LA1/e;


# direct methods
.method public static final A(Ljava/lang/Class;)LL3/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LF3/t;->a:LF3/u;

    invoke-virtual {v0, p0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    return-object p0
.end method

.method public static final B(Lp4/f;I)Ls4/f;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls4/f;->d(Ljava/lang/String;)Ls4/f;

    move-result-object p0

    return-object p0
.end method

.method public static final C(LI4/m;LL3/l;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final D(Ln4/z;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, LF4/z;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method public static E(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "r"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-object v0
.end method

.method public static final F(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [C

    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final G(LJ4/C;)Z
    .locals 2

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lv4/j;->b(LU3/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, LU3/e;

    invoke-static {v0}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v0

    sget-object v1, LR3/p;->g:Ls4/c;

    invoke-virtual {v0, v1}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    instance-of v0, p0, LU3/O;

    if-eqz v0, :cond_2

    check-cast p0, LU3/O;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const/4 v0, 0x0

    if-nez p0, :cond_3

    move p0, v0

    goto :goto_2

    :cond_3
    invoke-static {p0}, LK/I;->N(LU3/O;)LJ4/C;

    move-result-object p0

    invoke-static {p0}, Lw0/f;->G(LJ4/C;)Z

    move-result p0

    :goto_2
    if-eqz p0, :cond_4

    :goto_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static H(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final J(Ljava/io/File;)LB3/a;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/4 v3, 0x4

    invoke-static {p0, v2, v0, v0, v3}, LV4/m;->u0(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1

    const/4 v4, 0x2

    invoke-static {p0, v2, v4, v0, v3}, LV4/m;->u0(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/2addr v4, v1

    invoke-static {p0, v2, v4, v0, v3}, LV4/m;->u0(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/2addr v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    const/16 v3, 0x3a

    if-lez v4, :cond_3

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_3

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    invoke-static {p0, v3}, LV4/m;->q0(Ljava/lang/String;C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_4
    move v3, v0

    :goto_0
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "substring(...)"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    sget-object p0, Lr3/r;->d:Lr3/r;

    goto :goto_2

    :cond_5
    new-array v1, v1, [C

    aput-char v2, v1, v0

    invoke-static {p0, v1}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object p0, v0

    :goto_2
    new-instance v0, LB3/a;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, LB3/a;-><init>(Ljava/io/File;Ljava/util/List;)V

    return-object v0
.end method

.method public static a()Lcom/samsung/android/weather/api/source/WeatherStorageApi;
    .locals 1

    sget-object v0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez v0, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object v0

    sput-object v0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object v0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "storage"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WPI"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "it is only available for Samsung Service."

    if-eqz v0, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.android.watch.weather.provider.level.dangerous"

    goto :goto_0

    :cond_1
    const-string p0, "com.samsung.android.watch.weather.provider.level.system"

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lj0/s;->g(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "com.sec.android.daemonapp.ap.accuweather.provider"

    goto :goto_0

    :cond_3
    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    const-string p0, "com.samsung.android.weather.content.provider.level.dangerous"

    goto :goto_0

    :cond_4
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/weather/api/NotAllowedAppException;

    invoke-direct {p0, v4}, Lcom/samsung/android/weather/api/NotAllowedAppException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "com.samsung.android.weather.content.provider.level.system"

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;LU3/w;)V
    .locals 14

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUri"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lw0/f;->e:LZ4/c;

    if-nez v0, :cond_0

    new-instance v0, LZ4/c;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, LZ4/c;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    sput-object v0, Lw0/f;->e:LZ4/c;

    :cond_0
    sget-object v0, Lw0/f;->d:LM1/d;

    if-nez v0, :cond_1

    new-instance v0, Lw0/q;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    new-instance v4, La5/a;

    const/4 v1, 0x1

    invoke-direct {v4, p1, p0, v1}, La5/a;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v5, La5/b;

    const/4 v1, 0x0

    invoke-direct {v5, p1, p0, v1}, La5/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v6, LZ4/c;

    const/4 v1, 0x2

    invoke-direct {v6, p1, p0, v1}, LZ4/c;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v7, La5/a;

    invoke-direct {v7, p1, p0, v1}, La5/a;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v8, LZ4/b;

    const/4 v1, 0x1

    invoke-direct {v8, p1, p0, v1}, LZ4/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v9, LZ4/c;

    invoke-direct {v9, p1, p0, v1}, LZ4/c;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v10, La5/b;

    const/4 v1, 0x2

    invoke-direct {v10, p1, p0, v1}, La5/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v11, La5/b;

    const/4 v1, 0x1

    invoke-direct {v11, p1, p0, v1}, La5/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v12, LZ4/b;

    const/4 v1, 0x3

    invoke-direct {v12, p1, p0, v1}, LZ4/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v13, LZ4/b;

    const/4 v1, 0x2

    invoke-direct {v13, p1, p0, v1}, LZ4/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v13}, Lw0/q;-><init>(LU3/w;Landroid/content/ContentResolver;La5/a;La5/b;LZ4/c;La5/a;LZ4/b;LZ4/c;La5/b;La5/b;LZ4/b;LZ4/b;)V

    new-instance v1, LM1/d;

    new-instance v2, LZ4/c;

    const/4 v3, 0x4

    invoke-direct {v2, p1, p0, v3}, LZ4/c;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v3, La5/b;

    const/4 v4, 0x3

    invoke-direct {v3, p1, p0, v4}, La5/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v4, LZ4/b;

    const/4 v5, 0x4

    invoke-direct {v4, p1, p0, v5}, LZ4/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v5, La5/a;

    const/4 v6, 0x4

    invoke-direct {v5, p1, p0, v6}, La5/a;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v6, LU0/e;

    const/16 v7, 0x11

    invoke-direct {v6, v7}, LU0/e;-><init>(I)V

    new-instance v6, La5/a;

    const/4 v7, 0x0

    invoke-direct {v6, p1, p0, v7}, La5/a;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v7, LZ4/b;

    const/4 v8, 0x5

    invoke-direct {v7, p1, p0, v8}, LZ4/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v8, LG4/d;

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, LG4/d;-><init>(IZ)V

    new-instance v8, La5/b;

    const/4 v9, 0x2

    invoke-direct {v8, p1, p0, v9}, La5/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v8, LG4/d;

    const/16 v9, 0x11

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, LG4/d;-><init>(IZ)V

    const-string v8, "contentUri"

    invoke-static {p1, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, LM1/d;->a:Ljava/lang/Object;

    iput-object v3, v1, LM1/d;->b:Ljava/lang/Object;

    iput-object v4, v1, LM1/d;->c:Ljava/lang/Object;

    iput-object v5, v1, LM1/d;->d:Ljava/lang/Object;

    iput-object v6, v1, LM1/d;->e:Ljava/lang/Object;

    iput-object v7, v1, LM1/d;->f:Ljava/lang/Object;

    iput-object v0, v1, LM1/d;->g:Ljava/lang/Object;

    sput-object v1, Lw0/f;->d:LM1/d;

    :cond_1
    sget-object v0, Lw0/f;->f:LA1/e;

    if-nez v0, :cond_2

    new-instance v0, LG4/d;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LG4/d;-><init>(IZ)V

    new-instance v0, LA1/e;

    new-instance v1, LU0/e;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, LU0/e;-><init>(I)V

    new-instance v1, La5/a;

    const/4 v2, 0x3

    invoke-direct {v1, p1, p0, v2}, La5/a;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    new-instance v2, LG4/d;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LG4/d;-><init>(IZ)V

    const-string v2, "contentUri"

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LA1/e;->d:Ljava/lang/Object;

    sput-object v0, Lw0/f;->f:LA1/e;

    :cond_2
    sget-object v0, Lw0/f;->g:LA1/e;

    if-nez v0, :cond_3

    new-instance v0, LA1/e;

    new-instance v1, LU0/e;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LU0/e;-><init>(I)V

    new-instance v1, LZ4/c;

    const/4 v2, 0x3

    invoke-direct {v1, p1, p0, v2}, LZ4/c;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LA1/e;->d:Ljava/lang/Object;

    sput-object v0, Lw0/f;->g:LA1/e;

    :cond_3
    return-void
.end method

.method public static d(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static e(I)V
    .locals 0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "permission must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :goto_0
    move v3, v0

    goto :goto_4

    :cond_1
    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v4, v2

    if-gtz v4, :cond_2

    goto :goto_4

    :cond_2
    aget-object v2, v2, v0

    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/app/AppOpsManager;

    if-ne v3, v1, :cond_7

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    if-nez v3, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    invoke-virtual {v3, p1, v4, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3, p1, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    :goto_2
    move v2, v5

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_3
    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, -0x2

    move v3, p0

    :cond_9
    :goto_4
    return v3
.end method

.method public static i(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static j(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static final k(Landroid/content/ContentProviderClient;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lp4/g;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final l(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lp4/g;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static m(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/util/List;)LC4/o;
    .locals 3

    const-string v0, "debugName"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LS4/g;

    invoke-direct {v0}, LS4/g;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    sget-object v2, LC4/n;->b:LC4/n;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC4/o;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, v1, LC4/a;

    if-eqz v2, :cond_1

    check-cast v1, LC4/a;

    iget-object v1, v1, LC4/a;->c:[LC4/o;

    invoke-static {v1}, Lr3/h;->b0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, LS4/g;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget p1, v0, LS4/g;->d:I

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    new-instance p1, LC4/a;

    new-array v1, v2, [LC4/o;

    invoke-virtual {v0, v1}, LS4/g;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, [LC4/o;

    invoke-direct {p1, p0, v0}, LC4/a;-><init>(Ljava/lang/String;[LC4/o;)V

    move-object v2, p1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v0, v2}, LS4/g;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, LC4/o;

    :cond_5
    :goto_1
    return-object v2
.end method

.method public static o(Ljava/lang/String;Ljava/util/SequencedCollection;)LC4/o;
    .locals 3

    const-string v0, "message"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/C;

    invoke-virtual {v1}, LJ4/C;->l0()LC4/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, LR3/f;->U(Ljava/util/ArrayList;)LS4/g;

    move-result-object p1

    iget v0, p1, LS4/g;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    new-instance v0, LC4/a;

    new-array v2, v2, [LC4/o;

    invoke-virtual {p1, v2}, LS4/g;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, [LC4/o;

    invoke-direct {v0, p0, v2}, LC4/a;-><init>(Ljava/lang/String;[LC4/o;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1, v2}, LS4/g;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, LC4/o;

    goto :goto_1

    :cond_3
    sget-object v0, LC4/n;->b:LC4/n;

    :goto_1
    iget p0, p1, LS4/g;->d:I

    if-gt p0, v1, :cond_4

    return-object v0

    :cond_4
    new-instance p0, LC4/k;

    invoke-direct {p0, v0}, LC4/k;-><init>(LC4/o;)V

    return-object p0
.end method

.method public static p(Ls4/c;LI4/o;LU3/x;Ljava/io/InputStream;)LG4/c;
    .locals 8

    const-string v0, "Kotlin built-in definition format version is not supported: expected "

    const-string v1, "fqName"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "storageManager"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "module"

    invoke-static {p2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lo4/a;->f:Lo4/a;

    invoke-static {p3}, Lj0/s;->E(Ljava/io/InputStream;)Lo4/a;

    move-result-object v7

    sget-object v1, Lo4/a;->f:Lo4/a;

    invoke-virtual {v7, v1}, Lp4/a;->b(Lp4/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, LG4/a;->m:LG4/a;

    iget-object v0, v0, LE4/a;->a:Lt4/i;

    sget-object v1, Ln4/E;->n:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lt4/f;

    invoke-direct {v2, p3}, Lt4/f;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2, v0}, Lt4/y;->a(Lt4/f;Lt4/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v1}, Lt4/f;->a(I)V
    :try_end_1
    .catch Lt4/s; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lt4/x;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v6, v0

    check-cast v6, Ln4/E;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance p3, LG4/c;

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, LG4/c;-><init>(Ls4/c;LI4/o;LU3/x;Ln4/E;Lo4/a;)V

    return-object p3

    :cond_0
    :try_start_3
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    new-instance p1, Lt4/s;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lt4/s;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lt4/s;->d:Lt4/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v0, p0, Lt4/s;->d:Lt4/b;

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Please update Kotlin"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p3, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final q(Ln4/f0;)LU3/n;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, LF4/z;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const-string v0, "PRIVATE"

    packed-switch p0, :pswitch_data_0

    sget-object p0, LU3/o;->a:LU3/n;

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    sget-object p0, LU3/o;->f:LU3/n;

    const-string v0, "LOCAL"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    sget-object p0, LU3/o;->e:LU3/n;

    const-string v0, "PUBLIC"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    sget-object p0, LU3/o;->c:LU3/n;

    const-string v0, "PROTECTED"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    sget-object p0, LU3/o;->b:LU3/n;

    const-string v0, "PRIVATE_TO_THIS"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    sget-object p0, LU3/o;->a:LU3/n;

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    sget-object p0, LU3/o;->d:LU3/n;

    const-string v0, "INTERNAL"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final r(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC4/o;

    invoke-interface {v1}, LC4/o;->f()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static s(Landroid/os/Bundle;)LH2/a;
    .locals 31

    move-object/from16 v0, p0

    new-instance v26, LH2/a;

    move-object/from16 v1, v26

    const-string v2, "caller_package_name"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "which"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "engine_type"

    const/16 v7, 0x65

    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "scheduling_type"

    const/16 v8, 0xc8

    invoke-virtual {v0, v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "fg_service_working_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "generating_type"

    const/16 v10, 0xc9

    invoke-virtual {v0, v9, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "need_constraint"

    const/4 v15, 0x1

    invoke-virtual {v0, v10, v15}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "generating_count_at_once"

    const/16 v12, 0x14

    invoke-virtual {v0, v11, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "source_fd"

    const-class v13, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelFileDescriptor;

    const-string v14, "source_alpha_fd"

    invoke-virtual {v0, v14, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelFileDescriptor;

    const-string v14, "source_path"

    invoke-virtual {v0, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "source_alpha_path"

    invoke-virtual {v0, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v1

    const/4 v1, 0x1

    const-string v1, "time"

    move-object/from16 v28, v2

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "weather"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "current_time"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "current_weather"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "is_outdoor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const-string v1, "is_night"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    const-string v1, "force_square_generate"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    const-string v1, "generated_file_only"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    const-string v1, "scheduling_time"

    move-wide/from16 v29, v3

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-wide/from16 v3, v29

    invoke-direct/range {v1 .. v25}, LH2/a;-><init>(Ljava/lang/String;JIIIIIZILandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZJ)V

    return-object v26
.end method

.method public static t(Ln0/g;)LH2/a;
    .locals 29

    move-object/from16 v0, p0

    const-string v1, "workData"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LH2/a;

    const-string v2, "caller_package_name"

    invoke-virtual {v0, v2}, Ln0/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Ln0/g;->a:Ljava/util/HashMap;

    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, -0x1

    :goto_0
    const-string v2, "which"

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ln0/g;->c(ILjava/lang/String;)I

    move-result v7

    const-string v2, "engine_type"

    const/16 v8, 0x65

    invoke-virtual {v0, v8, v2}, Ln0/g;->c(ILjava/lang/String;)I

    move-result v8

    const-string v2, "scheduling_type"

    const/16 v9, 0xc8

    invoke-virtual {v0, v9, v2}, Ln0/g;->c(ILjava/lang/String;)I

    move-result v10

    const-string v2, "fg_service_working_type"

    invoke-virtual {v0, v9, v2}, Ln0/g;->c(ILjava/lang/String;)I

    move-result v9

    const-string v2, "generating_type"

    const/16 v11, 0xc9

    invoke-virtual {v0, v11, v2}, Ln0/g;->c(ILjava/lang/String;)I

    move-result v11

    const-string v2, "need_constraint"

    const/4 v12, 0x1

    invoke-virtual {v0, v2, v12}, Ln0/g;->b(Ljava/lang/String;Z)Z

    move-result v15

    const-string v2, "generating_count_at_once"

    const/16 v13, 0x14

    invoke-virtual {v0, v13, v2}, Ln0/g;->c(ILjava/lang/String;)I

    move-result v16

    const-string v2, "source_path"

    invoke-virtual {v0, v2}, Ln0/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "source_alpha_path"

    invoke-virtual {v0, v2}, Ln0/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "time"

    invoke-virtual {v0, v2}, Ln0/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "weather"

    invoke-virtual {v0, v2}, Ln0/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, "current_time"

    invoke-virtual {v0, v2}, Ln0/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v2, "current_weather"

    invoke-virtual {v0, v2}, Ln0/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v2, "is_outdoor"

    invoke-virtual {v0, v2, v12}, Ln0/g;->b(Ljava/lang/String;Z)Z

    move-result v23

    const-string v2, "is_night"

    invoke-virtual {v0, v2, v6}, Ln0/g;->b(Ljava/lang/String;Z)Z

    move-result v24

    const-string v2, "force_square_generate"

    invoke-virtual {v0, v2, v6}, Ln0/g;->b(Ljava/lang/String;Z)Z

    move-result v25

    const-string v2, "generated_file_only"

    invoke-virtual {v0, v2, v6}, Ln0/g;->b(Ljava/lang/String;Z)Z

    move-result v26

    iget-object v0, v0, Ln0/g;->a:Ljava/util/HashMap;

    const-string v2, "scheduling_time"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_1
    move-wide/from16 v27, v12

    goto :goto_2

    :cond_1
    const-wide/16 v12, 0x0

    goto :goto_1

    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v1

    move v6, v7

    move v7, v8

    move v8, v10

    move v10, v11

    move v11, v15

    move/from16 v12, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v26

    move-wide/from16 v25, v27

    invoke-direct/range {v2 .. v26}, LH2/a;-><init>(Ljava/lang/String;JIIIIIZILandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZJ)V

    return-object v1
.end method

.method public static final u(Ljava/lang/annotation/Annotation;)LL3/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "annotationType(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lw0/f;->A(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.KClass<out T of kotlin.jvm.JvmClassMappingKt.<get-annotationClass>>"

    invoke-static {p0, v0}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final v(Lp4/f;I)Ls4/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lp4/f;->m0(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1}, Lp4/f;->C(I)Z

    move-result p0

    invoke-static {v0, p0}, Ls4/b;->e(Ljava/lang/String;Z)Ls4/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(LC4/q;LC4/f;I)Ljava/util/Collection;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, LC4/f;->m:LC4/f;

    :cond_0
    sget-object p2, LC4/o;->a:LC4/m;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, LC4/l;->e:LC4/l;

    invoke-interface {p0, p1, p2}, LC4/q;->e(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final x(LL3/b;)Ljava/lang/Class;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LF3/d;

    invoke-interface {p0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {p0, v0}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final y(LL3/b;)Ljava/lang/Class;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LF3/d;

    invoke-interface {p0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-class p0, Ljava/lang/Short;

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Void;

    goto :goto_0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const-class p0, Ljava/lang/Double;

    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final z(LL3/b;)Ljava/lang/Class;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LF3/d;

    invoke-interface {p0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "java.lang.Double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "java.lang.Void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_2
    const-string v0, "java.lang.Long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_3
    const-string v0, "java.lang.Byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_4
    const-string v0, "java.lang.Boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_5
    const-string v0, "java.lang.Character"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_6
    const-string v0, "java.lang.Short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_7
    const-string v0, "java.lang.Float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_8
    const-string v0, "java.lang.Integer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_9
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_8
        -0x1f76ce78 -> :sswitch_7
        -0x1ec16c58 -> :sswitch_6
        0x9415455 -> :sswitch_5
        0x148d6054 -> :sswitch_4
        0x17c0bc5c -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x17c9ace8 -> :sswitch_1
        0x2d605225 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public abstract I()Landroid/os/Bundle;
.end method
