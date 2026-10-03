.class public final Lj2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Li2/a;

.field public final c:Lh2/b;

.field public final d:LK2/b;

.field public final e:Landroidx/appcompat/app/A;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li2/a;Lh2/b;LK2/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pref"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpUtil"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHandlerFactory"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lj2/b;->b:Li2/a;

    iput-object p3, p0, Lj2/b;->c:Lh2/b;

    iput-object p4, p0, Lj2/b;->d:LK2/b;

    new-instance p1, Landroidx/appcompat/app/A;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Landroidx/appcompat/app/A;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lj2/b;->e:Landroidx/appcompat/app/A;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj2/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    new-instance p1, Lj2/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b(IJLjava/lang/String;Ljava/lang/String;ZZ)Lw0/c;
    .locals 6

    const-string v0, "fg from uri "

    const-string v1, "bg from uri "

    const-string v2, "Get wallpaper bitmap. which="

    monitor-enter p0

    :try_start_0
    const-string v3, "MagicianRepository"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", weatherId="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", weather="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p7}, Lj2/b;->c(IJLjava/lang/String;Ljava/lang/String;ZZ)Lw0/e;

    move-result-object p1

    iget-object p2, p1, Lw0/e;->d:Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const-string p4, "MagicianRepository"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    new-array p6, v4, [Ljava/lang/Object;

    invoke-static {p4, p5, p6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lj2/b;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p2, p3

    :goto_0
    iget-object p1, p1, Lw0/e;->e:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_1

    const-string p3, "MagicianRepository"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array p5, v4, [Ljava/lang/Object;

    invoke-static {p3, p4, p5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lj2/b;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_1
    new-instance p1, Lw0/c;

    const/4 p4, 0x6

    invoke-direct {p1, p4}, Lw0/c;-><init>(I)V

    iput-object p2, p1, Lw0/c;->e:Ljava/lang/Object;

    iput-object p3, p1, Lw0/c;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final c(IJLjava/lang/String;Ljava/lang/String;ZZ)Lw0/e;
    .locals 4

    const-string v0, "call : get_generated_image, with : "

    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "caller_package_name"

    iget-object v3, p0, Lj2/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "which"

    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "weather"

    invoke-virtual {v1, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "time"

    invoke-virtual {v1, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_outdoor"

    invoke-virtual {v1, p1, p6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "is_night"

    invoke-virtual {v1, p1, p7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "MagicianRepository"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p0, Lj2/b;->d:LK2/b;

    const-string p3, "get_generated_image"

    invoke-virtual {p2, p3}, LK2/b;->a(Ljava/lang/String;)LK2/a;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p3, p0, Lj2/b;->a:Landroid/content/Context;

    invoke-interface {p2, p3, v1, p1}, LK2/a;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p2, Lw0/e;

    const-string p3, "requested_uri"

    const-class p4, Landroid/net/Uri;

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    const-string p4, "requested_alpha_uri"

    const-class p5, Landroid/net/Uri;

    invoke-virtual {p1, p4, p5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p3, p2, Lw0/e;->d:Ljava/lang/Object;

    iput-object p1, p2, Lw0/e;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :goto_1
    monitor-exit p0

    throw p1
.end method
