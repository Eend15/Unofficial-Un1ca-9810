.class public final Lq2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp2/d;

.field public b:I


# direct methods
.method public constructor <init>(Lp2/d;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/a;->a:Lp2/d;

    return-void
.end method


# virtual methods
.method public final a(Z)Landroidx/recyclerview/widget/y;
    .locals 2

    iget v0, p0, Lq2/a;->b:I

    iget-object p0, p0, Lq2/a;->a:Lp2/d;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lp2/d;->c(I)Lp2/c;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lp2/c;->d:Landroidx/recyclerview/widget/y;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lp2/d;->c(I)Lp2/c;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lp2/c;->b:Landroidx/recyclerview/widget/y;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final b(Lv2/b;)V
    .locals 14

    iget v5, p0, Lq2/a;->b:I

    iget-object v2, p0, Lq2/a;->a:Lp2/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Unable to load wallpaper: "

    const-string v0, "Cannot update wallpaper. asset: "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateWallpaper, which: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "WeatherEffectsRepository"

    invoke-static {v7, v1, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v2, v5, v1}, Lp2/d;->b(IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v5, v1}, Lp2/d;->a(IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v8, LF3/s;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v5, v1}, Lp2/d;->d(IZ)Lkotlinx/coroutines/flow/i;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv2/a;

    if-eqz v9, :cond_0

    iget-object v9, v9, Lv2/a;->c:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iput-object v9, v8, LF3/s;->d:Ljava/lang/Object;

    new-instance v9, LF3/q;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, LF3/q;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iget-object v11, p1, Lv2/b;->a:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v12, v2, Lp2/d;->d:Lh2/b;

    if-eqz v11, :cond_1

    :try_start_1
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-boolean v1, v9, LF3/q;->d:Z

    :goto_1
    move-object v11, v4

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_7

    :cond_1
    const-string v11, "model.foregroundPfd is null"

    invoke-virtual {v12, v7, v11}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    iget-object v4, p1, Lv2/b;->b:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-boolean v1, v10, LF3/q;->d:Z

    :goto_3
    move-object v12, v6

    goto :goto_4

    :cond_2
    const-string v1, "model.backgroundPfd is null"

    invoke-virtual {v12, v7, v1}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    if-eqz v11, :cond_5

    if-nez v12, :cond_3

    goto :goto_5

    :cond_3
    iget-object v0, p1, Lv2/b;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    iput-object v0, v8, LF3/s;->d:Ljava/lang/Object;

    :cond_4
    new-instance v13, Lp2/b;

    move-object v0, v13

    move-object v1, v9

    move-object v3, p1

    move-object v4, v10

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lp2/b;-><init>(LF3/q;Lp2/d;Lv2/b;LF3/q;ILF3/s;)V

    invoke-virtual {v13, v11, v12}, Lp2/b;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_5
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v7, p1, v0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :goto_6
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :goto_7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    return-void
.end method
