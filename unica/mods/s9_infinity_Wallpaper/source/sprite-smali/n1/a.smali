.class public final Ln1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ln1/a;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LA1/e;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ln1/a;->a:Ljava/lang/Object;

    .line 46
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Ln1/a;->b:Ljava/lang/Object;

    .line 47
    new-instance p1, LO/a;

    invoke-direct {p1, p0}, LO/a;-><init>(Ln1/a;)V

    iput-object p1, p0, Ln1/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La2/q;)V
    .locals 1

    const-string v0, "wallpaperData"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/a;->a:Ljava/lang/Object;

    .line 4
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Ln1/a;->b:Ljava/lang/Object;

    .line 5
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FrameAnimation"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ln1/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/a;->a:Ljava/lang/Object;

    .line 2
    new-instance p1, La2/q;

    invoke-direct {p1}, La2/q;-><init>()V

    iput-object p1, p0, Ln1/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ln1/a;->a:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Ln1/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/V;Landroidx/lifecycle/U;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, LV/a;->b:LV/a;

    .line 14
    invoke-direct {p0, p1, p2, v0}, Ln1/a;-><init>(Landroidx/lifecycle/V;Landroidx/lifecycle/U;LV/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/V;Landroidx/lifecycle/U;LV/b;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Ln1/a;->a:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Ln1/a;->b:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, Ln1/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw0/i;Ls0/b;)V
    .locals 8

    const-string v0, "trackers"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v1, Lt0/a;

    .line 19
    iget-object v0, p1, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Lu0/e;

    const-string v2, "tracker"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 20
    invoke-direct {v1, v0, v3}, Lt0/a;-><init>(Lu0/e;I)V

    .line 21
    new-instance v0, Lt0/a;

    .line 22
    iget-object v3, p1, Lw0/i;->f:Ljava/lang/Object;

    check-cast v3, Lu0/a;

    invoke-static {v3, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 23
    invoke-direct {v0, v3, v4}, Lt0/a;-><init>(Lu0/e;I)V

    .line 24
    new-instance v3, Lt0/a;

    .line 25
    iget-object v4, p1, Lw0/i;->h:Ljava/lang/Object;

    check-cast v4, Lu0/e;

    invoke-static {v4, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    .line 26
    invoke-direct {v3, v4, v5}, Lt0/a;-><init>(Lu0/e;I)V

    .line 27
    new-instance v4, Lt0/a;

    .line 28
    iget-object p1, p1, Lw0/i;->g:Ljava/lang/Object;

    check-cast p1, Lu0/e;

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 29
    invoke-direct {v4, p1, v5}, Lt0/a;-><init>(Lu0/e;I)V

    .line 30
    new-instance v5, Lt0/a;

    .line 31
    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 32
    invoke-direct {v5, p1, v6}, Lt0/a;-><init>(Lu0/e;I)V

    .line 33
    new-instance v6, Lt0/d;

    .line 34
    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {v6, p1}, Lt0/b;-><init>(Lu0/e;)V

    .line 36
    new-instance v7, Lt0/c;

    .line 37
    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {v7, p1}, Lt0/b;-><init>(Lu0/e;)V

    move-object v2, v0

    .line 39
    filled-new-array/range {v1 .. v7}, [Lt0/b;

    move-result-object p1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Ln1/a;->a:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Ln1/a;->b:Ljava/lang/Object;

    .line 43
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized n(Landroid/content/Context;)Ln1/a;
    .locals 4

    const-class v0, Ln1/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ln1/a;->d:Ln1/a;

    if-nez v1, :cond_0

    new-instance v1, Ln1/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LA1/n;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, LA1/n;-><init>(ILjava/lang/Object;)V

    iput-object v2, v1, Ln1/a;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    iput-object p0, v1, Ln1/a;->a:Ljava/lang/Object;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v1, Ln1/a;->b:Ljava/lang/Object;

    sput-object v1, Ln1/a;->d:Ln1/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ln1/a;->d:Ln1/a;
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

.method public static t(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ln1/a;
    .locals 2

    new-instance v0, Ln1/a;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ln1/a;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public A(ILn1/b;)V
    .locals 4

    const-string v0, "unregisterSensorListener : SensorListener is NOT registered = "

    iget-object v1, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v2, p0, Ln1/a;->c:Ljava/lang/Object;

    check-cast v2, LA1/n;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p0, "SensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(La2/f;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    iget-object v0, p1, La2/f;->o:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, "iterator(...)"

    invoke-static {p2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La2/h;

    iget-object v1, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast v1, La2/q;

    iget-object v1, v1, La2/q;->l:Landroid/util/ArrayMap;

    iget-object v2, v0, La2/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/d;

    if-eqz v1, :cond_0

    iget-object v0, v0, La2/h;->b:Ljava/lang/String;

    new-instance v2, LT1/a;

    invoke-direct {v2, p0, p1, p3, v1}, LT1/a;-><init>(Ln1/a;La2/f;Landroid/view/View;La2/d;)V

    iget-object v1, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln1/a;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, [Lt0/b;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lt0/b;->d:Ljava/lang/Object;

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Lt0/b;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lt0/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p0

    sget-object v1, Ls0/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Work "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " constrained by "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-nez v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, La2/q;

    invoke-virtual {v0}, La2/q;->a()V

    iget-object p0, p0, Ln1/a;->c:Ljava/lang/Object;

    check-cast p0, LS2/b;

    if-eqz p0, :cond_0

    iget-object v0, p0, LS2/b;->c:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, LS2/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    iget-object p0, p0, LS2/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->clear()V

    :cond_0
    return-void
.end method

.method public d(La2/f;Landroid/view/View;)V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, p1, v0, p2}, Ln1/a;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "collision"

    invoke-virtual {p0, p1, v0, p2}, Ln1/a;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "aod"

    invoke-virtual {p0, p1, v0, p2}, Ln1/a;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "aod_transition_started"

    invoke-virtual {p0, p1, v0, p2}, Ln1/a;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "screen_turnning_on"

    invoke-virtual {p0, p1, v0, p2}, Ln1/a;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "screen_turnning_off"

    invoke-virtual {p0, p1, v0, p2}, Ln1/a;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "weather_enabled"

    invoke-virtual {p0, p1, v0, p2}, Ln1/a;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "weather_night_enabled"

    invoke-virtual {p0, p1, v0, p2}, Ln1/a;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/b;Ljava/util/SequencedCollection;)Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "c"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p2 .. p2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU3/b;

    instance-of v4, v3, Lf4/a;

    if-nez v4, :cond_0

    goto/16 :goto_22

    :cond_0
    move-object v4, v3

    check-cast v4, Lf4/a;

    invoke-interface {v4}, LU3/b;->f0()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    invoke-interface {v4}, LU3/b;->a()LU3/b;

    move-result-object v5

    invoke-interface {v5}, LU3/b;->m()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v7, :cond_1

    goto/16 :goto_22

    :cond_1
    invoke-static {v3}, LR3/f;->L(LU3/j;)LU3/g;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    move-object v5, v3

    check-cast v5, LD4/a;

    invoke-virtual {v5}, LD4/a;->p()LV3/h;

    move-result-object v5

    goto :goto_5

    :cond_2
    instance-of v8, v5, Lh4/h;

    if-eqz v8, :cond_3

    check-cast v5, Lh4/h;

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_2

    :cond_4
    iget-object v5, v5, Lh4/h;->n:Lq3/j;

    invoke-virtual {v5}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    :goto_2
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v5}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La4/c;

    new-instance v10, Lh4/f;

    invoke-direct {v10, v9, v0, v7}, Lh4/f;-><init>(La4/c;Landroidx/recyclerview/widget/b;Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v5, v3

    check-cast v5, LD4/a;

    invoke-virtual {v5}, LD4/a;->p()LV3/h;

    move-result-object v5

    invoke-static {v5, v8}, Lr3/j;->E0(LV3/h;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v5, LV3/g;->a:LV3/f;

    goto :goto_5

    :cond_7
    new-instance v8, LV3/i;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v5}, LV3/i;-><init>(ILjava/util/List;)V

    move-object v5, v8

    goto :goto_5

    :cond_8
    :goto_4
    move-object v5, v3

    check-cast v5, LD4/a;

    invoke-virtual {v5}, LD4/a;->p()LV3/h;

    move-result-object v5

    :goto_5
    invoke-static {v0, v5}, Le0/a;->x(Landroidx/recyclerview/widget/b;LV3/h;)Landroidx/recyclerview/widget/b;

    move-result-object v12

    instance-of v5, v3, Lf4/g;

    if-eqz v5, :cond_a

    move-object v5, v3

    check-cast v5, Lf4/g;

    iget-object v5, v5, LX3/L;->x:LX3/M;

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    iget-boolean v8, v5, LX3/J;->h:Z

    if-nez v8, :cond_a

    move-object v10, v5

    goto :goto_7

    :cond_a
    :goto_6
    move-object v10, v3

    :goto_7
    invoke-interface {v4}, LU3/a;->Y()LU3/J;

    move-result-object v5

    sget-object v8, Ld4/a;->f:Ld4/a;

    if-eqz v5, :cond_e

    instance-of v5, v10, LU3/s;

    if-nez v5, :cond_b

    move-object v5, v6

    goto :goto_8

    :cond_b
    move-object v5, v10

    :goto_8
    check-cast v5, LU3/s;

    if-nez v5, :cond_c

    move-object v15, v6

    goto :goto_9

    :cond_c
    invoke-interface {v5}, LU3/a;->x0()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX3/W;

    move-object v15, v5

    :goto_9
    sget-object v19, Lk4/o;->f:Lk4/o;

    move-object v14, v3

    check-cast v14, Lf4/a;

    if-nez v15, :cond_d

    move-object/from16 v17, v12

    goto :goto_a

    :cond_d
    move-object v5, v15

    check-cast v5, LD4/a;

    invoke-virtual {v5}, LD4/a;->p()LV3/h;

    move-result-object v5

    invoke-static {v12, v5}, Le0/a;->x(Landroidx/recyclerview/widget/b;LV3/h;)Landroidx/recyclerview/widget/b;

    move-result-object v5

    move-object/from16 v17, v5

    :goto_a
    const/16 v16, 0x0

    move-object/from16 v13, p0

    move-object/from16 v18, v8

    invoke-virtual/range {v13 .. v19}, Ln1/a;->v(Lf4/a;LU3/a;ZLandroidx/recyclerview/widget/b;Ld4/a;LE3/b;)Lk4/q;

    move-result-object v5

    invoke-virtual {v5, v6}, Lk4/q;->c(Lk4/t;)Lk4/m;

    move-result-object v5

    goto :goto_b

    :cond_e
    move-object v5, v6

    :goto_b
    instance-of v9, v3, Lf4/f;

    if-eqz v9, :cond_f

    move-object v9, v3

    check-cast v9, Lf4/f;

    goto :goto_c

    :cond_f
    move-object v9, v6

    :goto_c
    if-nez v9, :cond_10

    :goto_d
    move-object v11, v6

    goto :goto_e

    :cond_10
    invoke-virtual {v9}, LX3/q;->g()LU3/j;

    move-result-object v11

    check-cast v11, LU3/e;

    const/4 v13, 0x3

    invoke-static {v9, v13}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lj0/s;->J(LU3/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_11

    goto :goto_d

    :cond_11
    sget-object v11, Lk4/k;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk4/l;

    move-object v11, v9

    :goto_e
    if-nez v11, :cond_12

    goto :goto_f

    :cond_12
    iget-object v9, v11, Lk4/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    invoke-interface {v4}, LU3/a;->n0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    :goto_f
    invoke-interface {v10}, LU3/a;->n0()Ljava/util/List;

    move-result-object v9

    const-string v13, "annotationOwnerForMember.valueParameters"

    invoke-static {v9, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v9}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v13

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, LX3/W;

    new-instance v13, LF4/a;

    const/16 v6, 0x14

    invoke-direct {v13, v6, v14}, LF4/a;-><init>(ILjava/lang/Object;)V

    move-object v6, v3

    check-cast v6, Lf4/a;

    if-nez v14, :cond_13

    move-object/from16 v17, v12

    goto :goto_11

    :cond_13
    move-object/from16 v16, v14

    check-cast v16, LD4/a;

    invoke-virtual/range {v16 .. v16}, LD4/a;->p()LV3/h;

    move-result-object v7

    invoke-static {v12, v7}, Le0/a;->x(Landroidx/recyclerview/widget/b;LV3/h;)Landroidx/recyclerview/widget/b;

    move-result-object v7

    move-object/from16 v17, v7

    :goto_11
    const/16 v16, 0x0

    move-object v7, v13

    move-object/from16 v13, p0

    move-object/from16 v20, v14

    move-object v14, v6

    move-object v6, v15

    move-object/from16 v15, v20

    move-object/from16 v18, v8

    move-object/from16 v19, v7

    invoke-virtual/range {v13 .. v19}, Ln1/a;->v(Lf4/a;LU3/a;ZLandroidx/recyclerview/widget/b;Ld4/a;LE3/b;)Lk4/q;

    move-result-object v7

    if-nez v11, :cond_14

    const/4 v13, 0x0

    goto :goto_12

    :cond_14
    iget-object v13, v11, Lk4/l;->b:Ljava/util/ArrayList;

    move-object/from16 v14, v20

    iget v14, v14, LX3/W;->i:I

    invoke-static {v14, v13}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lk4/t;

    :goto_12
    invoke-virtual {v7, v13}, Lk4/q;->c(Lk4/t;)Lk4/m;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_10

    :cond_15
    move-object v6, v15

    instance-of v7, v3, LX3/L;

    if-nez v7, :cond_16

    const/4 v7, 0x0

    goto :goto_13

    :cond_16
    move-object v7, v3

    :goto_13
    check-cast v7, LX3/L;

    if-nez v7, :cond_17

    goto :goto_15

    :cond_17
    invoke-static {v7}, Le0/a;->S(LX3/L;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_18

    sget-object v7, Ld4/a;->g:Ld4/a;

    :goto_14
    move-object v13, v7

    goto :goto_16

    :cond_18
    :goto_15
    sget-object v7, Ld4/a;->e:Ld4/a;

    goto :goto_14

    :goto_16
    sget-object v14, Lk4/o;->g:Lk4/o;

    const/4 v7, 0x1

    move-object v9, v3

    check-cast v9, Lf4/a;

    move-object/from16 v8, p0

    move-object v15, v11

    move v11, v7

    invoke-virtual/range {v8 .. v14}, Ln1/a;->v(Lf4/a;LU3/a;ZLandroidx/recyclerview/widget/b;Ld4/a;LE3/b;)Lk4/q;

    move-result-object v7

    if-nez v15, :cond_19

    const/4 v8, 0x0

    goto :goto_17

    :cond_19
    iget-object v8, v15, Lk4/l;->a:Lk4/t;

    :goto_17
    invoke-virtual {v7, v8}, Lk4/q;->c(Lk4/t;)Lk4/m;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v5, :cond_1a

    goto :goto_18

    :cond_1a
    iget-boolean v9, v5, Lk4/m;->c:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    goto :goto_1a

    :cond_1b
    :goto_18
    iget-boolean v9, v7, Lk4/m;->c:Z

    if-nez v9, :cond_1f

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1c

    goto :goto_19

    :cond_1c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk4/m;

    iget-boolean v10, v10, Lk4/m;->c:Z

    if-eqz v10, :cond_1d

    goto :goto_1a

    :cond_1e
    :goto_19
    move v9, v8

    goto :goto_1b

    :cond_1f
    :goto_1a
    const/4 v9, 0x1

    :goto_1b
    if-nez v5, :cond_20

    goto :goto_1c

    :cond_20
    iget-boolean v10, v5, Lk4/m;->b:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_21

    goto :goto_1e

    :cond_21
    :goto_1c
    iget-boolean v10, v7, Lk4/m;->b:Z

    if-nez v10, :cond_25

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_22

    goto :goto_1d

    :cond_22
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_23
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lk4/m;

    iget-boolean v11, v11, Lk4/m;->b:Z

    if-eqz v11, :cond_23

    goto :goto_1e

    :cond_24
    :goto_1d
    if-eqz v9, :cond_29

    :cond_25
    :goto_1e
    if-eqz v9, :cond_26

    sget-object v3, Ly4/a;->a:Lf4/e;

    new-instance v9, Ld4/m;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lq3/f;

    invoke-direct {v10, v3, v9}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_26
    const/4 v10, 0x0

    :goto_1f
    if-nez v5, :cond_27

    const/4 v3, 0x0

    goto :goto_20

    :cond_27
    iget-object v3, v5, Lk4/m;->a:LJ4/C;

    :goto_20
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v6}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk4/m;

    new-instance v11, Lf4/i;

    iget-object v9, v9, Lk4/m;->a:LJ4/C;

    invoke-direct {v11, v9, v8}, Lf4/i;-><init>(LJ4/C;Z)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_28
    iget-object v6, v7, Lk4/m;->a:LJ4/C;

    invoke-interface {v4, v3, v5, v6, v10}, Lf4/a;->D(LJ4/C;Ljava/util/ArrayList;LJ4/C;Lq3/f;)Lf4/a;

    move-result-object v3

    :cond_29
    :goto_22
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2a
    return-object v1
.end method

.method public f(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/o;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(LV3/b;Z)Lk4/i;
    .locals 3

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ln1/a;->h(LV3/b;Z)Lk4/i;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast v0, Ld4/d;

    invoke-virtual {v0, p1}, Ld4/d;->d(LV3/b;)LV3/b;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0, p1}, Ld4/d;->b(LV3/b;)Ld4/B;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ld4/B;->d:Ld4/B;

    if-ne p1, v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0, v1, p2}, Ln1/a;->h(LV3/b;Z)Lk4/i;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Ld4/B;->e:Ld4/B;

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lk4/i;->a(Lk4/i;Z)Lk4/i;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_4
    return-object v0
.end method

.method public h(LV3/b;Z)Lk4/i;
    .locals 5

    invoke-interface {p1}, LV3/b;->a()Ls4/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, p1, Lh4/f;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lh4/f;

    iget-boolean v2, v2, Lh4/f;->g:Z

    if-nez v2, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    move p2, v4

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_0
    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, Ld4/t;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ld4/s;->l:Ld4/s;

    invoke-virtual {p0, v0}, Ld4/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld4/B;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ld4/B;->d:Ld4/B;

    if-ne p0, v2, :cond_4

    :cond_3
    :goto_1
    move-object p0, v1

    goto/16 :goto_5

    :cond_4
    sget-object v2, Ld4/B;->e:Ld4/B;

    if-ne p0, v2, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    :goto_2
    move v3, v4

    :cond_6
    sget-object p0, Ld4/y;->d:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    sget-object p2, Lk4/h;->d:Lk4/h;

    if-eqz p0, :cond_7

    new-instance p0, Lk4/i;

    invoke-direct {p0, p2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto/16 :goto_5

    :cond_7
    sget-object p0, Ld4/y;->g:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    sget-object v2, Lk4/h;->e:Lk4/h;

    if-eqz p0, :cond_8

    new-instance p0, Lk4/i;

    invoke-direct {p0, v2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto/16 :goto_5

    :cond_8
    sget-object p0, Ld4/y;->a:Ls4/c;

    invoke-virtual {v0, p0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lk4/i;

    invoke-direct {p0, p2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto/16 :goto_5

    :cond_9
    sget-object p0, Ld4/y;->b:Ls4/c;

    invoke-virtual {v0, p0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    sget-object v4, Lk4/h;->f:Lk4/h;

    if-eqz p0, :cond_a

    new-instance p0, Lk4/i;

    invoke-direct {p0, v4, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto/16 :goto_5

    :cond_a
    sget-object p0, Ld4/y;->e:Ls4/c;

    invoke-virtual {v0, p0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget p0, Lz4/e;->a:I

    invoke-interface {p1}, LV3/b;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->u0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx4/g;

    instance-of v0, p0, Lx4/h;

    if-eqz v0, :cond_b

    check-cast p0, Lx4/h;

    goto :goto_3

    :cond_b
    move-object p0, v1

    :goto_3
    if-nez p0, :cond_c

    new-instance p0, Lk4/i;

    invoke-direct {p0, v2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto/16 :goto_5

    :cond_c
    iget-object p0, p0, Lx4/h;->c:Ls4/f;

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string p2, "ALWAYS"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_4

    :cond_d
    new-instance p0, Lk4/i;

    invoke-direct {p0, v2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto :goto_5

    :sswitch_1
    const-string p2, "UNKNOWN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_4

    :cond_e
    new-instance p0, Lk4/i;

    invoke-direct {p0, v4, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto :goto_5

    :sswitch_2
    const-string v0, "NEVER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_4

    :sswitch_3
    const-string v0, "MAYBE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    :goto_4
    goto/16 :goto_1

    :cond_f
    new-instance p0, Lk4/i;

    invoke-direct {p0, p2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto :goto_5

    :cond_10
    sget-object p0, Ld4/y;->h:Ls4/c;

    invoke-virtual {v0, p0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    new-instance p0, Lk4/i;

    invoke-direct {p0, p2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto :goto_5

    :cond_11
    sget-object p0, Ld4/y;->i:Ls4/c;

    invoke-virtual {v0, p0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    new-instance p0, Lk4/i;

    invoke-direct {p0, v2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto :goto_5

    :cond_12
    sget-object p0, Ld4/y;->k:Ls4/c;

    invoke-virtual {v0, p0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Lk4/i;

    invoke-direct {p0, v2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto :goto_5

    :cond_13
    sget-object p0, Ld4/y;->j:Ls4/c;

    invoke-virtual {v0, p0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lk4/i;

    invoke-direct {p0, p2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    :goto_5
    if-nez p0, :cond_14

    return-object v1

    :cond_14
    iget-boolean p2, p0, Lk4/i;->b:Z

    if-nez p2, :cond_15

    instance-of p2, p1, Lf4/h;

    if-eqz p2, :cond_15

    check-cast p1, Lf4/h;

    :cond_15
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x45bf448 -> :sswitch_3
        0x46bd26c -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x7342860f -> :sswitch_0
    .end sparse-switch
.end method

.method public i(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Q;
    .locals 4

    const-string v0, "key"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/V;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/lifecycle/V;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Q;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/U;

    if-eqz v2, :cond_2

    instance-of p0, v3, Landroidx/lifecycle/N;

    if-eqz p0, :cond_0

    check-cast v3, Landroidx/lifecycle/N;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object p0, v3, Landroidx/lifecycle/N;->g:Landroidx/lifecycle/o;

    if-eqz p0, :cond_1

    iget-object p1, v3, Landroidx/lifecycle/N;->h:Ld0/e;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v1, p1, p0}, Landroidx/lifecycle/K;->a(Landroidx/lifecycle/Q;Ld0/e;Landroidx/lifecycle/o;)V

    :cond_1
    const-string p0, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-static {v1, p0}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v1, LV/c;

    iget-object p0, p0, Ln1/a;->c:Ljava/lang/Object;

    check-cast p0, LV/b;

    invoke-direct {v1, p0}, LV/c;-><init>(LV/b;)V

    sget-object p0, Landroidx/lifecycle/S;->e:Landroidx/lifecycle/S;

    iget-object v2, v1, LV/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v3, p1, v1}, Landroidx/lifecycle/U;->p(Ljava/lang/Class;LV/c;)Landroidx/lifecycle/Q;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-interface {v3, p1}, Landroidx/lifecycle/U;->c(Ljava/lang/Class;)Landroidx/lifecycle/Q;

    move-result-object p0

    :goto_1
    const-string p1, "viewModel"

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/Q;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/lifecycle/Q;->b()V

    :cond_3
    return-object p0
.end method

.method public j(I)Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, v1}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public k(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, v1}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public l(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/v;->a()Landroidx/appcompat/widget/v;

    move-result-object v0

    iget-object p0, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroidx/appcompat/widget/C0;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Landroidx/appcompat/widget/C0;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public m(IILandroidx/appcompat/widget/Q;)Landroid/graphics/Typeface;
    .locals 9

    iget-object v0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 p1, 0x0

    if-nez v3, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Ln1/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Ln1/a;->c:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Ln1/a;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/TypedValue;

    sget-object v0, LB/l;->a:Ljava/lang/ThreadLocal;

    iget-object p0, p0, Ln1/a;->a:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    const/4 v7, 0x1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, LB/l;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILB/c;ZZ)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public o(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, La2/q;

    iget-object v0, v0, La2/q;->o:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La2/f;

    iget-object p1, p1, La2/f;->o:Landroid/util/ArrayMap;

    const-string v1, "default"

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La2/h;

    if-eqz p1, :cond_0

    iget-object p1, p1, La2/h;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, La2/q;

    iget-object p0, p0, La2/q;->l:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La2/d;

    if-eqz p0, :cond_1

    iget-object v1, p0, La2/d;->e:Ljava/util/ArrayList;

    :cond_1
    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La2/b;

    iget-object p0, p0, La2/b;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public p()LS2/b;
    .locals 0

    iget-object p0, p0, Ln1/a;->c:Ljava/lang/Object;

    check-cast p0, LS2/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "resourceManager"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public q()La2/q;
    .locals 0

    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, La2/q;

    return-object p0
.end method

.method public r(I)La2/q;
    .locals 5

    iget-object v0, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "module_clock_layout"

    const-string v4, "vertical"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "horizontal"

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadData: which = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , isLand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "DataManager"

    invoke-static {v4, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ln1/a;->u(Ljava/lang/String;Z)V

    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, La2/q;

    return-object p0
.end method

.method public s(Landroid/os/Bundle;)La2/q;
    .locals 8

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "resources"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "module_clock_layout"

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const-string v4, "loadPreviewData : "

    invoke-static {v4, v3}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "DataManager"

    invoke-static {v7, v4, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "horizontal"

    invoke-static {v3, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "loadPreviewData"

    invoke-static {v7, v6, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    const-string v2, "manifest"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-eqz p1, :cond_3

    const-string v2, "assetFiles"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_4

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :cond_4
    if-nez v0, :cond_5

    const-string p1, "loadPreviewData: pfd is null"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v7, p1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, La2/q;

    goto :goto_4

    :cond_5
    iget-object p1, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/preview"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc2/c;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Ln1/a;->u(Ljava/lang/String;Z)V

    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, La2/q;

    :goto_4
    return-object p0
.end method

.method public u(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lc2/c;->a:LU0/e;

    iget-object v1, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, LU0/e;->s(Landroid/content/Context;ZLjava/lang/String;)Lc2/b;

    move-result-object p2

    iget-object v0, p2, Lc2/b;->d:La2/q;

    iput-object v0, p0, Ln1/a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, La2/q;->a:Ljava/lang/String;

    iget-object p1, p2, Lc2/b;->o:LS2/b;

    if-eqz p1, :cond_0

    iput-object p1, p0, Ln1/a;->c:Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "resourceManager"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public v(Lf4/a;LU3/a;ZLandroidx/recyclerview/widget/b;Ld4/a;LE3/b;)Lk4/q;
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p6

    invoke-interface {v1, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, LJ4/C;

    invoke-interface {p1}, LU3/b;->m()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "this.overriddenDescriptors"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU3/b;

    const-string v4, "it"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ4/C;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    invoke-interface {v0}, LV3/a;->p()LV3/h;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Le0/a;->x(Landroidx/recyclerview/widget/b;LV3/h;)Landroidx/recyclerview/widget/b;

    move-result-object v9

    new-instance v0, Lk4/q;

    const/4 v12, 0x0

    const/16 v13, 0xc0

    const/4 v11, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v13}, Lk4/q;-><init>(Ln1/a;LU3/k;LJ4/C;Ljava/util/Collection;ZLandroidx/recyclerview/widget/b;Ld4/a;ZZI)V

    return-object v0
.end method

.method public w()V
    .locals 0

    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public x(ILn1/b;)V
    .locals 4

    iget-object v0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "SensorManager"

    const-string p1, "registerSensorListener : sensorType is ALREADY registered"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast p2, Landroid/hardware/SensorManager;

    iget-object p0, p0, Ln1/a;->c:Ljava/lang/Object;

    check-cast p0, LA1/n;

    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p2, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public y(Ljava/util/Collection;)V
    .locals 8

    const-string v0, "workSpecs"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln1/a;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, [Lt0/b;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget-object v6, v5, Lt0/b;->e:Ln1/a;

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    iput-object v6, v5, Lt0/b;->e:Ln1/a;

    iget-object v7, v5, Lt0/b;->d:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lt0/b;->d(Ln1/a;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object v1, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, [Lt0/b;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Lt0/b;->c(Ljava/util/Collection;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p1, [Lt0/b;

    array-length v1, p1

    :goto_2
    if-ge v3, v1, :cond_4

    aget-object v2, p1, v3

    iget-object v4, v2, Lt0/b;->e:Ln1/a;

    if-eq v4, p0, :cond_3

    iput-object p0, v2, Lt0/b;->e:Ln1/a;

    iget-object v4, v2, Lt0/b;->d:Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Lt0/b;->d(Ln1/a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public z()V
    .locals 6

    iget-object v0, p0, Ln1/a;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, [Lt0/b;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    iget-object v4, v3, Lt0/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v3, Lt0/b;->a:Lu0/e;

    invoke-virtual {v4, v3}, Lu0/e;->b(Lt0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
