.class public final Lw0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw0/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LZ3/b;Ll4/c;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lw0/m;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw0/m;->b:Ljava/lang/Object;

    iput-object p1, p0, Lw0/m;->c:Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lw0/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La2/q;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lw0/m;->a:I

    const-string v0, "wallpaperData"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/m;->b:Ljava/lang/Object;

    .line 3
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lw0/m;->c:Ljava/lang/Object;

    .line 4
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FrameAnimation"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lw0/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/C;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lw0/m;->a:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lw0/m;->b:Ljava/lang/Object;

    .line 22
    new-instance p1, Landroidx/recyclerview/widget/c;

    invoke-direct {p1}, Landroidx/recyclerview/widget/c;-><init>()V

    iput-object p1, p0, Lw0/m;->c:Ljava/lang/Object;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lw0/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lw0/m;->a:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lw0/m;->b:Ljava/lang/Object;

    .line 12
    new-instance v0, Lw0/b;

    const/4 v1, 0x4

    .line 13
    invoke-direct {v0, p1, v1}, Lw0/b;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 14
    new-instance v0, Lw0/h;

    const/4 v1, 0x2

    .line 15
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 16
    iput-object v0, p0, Lw0/m;->c:Ljava/lang/Object;

    .line 17
    new-instance v0, Lw0/h;

    const/4 v1, 0x3

    .line 18
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 19
    iput-object v0, p0, Lw0/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls/e;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lw0/m;->a:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw0/m;->b:Ljava/lang/Object;

    .line 26
    new-instance v0, Lt/b;

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lw0/m;->c:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lw0/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw0/i;LU0/e;Landroidx/emoji2/text/c;Ljava/util/Set;)V
    .locals 7

    const/4 v0, 0x4

    iput v0, p0, Lw0/m;->a:I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lw0/m;->b:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lw0/m;->c:Ljava/lang/Object;

    .line 33
    iput-object p3, p0, Lw0/m;->d:Ljava/lang/Object;

    .line 34
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 36
    new-instance v1, Ljava/lang/String;

    array-length p3, p2

    const/4 p4, 0x0

    invoke-direct {v1, p2, p4, p3}, Ljava/lang/String;-><init>([III)V

    .line 37
    new-instance v6, LU3/w;

    const/4 p2, 0x1

    invoke-direct {v6, v1, p2}, LU3/w;-><init>(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lw0/m;->r(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/m;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static f(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    if-eq v1, v2, :cond_6

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const-class v2, Landroidx/emoji2/text/u;

    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/u;

    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_2

    if-eq v5, p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v4, p1, :cond_4

    :cond_3
    if-le p1, v5, :cond_5

    if-ge p1, v4, :cond_5

    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0
.end method


# virtual methods
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

    iget-object v1, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v1, La2/q;

    iget-object v1, v1, La2/q;->l:Landroid/util/ArrayMap;

    iget-object v2, v0, La2/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/d;

    if-eqz v1, :cond_0

    iget-object v0, v0, La2/h;->b:Ljava/lang/String;

    new-instance v2, LP1/a;

    invoke-direct {v2, p0, p1, p3, v1}, LP1/a;-><init>(Lw0/m;La2/f;Landroid/view/View;La2/d;)V

    iget-object v1, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;IZ)V
    .locals 2

    iget-object v0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/C;

    iget-object v0, v0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lw0/m;->l(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/c;

    invoke-virtual {v1, p2, p3}, Landroidx/recyclerview/widget/c;->e(IZ)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lw0/m;->p(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    return-void
.end method

.method public c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    iget-object v0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/C;

    iget-object v0, v0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lw0/m;->l(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/c;

    invoke-virtual {v1, p2, p4}, Landroidx/recyclerview/widget/c;->e(IZ)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, Lw0/m;->p(Landroid/view/View;)V

    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->k()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->p()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Called attach on a child which is not detached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget p4, p0, Landroidx/recyclerview/widget/U;->j:I

    and-int/lit16 p4, p4, -0x101

    iput p4, p0, Landroidx/recyclerview/widget/U;->j:I

    :cond_4
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public d(La2/f;Landroid/view/View;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-virtual {p0, p1, v0, p2}, Lw0/m;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "collision"

    invoke-virtual {p0, p1, v0, p2}, Lw0/m;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "aod"

    invoke-virtual {p0, p1, v0, p2}, Lw0/m;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "aod_transition_started"

    invoke-virtual {p0, p1, v0, p2}, Lw0/m;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "screen_turnning_on"

    invoke-virtual {p0, p1, v0, p2}, Lw0/m;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "screen_turnning_off"

    invoke-virtual {p0, p1, v0, p2}, Lw0/m;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "weather_enabled"

    invoke-virtual {p0, p1, v0, p2}, Lw0/m;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    const-string v0, "weather_night_enabled"

    invoke-virtual {p0, p1, v0, p2}, Lw0/m;->a(La2/f;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast p0, Lw0/h;

    invoke-virtual {p0}, LF4/x;->a()Lf0/i;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-interface {v1, v2}, Le0/d;->E(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, p1}, Le0/d;->q(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v1}, Lf0/i;->a()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    throw p1
.end method

.method public g(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lw0/m;->l(I)I

    move-result p1

    iget-object v0, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/c;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/c;->f(I)Z

    iget-object p0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/C;

    iget-object p0, p0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/U;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called detach on an already detached child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/U;->a(I)V

    :cond_2
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public h(Ljava/lang/String;La2/f;)V
    .locals 7

    const-string v0, "trigger"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, La2/f;->o:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "iterator(...)"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "next(...)"

    invoke-static {p2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, La2/h;

    iget-object p2, p2, La2/h;->b:Ljava/lang/String;

    iget-object v0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v0, Ln1/a;

    iget-object v0, v0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, La2/q;

    iget-object v0, v0, La2/q;->l:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, La2/d;->a:La2/c;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v2, Ln1/a;

    if-eqz v2, :cond_2

    iget-object v2, v2, Ln1/a;->b:Ljava/lang/Object;

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LT1/a;

    goto :goto_2

    :cond_2
    move-object p2, v1

    :goto_2
    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    sget-object v2, LT1/b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_3
    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_0

    iget-object v0, p2, LT1/a;->h:Ln1/a;

    iget-object v0, v0, Ln1/a;->a:Ljava/lang/Object;

    check-cast v0, La2/q;

    iget-boolean v2, v0, La2/q;->h:Z

    iget-object v3, p2, LT1/a;->a:La2/f;

    if-eqz v2, :cond_5

    iget-boolean v2, v3, La2/f;->E:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    new-instance v2, LP1/c;

    iget-object v4, p2, LT1/a;->c:La2/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget v5, v3, La2/f;->c:I

    int-to-float v5, v5

    iget-object v0, v0, La2/q;->t:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    iput v5, v2, LP1/c;->a:F

    iget v5, v3, La2/f;->d:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v0

    iput v5, v2, LP1/c;->b:F

    iget v0, v3, La2/f;->u:F

    iput v0, v2, LP1/c;->c:F

    iget v0, v4, La2/d;->c:I

    int-to-long v3, v0

    iput-wide v3, v2, LP1/c;->d:J

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v2, LP1/c;->e:Landroid/view/animation/DecelerateInterpolator;

    iput-object v2, p2, LT1/a;->g:LP1/c;

    iget-object v0, p2, LT1/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p2, LT1/a;->g:LP1/c;

    const-string v3, "valueAnimatorData"

    if-eqz v2, :cond_a

    iget v2, v2, LP1/c;->a:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p2, LT1/a;->g:LP1/c;

    if-eqz v2, :cond_9

    iget v2, v2, LP1/c;->b:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p2, LT1/a;->g:LP1/c;

    if-eqz v2, :cond_8

    iget v2, v2, LP1/c;->c:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p2, LT1/a;->g:LP1/c;

    if-eqz v2, :cond_7

    iget-object v2, v2, LP1/c;->e:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p2, LT1/a;->g:LP1/c;

    if-eqz v2, :cond_6

    iget-wide v1, v2, LP1/c;->d:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-string v0, "<set-?>"

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p2, LT1/a;->f:Landroid/view/ViewPropertyAnimator;

    :goto_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_6
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-eqz p2, :cond_0

    invoke-virtual {p2}, LT1/a;->a()LP1/b;

    move-result-object v0

    iget-boolean v0, v0, LP1/b;->g:Z

    if-eqz v0, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, LT1/a;->a()LP1/b;

    move-result-object v0

    iput-boolean v2, v0, LP1/b;->g:Z

    iget-object v0, p2, LT1/a;->d:La2/d;

    const/4 v1, 0x0

    iput v1, v0, La2/d;->f:I

    iget-object v0, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v0, Ln1/a;

    if-eqz v0, :cond_d

    iget-object v0, v0, Ln1/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, LT1/a;->a()LP1/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v0, Ln1/a;

    if-eqz v0, :cond_d

    iget-object v0, v0, Ln1/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, LT1/a;->a()LP1/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    iget-object v0, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v0, Ln1/a;

    if-eqz v0, :cond_e

    iget-object v0, v0, Ln1/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_e

    invoke-virtual {p2}, LT1/a;->a()LP1/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    invoke-virtual {p2}, LT1/a;->a()LP1/b;

    move-result-object p2

    iget-object p2, p2, LP1/b;->f:La2/d;

    iget-object p2, p2, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La2/b;

    iget-object p2, p2, La2/b;->a:Ljava/lang/String;

    const-string v0, "startAnimation : "

    invoke-static {v0, p2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AnimationController"

    invoke-static {v1, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public i()V
    .locals 5

    iget-object v0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v0, Ln1/a;

    iget-object v0, v0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, La2/q;

    iget-object v0, v0, La2/q;->j:Landroid/util/ArrayMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "iterator(...)"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, La2/f;

    iget-object v3, p0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumMap;

    iget-object v4, v2, La2/f;->b:La2/i;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lw0/m;->h(Ljava/lang/String;La2/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lw0/m;->l(I)I

    move-result p1

    iget-object p0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/C;

    iget-object p0, p0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/C;

    iget-object v0, v0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object p0, p0, Lw0/m;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public l(I)I
    .locals 5

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/C;

    iget-object v1, v1, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/c;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/c;->b(I)I

    move-result v4

    sub-int v4, v2, v4

    sub-int v4, p1, v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/c;->d(I)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v4

    goto :goto_0

    :cond_3
    return v0
.end method

.method public m(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/C;

    iget-object p0, p0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public n()I
    .locals 0

    iget-object p0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/C;

    iget-object p0, p0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public o(Ljava/lang/CharSequence;IILandroidx/emoji2/text/t;)Z
    .locals 6

    const/4 v0, 0x1

    iget v1, p4, Landroidx/emoji2/text/t;->c:I

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-object p0, p0, Lw0/m;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/c;

    invoke-virtual {p4}, Landroidx/emoji2/text/t;->c()LP/a;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, LK/u;->b(I)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, v1, LK/u;->g:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    iget v1, v1, LK/u;->d:I

    add-int/2addr v4, v1

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/emoji2/text/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/emoji2/text/c;->a:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, LC/c;->a:I

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result p0

    iget p1, p4, Landroidx/emoji2/text/t;->c:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p0, :cond_3

    or-int/lit8 p0, p1, 0x2

    goto :goto_1

    :cond_3
    or-int/lit8 p0, p1, 0x1

    :goto_1
    iput p0, p4, Landroidx/emoji2/text/t;->c:I

    :cond_4
    iget p0, p4, Landroidx/emoji2/text/t;->c:I

    and-int/lit8 p0, p0, 0x3

    if-ne p0, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0
.end method

.method public p(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/C;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p1, Landroidx/recyclerview/widget/U;->q:I

    const/4 v1, -0x1

    iget-object v2, p1, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iput v0, p1, Landroidx/recyclerview/widget/U;->p:I

    goto :goto_0

    :cond_0
    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iput v0, p1, Landroidx/recyclerview/widget/U;->p:I

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iput v1, p1, Landroidx/recyclerview/widget/U;->q:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object p0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public q(ILs/d;Lv/d;)Z
    .locals 5

    iget-object v0, p2, Ls/d;->n0:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object p0, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast p0, Lt/b;

    iput v2, p0, Lt/b;->a:I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p0, Lt/b;->b:I

    invoke-virtual {p2}, Ls/d;->l()I

    move-result v0

    iput v0, p0, Lt/b;->c:I

    invoke-virtual {p2}, Ls/d;->i()I

    move-result v0

    iput v0, p0, Lt/b;->d:I

    iput-boolean v1, p0, Lt/b;->i:Z

    iput p1, p0, Lt/b;->j:I

    iget p1, p0, Lt/b;->a:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget v3, p0, Lt/b;->b:I

    if-ne v3, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget p1, p2, Ls/d;->U:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz v0, :cond_3

    iget v0, p2, Ls/d;->U:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iget-object v3, p2, Ls/d;->s:[I

    const/4 v4, 0x4

    if-eqz p1, :cond_4

    aget p1, v3, v1

    if-ne p1, v4, :cond_4

    iput v2, p0, Lt/b;->a:I

    :cond_4
    if-eqz v0, :cond_5

    aget p1, v3, v2

    if-ne p1, v4, :cond_5

    iput v2, p0, Lt/b;->b:I

    :cond_5
    invoke-virtual {p3, p2, p0}, Lv/d;->b(Ls/d;Lt/b;)V

    iget p1, p0, Lt/b;->e:I

    invoke-virtual {p2, p1}, Ls/d;->F(I)V

    iget p1, p0, Lt/b;->f:I

    invoke-virtual {p2, p1}, Ls/d;->C(I)V

    iget-boolean p1, p0, Lt/b;->h:Z

    iput-boolean p1, p2, Ls/d;->D:Z

    iget p1, p0, Lt/b;->g:I

    iput p1, p2, Ls/d;->Y:I

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    iput-boolean v2, p2, Ls/d;->D:Z

    iput v1, p0, Lt/b;->j:I

    iget-boolean p0, p0, Lt/b;->i:Z

    return p0
.end method

.method public r(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/m;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    new-instance v5, Landroidx/emoji2/text/n;

    iget-object v6, v0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v6, Lw0/i;

    iget-object v6, v6, Lw0/i;->g:Ljava/lang/Object;

    check-cast v6, Landroidx/emoji2/text/q;

    invoke-direct {v5, v6}, Landroidx/emoji2/text/n;-><init>(Landroidx/emoji2/text/q;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v9, v6

    move v11, v7

    move v10, v8

    move/from16 v6, p2

    :cond_0
    :goto_0
    move v8, v6

    :goto_1
    const/4 v12, 0x2

    if-ge v6, v2, :cond_f

    if-ge v10, v3, :cond_f

    if-eqz v11, :cond_f

    iget-object v13, v5, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    iget-object v13, v13, Landroidx/emoji2/text/q;->a:Landroid/util/SparseArray;

    if-nez v13, :cond_1

    const/4 v13, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/emoji2/text/q;

    :goto_2
    iget v14, v5, Landroidx/emoji2/text/n;->a:I

    const/4 v15, 0x3

    if-eq v14, v12, :cond_3

    if-nez v13, :cond_2

    invoke-virtual {v5}, Landroidx/emoji2/text/n;->a()V

    :goto_3
    move v13, v7

    goto :goto_6

    :cond_2
    iput v12, v5, Landroidx/emoji2/text/n;->a:I

    iput-object v13, v5, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    iput v7, v5, Landroidx/emoji2/text/n;->f:I

    :goto_4
    move v13, v12

    goto :goto_6

    :cond_3
    if-eqz v13, :cond_4

    iput-object v13, v5, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    iget v13, v5, Landroidx/emoji2/text/n;->f:I

    add-int/2addr v13, v7

    iput v13, v5, Landroidx/emoji2/text/n;->f:I

    goto :goto_4

    :cond_4
    const v13, 0xfe0e

    if-ne v9, v13, :cond_5

    invoke-virtual {v5}, Landroidx/emoji2/text/n;->a()V

    goto :goto_3

    :cond_5
    const v13, 0xfe0f

    if-ne v9, v13, :cond_6

    goto :goto_4

    :cond_6
    iget-object v13, v5, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    iget-object v14, v13, Landroidx/emoji2/text/q;->b:Landroidx/emoji2/text/t;

    if-eqz v14, :cond_9

    iget v14, v5, Landroidx/emoji2/text/n;->f:I

    if-ne v14, v7, :cond_8

    invoke-virtual {v5}, Landroidx/emoji2/text/n;->b()Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v5, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    iput-object v13, v5, Landroidx/emoji2/text/n;->d:Landroidx/emoji2/text/q;

    invoke-virtual {v5}, Landroidx/emoji2/text/n;->a()V

    :goto_5
    move v13, v15

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, Landroidx/emoji2/text/n;->a()V

    goto :goto_3

    :cond_8
    iput-object v13, v5, Landroidx/emoji2/text/n;->d:Landroidx/emoji2/text/q;

    invoke-virtual {v5}, Landroidx/emoji2/text/n;->a()V

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Landroidx/emoji2/text/n;->a()V

    goto :goto_3

    :goto_6
    iput v9, v5, Landroidx/emoji2/text/n;->e:I

    if-eq v13, v7, :cond_e

    if-eq v13, v12, :cond_c

    if-eq v13, v15, :cond_a

    goto :goto_1

    :cond_a
    if-nez p5, :cond_b

    iget-object v12, v5, Landroidx/emoji2/text/n;->d:Landroidx/emoji2/text/q;

    iget-object v12, v12, Landroidx/emoji2/text/q;->b:Landroidx/emoji2/text/t;

    invoke-virtual {v0, v1, v8, v6, v12}, Lw0/m;->o(Ljava/lang/CharSequence;IILandroidx/emoji2/text/t;)Z

    move-result v12

    if-nez v12, :cond_0

    :cond_b
    iget-object v11, v5, Landroidx/emoji2/text/n;->d:Landroidx/emoji2/text/q;

    iget-object v11, v11, Landroidx/emoji2/text/q;->b:Landroidx/emoji2/text/t;

    invoke-interface {v4, v1, v8, v6, v11}, Landroidx/emoji2/text/m;->H(Ljava/lang/CharSequence;IILandroidx/emoji2/text/t;)Z

    move-result v11

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v12, v6

    if-ge v12, v2, :cond_d

    invoke-static {v1, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    move v9, v6

    :cond_d
    move v6, v12

    goto/16 :goto_1

    :cond_e
    invoke-static {v1, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v8

    if-ge v6, v2, :cond_0

    invoke-static {v1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    move v9, v8

    goto/16 :goto_0

    :cond_f
    iget v2, v5, Landroidx/emoji2/text/n;->a:I

    if-ne v2, v12, :cond_12

    iget-object v2, v5, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    iget-object v2, v2, Landroidx/emoji2/text/q;->b:Landroidx/emoji2/text/t;

    if-eqz v2, :cond_12

    iget v2, v5, Landroidx/emoji2/text/n;->f:I

    if-gt v2, v7, :cond_10

    invoke-virtual {v5}, Landroidx/emoji2/text/n;->b()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    if-ge v10, v3, :cond_12

    if-eqz v11, :cond_12

    if-nez p5, :cond_11

    iget-object v2, v5, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    iget-object v2, v2, Landroidx/emoji2/text/q;->b:Landroidx/emoji2/text/t;

    invoke-virtual {v0, v1, v8, v6, v2}, Lw0/m;->o(Ljava/lang/CharSequence;IILandroidx/emoji2/text/t;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, v5, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    iget-object v0, v0, Landroidx/emoji2/text/q;->b:Landroidx/emoji2/text/t;

    invoke-interface {v4, v1, v8, v6, v0}, Landroidx/emoji2/text/m;->H(Ljava/lang/CharSequence;IILandroidx/emoji2/text/t;)Z

    :cond_12
    invoke-interface/range {p6 .. p6}, Landroidx/emoji2/text/m;->k()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public s(Ls/e;III)V
    .locals 3

    iget v0, p1, Ls/d;->Z:I

    iget v1, p1, Ls/d;->a0:I

    const/4 v2, 0x0

    iput v2, p1, Ls/d;->Z:I

    iput v2, p1, Ls/d;->a0:I

    invoke-virtual {p1, p3}, Ls/d;->F(I)V

    invoke-virtual {p1, p4}, Ls/d;->C(I)V

    if-gez v0, :cond_0

    iput v2, p1, Ls/d;->Z:I

    goto :goto_0

    :cond_0
    iput v0, p1, Ls/d;->Z:I

    :goto_0
    if-gez v1, :cond_1

    iput v2, p1, Ls/d;->a0:I

    goto :goto_1

    :cond_1
    iput v1, p1, Ls/d;->a0:I

    :goto_1
    iget-object p0, p0, Lw0/m;->d:Ljava/lang/Object;

    check-cast p0, Ls/e;

    iput p2, p0, Ls/e;->r0:I

    invoke-virtual {p0}, Ls/e;->L()V

    return-void
.end method

.method public t()V
    .locals 11

    iget-object v0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v0, Ln1/a;

    iget-object v1, v0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, La2/q;

    iget-object v1, v1, La2/q;->j:Landroid/util/ArrayMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v3, "iterator(...)"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "next(...)"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, La2/f;

    iget-object v6, p0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/EnumMap;

    iget-object v7, v4, La2/f;->b:La2/i;

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "trigger"

    invoke-static {v6, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, La2/f;->o:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v4, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, La2/h;

    iget-object v6, v6, La2/h;->b:Ljava/lang/String;

    iget-object v7, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v7, Ln1/a;

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    iget-object v7, v7, Ln1/a;->b:Ljava/lang/Object;

    check-cast v7, Landroid/util/ArrayMap;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LT1/a;

    goto :goto_1

    :cond_2
    move-object v7, v8

    :goto_1
    if-eqz v7, :cond_1

    iget-object v9, v0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v9, La2/q;

    iget-object v9, v9, La2/q;->l:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/d;

    if-eqz v6, :cond_3

    iget-object v6, v6, La2/d;->a:La2/c;

    goto :goto_2

    :cond_3
    move-object v6, v8

    :goto_2
    if-nez v6, :cond_4

    const/4 v6, -0x1

    goto :goto_3

    :cond_4
    sget-object v9, LT1/b;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v9, v6

    :goto_3
    const/4 v9, 0x1

    if-eq v6, v9, :cond_7

    const/4 v9, 0x2

    if-eq v6, v9, :cond_5

    goto :goto_0

    :cond_5
    iget-object v6, v7, LT1/a;->f:Landroid/view/ViewPropertyAnimator;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    :cond_6
    const-string p0, "viewPropertyAnimator"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v8

    :cond_7
    invoke-virtual {v7}, LT1/a;->a()LP1/b;

    move-result-object v6

    iget-boolean v6, v6, LP1/b;->g:Z

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v7}, LT1/a;->a()LP1/b;

    move-result-object v6

    const/4 v8, 0x0

    iput-boolean v8, v6, LP1/b;->g:Z

    invoke-virtual {v7}, LT1/a;->a()LP1/b;

    move-result-object v6

    iget-object v6, v6, LP1/b;->f:La2/d;

    iput v8, v6, La2/d;->f:I

    invoke-virtual {v7}, LT1/a;->a()LP1/b;

    move-result-object v6

    iget-object v6, v6, LP1/b;->f:La2/d;

    iget-object v6, v6, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v9, "get(...)"

    invoke-static {v6, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, La2/b;

    iget-object v9, v7, LT1/a;->b:Landroid/view/View;

    instance-of v10, v9, LU1/b;

    if-eqz v10, :cond_9

    check-cast v9, LU1/b;

    iget-object v6, v6, La2/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v6}, LU1/b;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_9
    iget-object v6, v6, La2/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v6, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v6, Ln1/a;

    if-eqz v6, :cond_a

    iget-object v6, v6, Ln1/a;->c:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    if-eqz v6, :cond_a

    invoke-virtual {v7}, LT1/a;->a()LP1/b;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    invoke-virtual {v7}, LT1/a;->a()LP1/b;

    move-result-object v6

    iget-object v6, v6, LP1/b;->f:La2/d;

    iget-object v6, v6, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/b;

    iget-object v6, v6, La2/b;->a:Ljava/lang/String;

    const-string v7, "stopAnimation : "

    invoke-static {v7, v6}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "AnimationController"

    invoke-static {v8, v6, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lw0/m;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/c;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lw0/m;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public u(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/C;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p1, Landroidx/recyclerview/widget/U;->p:I

    iget-object p0, p0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p1, Landroidx/recyclerview/widget/U;->q:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object p0, p1, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    const/4 p0, 0x0

    iput p0, p1, Landroidx/recyclerview/widget/U;->p:I

    :cond_1
    return-void
.end method

.method public v(Ls/e;)V
    .locals 8

    iget-object p0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    iget-object v5, v4, Ls/d;->n0:[I

    aget v6, v5, v1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    aget v3, v5, v3

    if-ne v3, v7, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p1, Ls/e;->q0:Lt/e;

    iput-boolean v3, p0, Lt/e;->b:Z

    return-void
.end method
