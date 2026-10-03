.class public abstract LK1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Z


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/content/Context;

.field public c:Lcom/samsung/android/wallpaper/live/sdk/service/b;

.field public d:LH1/a;

.field public e:Z

.field public final f:LM1/d;

.field public final g:LA1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LM1/g;->c()Z

    move-result v0

    sput-boolean v0, LK1/d;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LH1/a;->d:LH1/a;

    iput-object v0, p0, LK1/d;->d:LH1/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, LK1/d;->e:Z

    new-instance v0, LA1/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LA1/i;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LK1/d;->g:LA1/i;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LK1/d;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LK1/d;->a:Landroid/os/Handler;

    new-instance v0, LM1/d;

    invoke-direct {v0, p1}, LM1/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK1/d;->f:LM1/d;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, LK1/d;->c:Lcom/samsung/android/wallpaper/live/sdk/service/b;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/b;->a:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract b()LH1/a;
.end method

.method public final c()Z
    .locals 4

    invoke-virtual {p0}, LK1/d;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget-boolean p0, p0, LK1/d;->e:Z

    if-ne v0, p0, :cond_3

    move v3, v1

    :cond_3
    xor-int/lit8 p0, v3, 0x1

    return p0
.end method

.method public final declared-synchronized d(LH1/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK1/d;->d:LH1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, LK1/d;->c:Lcom/samsung/android/wallpaper/live/sdk/service/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/service/b;->a(LH1/a;LH1/a;)V

    :cond_1
    iput-object p1, p0, LK1/d;->d:LH1/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public abstract e(ILjava/lang/String;)V
.end method

.method public f(Lcom/samsung/android/wallpaper/live/sdk/service/b;)V
    .locals 0

    iput-object p1, p0, LK1/d;->c:Lcom/samsung/android/wallpaper/live/sdk/service/b;

    iget-object p1, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p1}, LM1/i;->c(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, LK1/d;->e:Z

    invoke-virtual {p0}, LK1/d;->b()LH1/a;

    move-result-object p1

    iput-object p1, p0, LK1/d;->d:LH1/a;

    iget-object p1, p0, LK1/d;->g:LA1/i;

    iget-object p0, p0, LK1/d;->f:LM1/d;

    invoke-virtual {p0, p1}, LM1/d;->c(LM1/c;)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LK1/d;->c:Lcom/samsung/android/wallpaper/live/sdk/service/b;

    sget-object v0, LH1/a;->d:LH1/a;

    iput-object v0, p0, LK1/d;->d:LH1/a;

    iget-object v0, p0, LK1/d;->g:LA1/i;

    iget-object p0, p0, LK1/d;->f:LM1/d;

    invoke-virtual {p0, v0}, LM1/d;->d(LM1/c;)V

    return-void
.end method
