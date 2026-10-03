.class public final Lo1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/A;


# static fields
.field public static e:Lo1/b;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lo1/b;->b:I

    packed-switch p1, :pswitch_data_0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lo1/b;->c:Ljava/lang/Object;

    .line 53
    new-instance p1, Lh5/e;

    .line 54
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo1/b;->d:Ljava/lang/Object;

    return-void

    .line 56
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string p1, "EEEMMMMd"

    iput-object p1, p0, Lo1/b;->c:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(LA1/e;LG4/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo1/b;->b:I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo1/b;->c:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lo1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lo1/b;->b:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lo1/b;->c:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lo1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lo1/b;->b:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo1/b;->d:Ljava/lang/Object;

    .line 6
    new-instance v0, LF4/F;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    invoke-direct {v0}, LF4/F;-><init>()V

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, LF4/F;->b:Z

    .line 9
    new-instance v1, LV0/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, LV0/b;-><init>(ILjava/lang/Object;)V

    .line 10
    new-instance v2, Landroidx/appcompat/app/A;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Landroidx/appcompat/app/A;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, LF4/F;->i:Ljava/lang/Object;

    .line 11
    iput-object p1, v0, LF4/F;->c:Ljava/lang/Object;

    .line 12
    iput-object p0, v0, LF4/F;->d:Ljava/lang/Object;

    .line 13
    new-instance v2, Lo1/d;

    .line 14
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, v2, Lo1/d;->a:Landroid/content/Context;

    .line 16
    new-instance p1, Lo1/b;

    const/4 v3, 0x7

    invoke-direct {p1, v3}, Lo1/b;-><init>(I)V

    .line 17
    new-instance v3, Lw0/c;

    invoke-direct {v3}, Lw0/c;-><init>()V

    .line 18
    new-instance v4, LQ1/i;

    .line 19
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, LQ1/i;->h:Ljava/lang/Object;

    .line 20
    iput-object p1, v4, LQ1/i;->a:Ljava/lang/Object;

    .line 21
    iput-object v3, v4, LQ1/i;->b:Ljava/lang/Object;

    .line 22
    iput-object v4, v2, Lo1/d;->c:LQ1/i;

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, v2, Lo1/d;->b:Ljava/util/Calendar;

    .line 24
    iget-object p1, v2, Lo1/d;->c:LQ1/i;

    invoke-virtual {p1}, LQ1/i;->e()V

    .line 25
    iput-object v2, v0, LF4/F;->f:Ljava/lang/Object;

    .line 26
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "TimeMonitor"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 28
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, v0, LF4/F;->e:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lo1/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lo1/b;->b:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo1/b;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lo1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    const/4 p3, 0x6

    iput p3, p0, Lo1/b;->b:I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lo1/b;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lo1/b;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo1/b;->c:Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lo1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lo1/b;->b:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/b;->c:Ljava/lang/Object;

    .line 34
    new-instance p1, LI4/l;

    const-string v0, "Java nullability annotation states"

    invoke-direct {p1, v0}, LI4/l;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, LF4/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p1

    iput-object p1, p0, Lo1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lt4/m;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lo1/b;->b:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object p1, p1, Lt4/m;->d:Lt4/j;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iget-object p1, p1, Lt4/j;->a:Lt4/C;

    invoke-virtual {p1}, Lt4/C;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ln/a;

    invoke-virtual {p1}, Ln/a;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lo1/b;->c:Ljava/lang/Object;

    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lo1/b;->d:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lo1/b;
    .locals 2

    const-class v0, Lo1/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo1/b;->e:Lo1/b;

    if-nez v1, :cond_0

    new-instance v1, Lo1/b;

    invoke-direct {v1, p0}, Lo1/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo1/b;->e:Lo1/b;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lo1/b;->e:Lo1/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lf2/f;->a:Ljava/lang/reflect/Method;

    :try_start_0
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "getBestDateTimePattern() error occurred for "

    invoke-static {v0, p0}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DateFormatUtils"

    invoke-static {v1, p0, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "EEEMMMMd"

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lo1/a;)V
    .locals 2

    iget-object v0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ1/h;

    invoke-virtual {v1, p1}, LQ1/h;->a(Lo1/a;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d(Ljava/util/Calendar;)Lo1/a;
    .locals 2

    iget-object p0, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast p0, LF4/F;

    iget-object p0, p0, LF4/F;->f:Ljava/lang/Object;

    check-cast p0, Lo1/d;

    if-eqz p0, :cond_0

    new-instance v0, LQ1/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, LQ1/i;->h:Ljava/lang/Object;

    new-instance p0, Lo1/b;

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lo1/b;-><init>(I)V

    iput-object p0, v0, LQ1/i;->a:Ljava/lang/Object;

    new-instance p0, Lw0/c;

    invoke-direct {p0}, Lw0/c;-><init>()V

    iput-object p0, v0, LQ1/i;->b:Ljava/lang/Object;

    invoke-virtual {v0}, LQ1/i;->e()V

    invoke-virtual {v0, p1}, LQ1/i;->c(Ljava/util/Calendar;)Lo1/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public e()LO2/b;
    .locals 2

    iget-object v0, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast v0, LA1/e;

    invoke-static {v0}, LB2/d;->a(LA1/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, LB2/d;->a(LA1/e;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast p0, LG4/d;

    invoke-static {p0, v0}, LB2/c;->a(LG4/d;Landroid/content/Context;)LJ2/a;

    move-result-object v0

    invoke-static {p0, v1, v0}, LB2/b;->a(LG4/d;Landroid/content/Context;LT2/a;)LO2/b;

    move-result-object p0

    return-object p0
.end method

.method public f(LQ1/h;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ1/h;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "TimeManager"

    const-string p1, "registerTimeListener : already registered"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast v1, LF4/F;

    invoke-virtual {v1}, LF4/F;->e()V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast p0, LF4/F;

    new-instance v0, LA1/h;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p1}, LA1/h;-><init>(ILjava/lang/Object;)V

    iget-boolean p1, p0, LF4/F;->b:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, LF4/F;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_4

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public g(Lo1/b;)V
    .locals 3

    iget-object v0, p1, Lo1/b;->c:Ljava/lang/Object;

    check-cast v0, Lk5/i;

    iget v1, v0, Lk5/i;->d:F

    iget-object v2, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast v2, Lk5/i;

    iput v1, v2, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, v2, Lk5/i;->e:F

    iget-object p1, p1, Lo1/b;->d:Ljava/lang/Object;

    check-cast p1, Lh5/e;

    iget-byte v0, p1, Lh5/e;->d:B

    iget-object p0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast p0, Lh5/e;

    iput-byte v0, p0, Lh5/e;->d:B

    iget-byte v0, p1, Lh5/e;->e:B

    iput-byte v0, p0, Lh5/e;->e:B

    iget-byte v0, p1, Lh5/e;->f:B

    iput-byte v0, p0, Lh5/e;->f:B

    iget-byte p1, p1, Lh5/e;->g:B

    iput-byte p1, p0, Lh5/e;->g:B

    return-void
.end method

.method public h(LQ1/h;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ1/h;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast p0, LF4/F;

    iget-object p1, p0, LF4/F;->c:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-boolean v3, p0, LF4/F;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    :try_start_1
    iget-object v1, p0, LF4/F;->i:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/A;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object v1, p0, LF4/F;->g:Ljava/lang/Object;

    check-cast v1, LE1/f;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, LF4/F;->g:Ljava/lang/Object;

    check-cast v1, LE1/f;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, LF4/F;->g:Ljava/lang/Object;

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    const-string p0, "TimeManager"

    const-string p1, "unregisterTimeListener : not existed"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public i(Ls4/f;Ljava/lang/String;)Lw0/i;
    .locals 2

    new-instance v0, Lw0/i;

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "name.asString()"

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ll4/m;

    invoke-static {p2, p1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ll4/m;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lw0/i;-><init>(Lo1/b;Ll4/m;)V

    return-object v0
.end method

.method public j(ILl5/e;)V
    .locals 7

    :goto_0
    iget-object v0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/n;

    iget v0, v0, Lt4/n;->d:I

    if-ge v0, p1, :cond_5

    iget-object v0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/n;

    iget-object v1, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lt4/j;->c:Lt4/j;

    iget-object v2, v0, Lt4/n;->e:Lt4/O;

    const/4 v3, 0x4

    const/4 v4, 0x3

    iget-boolean v5, v0, Lt4/n;->f:Z

    iget v0, v0, Lt4/n;->d:I

    if-eqz v5, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lt4/O;->h:Lt4/L;

    if-ne v2, v6, :cond_0

    check-cast v5, Lt4/b;

    invoke-virtual {p2, v0, v4}, Ll5/e;->x(II)V

    invoke-virtual {v5, p2}, Lt4/b;->f(Ll5/e;)V

    invoke-virtual {p2, v0, v3}, Ll5/e;->x(II)V

    goto :goto_1

    :cond_0
    iget v6, v2, Lt4/O;->e:I

    invoke-virtual {p2, v0, v6}, Ll5/e;->x(II)V

    invoke-static {p2, v2, v5}, Lt4/j;->k(Ll5/e;Lt4/O;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v5, Lt4/O;->h:Lt4/L;

    if-ne v2, v5, :cond_2

    check-cast v1, Lt4/b;

    invoke-virtual {p2, v0, v4}, Ll5/e;->x(II)V

    invoke-virtual {v1, p2}, Lt4/b;->f(Ll5/e;)V

    invoke-virtual {p2, v0, v3}, Ll5/e;->x(II)V

    goto :goto_2

    :cond_2
    iget v3, v2, Lt4/O;->e:I

    invoke-virtual {p2, v0, v3}, Ll5/e;->x(II)V

    invoke-static {p2, v2, v1}, Lt4/j;->k(Ll5/e;Lt4/O;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lo1/b;->d:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lo1/b;->d:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lo1/b;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[mDateFormat = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocaleFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
