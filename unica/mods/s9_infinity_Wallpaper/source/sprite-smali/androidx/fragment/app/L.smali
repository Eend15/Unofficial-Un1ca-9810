.class public abstract Landroidx/fragment/app/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroidx/activity/result/d;

.field public B:Landroidx/activity/result/d;

.field public C:Ljava/util/ArrayDeque;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Landroidx/fragment/app/N;

.field public final M:Landroidx/fragment/app/d;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Lw0/i;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/A;

.field public g:Landroidx/activity/p;

.field public final h:Landroidx/fragment/app/D;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:Lw0/c;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Landroidx/fragment/app/B;

.field public final o:Landroidx/fragment/app/B;

.field public final p:Landroidx/fragment/app/B;

.field public final q:Landroidx/fragment/app/B;

.field public final r:Landroidx/fragment/app/E;

.field public s:I

.field public t:Landroidx/fragment/app/v;

.field public u:La4/x;

.field public v:Landroidx/fragment/app/r;

.field public w:Landroidx/fragment/app/r;

.field public final x:Landroidx/fragment/app/F;

.field public final y:Landroidx/fragment/app/G;

.field public z:Landroidx/activity/result/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    new-instance v0, Lw0/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lw0/i;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    new-instance v0, Landroidx/fragment/app/A;

    invoke-direct {v0, p0}, Landroidx/fragment/app/A;-><init>(Landroidx/fragment/app/L;)V

    iput-object v0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/A;

    new-instance v0, Landroidx/fragment/app/D;

    invoke-direct {v0, p0}, Landroidx/fragment/app/D;-><init>(Landroidx/fragment/app/L;)V

    iput-object v0, p0, Landroidx/fragment/app/L;->h:Landroidx/fragment/app/D;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/L;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/L;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/L;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Lw0/c;

    invoke-direct {v0, p0}, Lw0/c;-><init>(Landroidx/fragment/app/L;)V

    iput-object v0, p0, Landroidx/fragment/app/L;->l:Lw0/c;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/L;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/fragment/app/B;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/B;-><init>(Landroidx/fragment/app/L;I)V

    iput-object v0, p0, Landroidx/fragment/app/L;->n:Landroidx/fragment/app/B;

    new-instance v0, Landroidx/fragment/app/B;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/B;-><init>(Landroidx/fragment/app/L;I)V

    iput-object v0, p0, Landroidx/fragment/app/L;->o:Landroidx/fragment/app/B;

    new-instance v0, Landroidx/fragment/app/B;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/B;-><init>(Landroidx/fragment/app/L;I)V

    iput-object v0, p0, Landroidx/fragment/app/L;->p:Landroidx/fragment/app/B;

    new-instance v0, Landroidx/fragment/app/B;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/B;-><init>(Landroidx/fragment/app/L;I)V

    iput-object v0, p0, Landroidx/fragment/app/L;->q:Landroidx/fragment/app/B;

    new-instance v0, Landroidx/fragment/app/E;

    invoke-direct {v0, p0}, Landroidx/fragment/app/E;-><init>(Landroidx/fragment/app/L;)V

    iput-object v0, p0, Landroidx/fragment/app/L;->r:Landroidx/fragment/app/E;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/L;->s:I

    new-instance v0, Landroidx/fragment/app/F;

    invoke-direct {v0, p0}, Landroidx/fragment/app/F;-><init>(Landroidx/fragment/app/L;)V

    iput-object v0, p0, Landroidx/fragment/app/L;->x:Landroidx/fragment/app/F;

    new-instance v0, Landroidx/fragment/app/G;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/L;->y:Landroidx/fragment/app/G;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/L;->C:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/fragment/app/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/fragment/app/L;->M:Landroidx/fragment/app/d;

    return-void
.end method

.method public static F(Landroidx/fragment/app/r;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->v()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/r;

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroidx/fragment/app/L;->F(Landroidx/fragment/app/r;)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static H(Landroidx/fragment/app/r;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Landroidx/fragment/app/r;->E:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/r;->x:Landroidx/fragment/app/r;

    invoke-static {p0}, Landroidx/fragment/app/L;->H(Landroidx/fragment/app/r;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static I(Landroidx/fragment/app/r;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    iget-object v2, v1, Landroidx/fragment/app/L;->w:Landroidx/fragment/app/r;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v1, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    invoke-static {p0}, Landroidx/fragment/app/L;->I(Landroidx/fragment/app/r;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static X(Landroidx/fragment/app/r;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/r;->B:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/r;->B:Z

    iget-boolean v0, p0, Landroidx/fragment/app/r;->L:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->L:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(I)Landroidx/fragment/app/r;
    .locals 4

    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/r;

    if-eqz v2, :cond_0

    iget v3, v2, Landroidx/fragment/app/r;->y:I

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Q;

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget v0, v2, Landroidx/fragment/app/r;->y:I

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public final B(Landroidx/fragment/app/r;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Landroidx/fragment/app/r;->z:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/L;->u:La4/x;

    invoke-virtual {v0}, La4/x;->P()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/L;->u:La4/x;

    iget p1, p1, Landroidx/fragment/app/r;->z:I

    invoke-virtual {p0, p1}, La4/x;->O(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final C()Landroidx/fragment/app/F;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    iget-object p0, v0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    invoke-virtual {p0}, Landroidx/fragment/app/L;->C()Landroidx/fragment/app/F;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/L;->x:Landroidx/fragment/app/F;

    return-object p0
.end method

.method public final D()Landroidx/fragment/app/G;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    iget-object p0, v0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    invoke-virtual {p0}, Landroidx/fragment/app/L;->D()Landroidx/fragment/app/G;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/L;->y:Landroidx/fragment/app/G;

    return-object p0
.end method

.method public final E(Landroidx/fragment/app/r;)V
    .locals 3

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/r;->B:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/r;->B:Z

    iget-boolean v1, p1, Landroidx/fragment/app/r;->L:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/r;->L:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->W(Landroidx/fragment/app/r;)V

    :cond_1
    return-void
.end method

.method public final G()Z
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/r;->n:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/L;->G()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final J(IZ)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroidx/fragment/app/L;->s:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/fragment/app/L;->s:I

    iget-object p1, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object p2, p1, Lw0/i;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p1, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Q;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Q;->k()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Q;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/Q;->k()V

    iget-object v1, v0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-boolean v2, v1, Landroidx/fragment/app/r;->o:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/r;->j()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Lw0/i;->E(Landroidx/fragment/app/Q;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/L;->Y()V

    iget-boolean p1, p0, Landroidx/fragment/app/L;->D:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz p1, :cond_7

    iget p2, p0, Landroidx/fragment/app/L;->s:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    iget-object p1, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p1}, Landroidx/appcompat/app/k;->invalidateOptionsMenu()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/L;->D:Z

    :cond_7
    return-void
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/L;->E:Z

    iput-boolean v0, p0, Landroidx/fragment/app/L;->F:Z

    iget-object v1, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v0, v1, Landroidx/fragment/app/N;->i:Z

    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->K()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final L()Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/L;->M(II)Z

    move-result p0

    return p0
.end method

.method public final M(II)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/L;->x(Z)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/L;->w(Z)V

    iget-object v2, p0, Landroidx/fragment/app/L;->w:Landroidx/fragment/app/r;

    if-eqz v2, :cond_0

    if-gez p1, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/r;->c()Landroidx/fragment/app/L;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/L;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/L;->I:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/L;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3, p1, p2}, Landroidx/fragment/app/L;->N(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Landroidx/fragment/app/L;->b:Z

    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/L;->I:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/L;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/L;->P(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/L;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/L;->d()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/L;->a0()V

    iget-boolean p2, p0, Landroidx/fragment/app/L;->H:Z

    if-eqz p2, :cond_2

    iput-boolean v0, p0, Landroidx/fragment/app/L;->H:Z

    invoke-virtual {p0}, Landroidx/fragment/app/L;->Y()V

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return p1
.end method

.method public final N(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    const/4 v0, 0x1

    and-int/2addr p4, v0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_5

    :cond_1
    if-gez p3, :cond_3

    if-eqz p4, :cond_2

    move v3, v1

    goto :goto_5

    :cond_2
    iget-object p3, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 v3, p3, -0x1

    goto :goto_5

    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-ltz v2, :cond_5

    iget-object v4, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    if-ltz p3, :cond_4

    iget v4, v4, Landroidx/fragment/app/a;->r:I

    if-ne p3, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-gez v2, :cond_7

    :cond_6
    :goto_3
    move v3, v2

    goto :goto_5

    :cond_7
    if-eqz p4, :cond_8

    :goto_4
    if-lez v2, :cond_6

    iget-object p4, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/a;

    if-ltz p3, :cond_6

    iget p4, p4, Landroidx/fragment/app/a;->r:I

    if-ne p3, p4, :cond_6

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_8
    iget-object p3, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne v2, p3, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    if-gez v3, :cond_b

    return v1

    :cond_b
    iget-object p3, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_6
    if-lt p3, v3, :cond_c

    iget-object p4, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/a;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    :cond_c
    return v0
.end method

.method public final O(Landroidx/fragment/app/r;)V
    .locals 3

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/r;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/r;->j()Z

    move-result v0

    iget-boolean v1, p1, Landroidx/fragment/app/r;->C:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object v1, v0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/r;->n:Z

    invoke-static {p1}, Landroidx/fragment/app/L;->F(Landroidx/fragment/app/r;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/L;->D:Z

    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/r;->o:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->W(Landroidx/fragment/app/r;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final P(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->o:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/L;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->o:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/L;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/L;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error with the back stack records"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Q(Landroid/os/Parcelable;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "result_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v5, v5, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Landroidx/fragment/app/L;->k:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "state"

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "fragment_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v6, v0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v6, v6, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentState;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, v0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object v4, v3, Lw0/i;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentState;

    iget-object v7, v6, Landroidx/fragment/app/FragmentState;->e:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerState;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v2, v3, Lw0/i;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v4, v1, Landroidx/fragment/app/FragmentManagerState;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    iget-object v7, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    const-string v8, "): "

    const-string v9, "FragmentManager"

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v10, v3, Lw0/i;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroidx/fragment/app/FragmentState;

    if-eqz v15, :cond_6

    iget-object v5, v0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iget-object v5, v5, Landroidx/fragment/app/N;->d:Ljava/util/HashMap;

    iget-object v10, v15, Landroidx/fragment/app/FragmentState;->e:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/r;

    if-eqz v5, :cond_8

    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "restoreSaveState: re-attaching retained "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v10, Landroidx/fragment/app/Q;

    invoke-direct {v10, v7, v3, v5, v15}, Landroidx/fragment/app/Q;-><init>(Lw0/c;Lw0/i;Landroidx/fragment/app/r;Landroidx/fragment/app/FragmentState;)V

    goto :goto_4

    :cond_8
    new-instance v5, Landroidx/fragment/app/Q;

    iget-object v7, v0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v7, v7, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/L;->C()Landroidx/fragment/app/F;

    move-result-object v14

    iget-object v11, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    iget-object v12, v0, Landroidx/fragment/app/L;->c:Lw0/i;

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Landroidx/fragment/app/Q;-><init>(Lw0/c;Lw0/i;Ljava/lang/ClassLoader;Landroidx/fragment/app/F;Landroidx/fragment/app/FragmentState;)V

    :goto_4
    iget-object v5, v10, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iput-object v0, v5, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "restoreSaveState: active ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v5, v0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v5, v5, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroidx/fragment/app/Q;->m(Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, v10}, Lw0/i;->D(Landroidx/fragment/app/Q;)V

    iget v5, v0, Landroidx/fragment/app/L;->s:I

    iput v5, v10, Landroidx/fragment/app/Q;->e:I

    goto/16 :goto_3

    :cond_a
    iget-object v4, v0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v4, v4, Landroidx/fragment/app/N;->d:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v10, 0x1

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/r;

    iget-object v11, v5, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Discarding retained Fragment "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " that was not found in the set of active Fragments "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Landroidx/fragment/app/FragmentManagerState;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v11, v0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    invoke-virtual {v11, v5}, Landroidx/fragment/app/N;->e(Landroidx/fragment/app/r;)V

    iput-object v0, v5, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    new-instance v11, Landroidx/fragment/app/Q;

    invoke-direct {v11, v7, v3, v5}, Landroidx/fragment/app/Q;-><init>(Lw0/c;Lw0/i;Landroidx/fragment/app/r;)V

    iput v10, v11, Landroidx/fragment/app/Q;->e:I

    invoke-virtual {v11}, Landroidx/fragment/app/Q;->k()V

    iput-boolean v10, v5, Landroidx/fragment/app/r;->o:Z

    invoke-virtual {v11}, Landroidx/fragment/app/Q;->k()V

    goto :goto_5

    :cond_d
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->e:Ljava/util/ArrayList;

    iget-object v4, v3, Lw0/i;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lw0/i;->l(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "restoreSaveState: added ("

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v3, v5}, Lw0/i;->c(Landroidx/fragment/app/r;)V

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instantiated fragment for ("

    const-string v2, ")"

    invoke-static {v1, v4, v2}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->f:[Landroidx/fragment/app/BackStackRecordState;

    if-eqz v2, :cond_18

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v1, Landroidx/fragment/app/FragmentManagerState;->f:[Landroidx/fragment/app/BackStackRecordState;

    array-length v5, v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_7
    iget-object v5, v1, Landroidx/fragment/app/FragmentManagerState;->f:[Landroidx/fragment/app/BackStackRecordState;

    array-length v7, v5

    if-ge v2, v7, :cond_17

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/fragment/app/a;

    invoke-direct {v7, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/L;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_8
    iget-object v13, v5, Landroidx/fragment/app/BackStackRecordState;->d:[I

    array-length v14, v13

    if-ge v11, v14, :cond_13

    new-instance v14, Landroidx/fragment/app/S;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v15, v11, 0x1

    aget v4, v13, v11

    iput v4, v14, Landroidx/fragment/app/S;->a:I

    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Instantiate "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " op #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " base fragment #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v13, v15

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    move-result-object v4

    iget-object v6, v5, Landroidx/fragment/app/BackStackRecordState;->f:[I

    aget v6, v6, v12

    aget-object v4, v4, v6

    iput-object v4, v14, Landroidx/fragment/app/S;->h:Landroidx/lifecycle/n;

    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    move-result-object v4

    iget-object v6, v5, Landroidx/fragment/app/BackStackRecordState;->g:[I

    aget v6, v6, v12

    aget-object v4, v4, v6

    iput-object v4, v14, Landroidx/fragment/app/S;->i:Landroidx/lifecycle/n;

    add-int/lit8 v4, v11, 0x2

    aget v6, v13, v15

    if-eqz v6, :cond_12

    move v6, v10

    goto :goto_9

    :cond_12
    const/4 v6, 0x0

    :goto_9
    iput-boolean v6, v14, Landroidx/fragment/app/S;->c:Z

    add-int/lit8 v6, v11, 0x3

    aget v4, v13, v4

    iput v4, v14, Landroidx/fragment/app/S;->d:I

    add-int/lit8 v15, v11, 0x4

    aget v6, v13, v6

    iput v6, v14, Landroidx/fragment/app/S;->e:I

    add-int/lit8 v16, v11, 0x5

    aget v15, v13, v15

    iput v15, v14, Landroidx/fragment/app/S;->f:I

    add-int/lit8 v11, v11, 0x6

    aget v13, v13, v16

    iput v13, v14, Landroidx/fragment/app/S;->g:I

    iput v4, v7, Landroidx/fragment/app/a;->b:I

    iput v6, v7, Landroidx/fragment/app/a;->c:I

    iput v15, v7, Landroidx/fragment/app/a;->d:I

    iput v13, v7, Landroidx/fragment/app/a;->e:I

    invoke-virtual {v7, v14}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/S;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x2

    goto/16 :goto_8

    :cond_13
    iget v4, v5, Landroidx/fragment/app/BackStackRecordState;->h:I

    iput v4, v7, Landroidx/fragment/app/a;->f:I

    iget-object v4, v5, Landroidx/fragment/app/BackStackRecordState;->i:Ljava/lang/String;

    iput-object v4, v7, Landroidx/fragment/app/a;->h:Ljava/lang/String;

    iput-boolean v10, v7, Landroidx/fragment/app/a;->g:Z

    iget v4, v5, Landroidx/fragment/app/BackStackRecordState;->k:I

    iput v4, v7, Landroidx/fragment/app/a;->i:I

    iget-object v4, v5, Landroidx/fragment/app/BackStackRecordState;->l:Ljava/lang/CharSequence;

    iput-object v4, v7, Landroidx/fragment/app/a;->j:Ljava/lang/CharSequence;

    iget v4, v5, Landroidx/fragment/app/BackStackRecordState;->m:I

    iput v4, v7, Landroidx/fragment/app/a;->k:I

    iget-object v4, v5, Landroidx/fragment/app/BackStackRecordState;->n:Ljava/lang/CharSequence;

    iput-object v4, v7, Landroidx/fragment/app/a;->l:Ljava/lang/CharSequence;

    iget-object v4, v5, Landroidx/fragment/app/BackStackRecordState;->o:Ljava/util/ArrayList;

    iput-object v4, v7, Landroidx/fragment/app/a;->m:Ljava/util/ArrayList;

    iget-object v4, v5, Landroidx/fragment/app/BackStackRecordState;->p:Ljava/util/ArrayList;

    iput-object v4, v7, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    iget-boolean v4, v5, Landroidx/fragment/app/BackStackRecordState;->q:Z

    iput-boolean v4, v7, Landroidx/fragment/app/a;->o:Z

    iget v4, v5, Landroidx/fragment/app/BackStackRecordState;->j:I

    iput v4, v7, Landroidx/fragment/app/a;->r:I

    const/4 v4, 0x0

    :goto_a
    iget-object v6, v5, Landroidx/fragment/app/BackStackRecordState;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_15

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_14

    iget-object v11, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/S;

    invoke-virtual {v3, v6}, Lw0/i;->l(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v6

    iput-object v6, v11, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_15
    invoke-virtual {v7, v10}, Landroidx/fragment/app/a;->c(I)V

    const/4 v4, 0x2

    invoke-static {v9, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "restoreAllState: back stack #"

    const-string v6, " (index "

    invoke-static {v2, v5, v6}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v7, Landroidx/fragment/app/a;->r:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroidx/fragment/app/U;

    invoke-direct {v5}, Landroidx/fragment/app/U;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, "  "

    const/4 v11, 0x0

    invoke-virtual {v7, v5, v6, v11}, Landroidx/fragment/app/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    goto :goto_b

    :cond_16
    const/4 v11, 0x0

    :goto_b
    iget-object v5, v0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    goto/16 :goto_7

    :cond_17
    const/4 v11, 0x0

    goto :goto_c

    :cond_18
    const/4 v11, 0x0

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    :goto_c
    iget-object v2, v0, Landroidx/fragment/app/L;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v1, Landroidx/fragment/app/FragmentManagerState;->g:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->h:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {v3, v2}, Lw0/i;->l(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/L;->w:Landroidx/fragment/app/r;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/L;->q(Landroidx/fragment/app/r;)V

    :cond_19
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    move v4, v11

    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_1a

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v1, Landroidx/fragment/app/FragmentManagerState;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/BackStackState;

    iget-object v6, v0, Landroidx/fragment/app/L;->j:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1a
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerState;->k:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroidx/fragment/app/L;->C:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final R()Landroid/os/Bundle;
    .locals 13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/L;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/h;

    iget-boolean v5, v2, Landroidx/fragment/app/h;->e:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SpecialEffectsController: Forcing postponed operations"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v3, v2, Landroidx/fragment/app/h;->e:Z

    invoke-virtual {v2}, Landroidx/fragment/app/h;->c()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/L;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/h;

    invoke-virtual {v2}, Landroidx/fragment/app/h;->e()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/L;->x(Z)Z

    iput-boolean v1, p0, Landroidx/fragment/app/L;->E:Z

    iget-object v2, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v1, v2, Landroidx/fragment/app/N;->i:Z

    iget-object v1, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Q;

    if-eqz v5, :cond_4

    new-instance v7, Landroidx/fragment/app/FragmentState;

    iget-object v8, v5, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    invoke-direct {v7, v8}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/r;)V

    iget v9, v8, Landroidx/fragment/app/r;->d:I

    const/4 v10, -0x1

    if-le v9, v10, :cond_e

    iget-object v9, v7, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    if-nez v9, :cond_e

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8, v9}, Landroidx/fragment/app/r;->s(Landroid/os/Bundle;)V

    iget-object v10, v8, Landroidx/fragment/app/r;->S:Ld0/f;

    invoke-virtual {v10, v9}, Ld0/f;->c(Landroid/os/Bundle;)V

    iget-object v10, v8, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v10}, Landroidx/fragment/app/L;->R()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "android:support:fragments"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v10, v5, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {v10, v3}, Lw0/c;->y(Z)V

    invoke-virtual {v9}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v9

    :goto_3
    iget-object v9, v8, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v9, :cond_6

    invoke-virtual {v5}, Landroidx/fragment/app/Q;->o()V

    :cond_6
    iget-object v9, v8, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    if-eqz v9, :cond_8

    if-nez v6, :cond_7

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v9, "android:view_state"

    iget-object v10, v8, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_8
    iget-object v9, v8, Landroidx/fragment/app/r;->g:Landroid/os/Bundle;

    if-eqz v9, :cond_a

    if-nez v6, :cond_9

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_9
    const-string v9, "android:view_registry_state"

    iget-object v10, v8, Landroidx/fragment/app/r;->g:Landroid/os/Bundle;

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    iget-boolean v9, v8, Landroidx/fragment/app/r;->J:Z

    if-nez v9, :cond_c

    if-nez v6, :cond_b

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_b
    const-string v9, "android:user_visible_hint"

    iget-boolean v10, v8, Landroidx/fragment/app/r;->J:Z

    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    iput-object v6, v7, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    iget-object v9, v8, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    if-eqz v9, :cond_f

    if-nez v6, :cond_d

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v7, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    :cond_d
    iget-object v6, v7, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v8, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v8, Landroidx/fragment/app/r;->l:I

    if-eqz v6, :cond_f

    iget-object v9, v7, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    const-string v10, "android:target_req_state"

    invoke-virtual {v9, v10, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_e
    iget-object v6, v8, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    iput-object v6, v7, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    :cond_f
    :goto_4
    iget-object v6, v8, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iget-object v8, v5, Landroidx/fragment/app/Q;->b:Lw0/i;

    iget-object v8, v8, Lw0/i;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentState;

    iget-object v5, v5, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object v6, v5, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "FragmentManager"

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Saved state of "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v1, v1, Lw0/i;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string p0, "FragmentManager"

    invoke-static {p0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_11
    iget-object v1, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object v7, v1, Lw0/i;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v8, v1, Lw0/i;->e:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12

    monitor-exit v7

    move-object v8, v6

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_12
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v1, Lw0/i;->e:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v1, Lw0/i;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/r;

    iget-object v10, v9, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "FragmentManager"

    invoke-static {v10, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_13

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveAllState: adding fragment ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_14
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    iget-object v1, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16

    new-array v7, v1, [Landroidx/fragment/app/BackStackRecordState;

    :goto_7
    if-ge v3, v1, :cond_17

    new-instance v9, Landroidx/fragment/app/BackStackRecordState;

    iget-object v10, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/a;

    invoke-direct {v9, v10}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroidx/fragment/app/a;)V

    aput-object v9, v7, v3

    const-string v9, "FragmentManager"

    invoke-static {v9, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "FragmentManager"

    const-string v10, "saveAllState: adding back stack #"

    const-string v11, ": "

    invoke-static {v3, v10, v11}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    move-object v7, v6

    :cond_17
    new-instance v1, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Landroidx/fragment/app/FragmentManagerState;->h:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Landroidx/fragment/app/FragmentManagerState;->i:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroidx/fragment/app/FragmentManagerState;->j:Ljava/util/ArrayList;

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->d:Ljava/util/ArrayList;

    iput-object v8, v1, Landroidx/fragment/app/FragmentManagerState;->e:Ljava/util/ArrayList;

    iput-object v7, v1, Landroidx/fragment/app/FragmentManagerState;->f:[Landroidx/fragment/app/BackStackRecordState;

    iget-object v2, p0, Landroidx/fragment/app/L;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iput v2, v1, Landroidx/fragment/app/FragmentManagerState;->g:I

    iget-object v2, p0, Landroidx/fragment/app/L;->w:Landroidx/fragment/app/r;

    if-eqz v2, :cond_18

    iget-object v2, v2, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->h:Ljava/lang/String;

    :cond_18
    iget-object v2, p0, Landroidx/fragment/app/L;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Landroidx/fragment/app/L;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/L;->C:Ljava/util/ArrayDeque;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->k:Ljava/util/ArrayList;

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/fragment/app/L;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "result_"

    invoke-static {v3, v2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/L;->k:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentState;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "state"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fragment_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/fragment/app/FragmentState;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    :cond_1a
    :goto_a
    return-object v0

    :goto_b
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final S()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/v;->f:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/L;->M:Landroidx/fragment/app/d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/v;->f:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/L;->M:Landroidx/fragment/app/d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/L;->a0()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final T(Landroidx/fragment/app/r;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->B(Landroidx/fragment/app/r;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Landroidx/fragment/app/FragmentContainerView;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentContainerView;->g:Z

    :cond_0
    return-void
.end method

.method public final U(Landroidx/fragment/app/r;Landroidx/lifecycle/n;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v1, v0}, Lw0/i;->l(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/r;->O:Landroidx/lifecycle/n;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final V(Landroidx/fragment/app/r;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v1, v0}, Lw0/i;->l(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/L;->w:Landroidx/fragment/app/r;

    iput-object p1, p0, Landroidx/fragment/app/L;->w:Landroidx/fragment/app/r;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/L;->q(Landroidx/fragment/app/r;)V

    iget-object p1, p0, Landroidx/fragment/app/L;->w:Landroidx/fragment/app/r;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->q(Landroidx/fragment/app/r;)V

    return-void
.end method

.method public final W(Landroidx/fragment/app/r;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->B(Landroidx/fragment/app/r;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_7

    iget-object v0, p1, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget v2, v0, Landroidx/fragment/app/p;->b:I

    :goto_0
    if-nez v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget v3, v0, Landroidx/fragment/app/p;->c:I

    :goto_1
    add-int/2addr v3, v2

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    iget v2, v0, Landroidx/fragment/app/p;->d:I

    :goto_2
    add-int/2addr v2, v3

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    iget v0, v0, Landroidx/fragment/app/p;->e:I

    :goto_3
    add-int/2addr v0, v2

    if-lez v0, :cond_7

    sget v0, LR/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    sget v0, LR/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    sget v0, LR/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/r;

    iget-object p1, p1, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v1, p1, Landroidx/fragment/app/p;->a:Z

    :goto_4
    iget-object p1, p0, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    move-result-object p0

    iput-boolean v1, p0, Landroidx/fragment/app/p;->a:Z

    :cond_7
    :goto_5
    return-void
.end method

.method public final Y()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v0}, Lw0/i;->u()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Q;

    iget-object v2, v1, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-boolean v3, v2, Landroidx/fragment/app/r;->I:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/fragment/app/L;->b:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/L;->H:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/r;->I:Z

    invoke-virtual {v1}, Landroidx/fragment/app/Q;->k()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final Z(Ljava/lang/IllegalStateException;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/fragment/app/U;

    invoke-direct {v0}, Landroidx/fragment/app/U;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array p0, v4, [Ljava/lang/String;

    iget-object v0, v0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {v0, v6, v5, v2, p0}, Landroidx/fragment/app/w;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/L;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    throw p1
.end method

.method public final a(Landroidx/fragment/app/r;)Landroidx/fragment/app/Q;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/r;->N:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, LS/d;->c(Landroidx/fragment/app/r;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "add: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->f(Landroidx/fragment/app/r;)Landroidx/fragment/app/Q;

    move-result-object v0

    iput-object p0, p1, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    iget-object v1, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v1, v0}, Lw0/i;->D(Landroidx/fragment/app/Q;)V

    iget-boolean v2, p1, Landroidx/fragment/app/r;->C:Z

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Lw0/i;->c(Landroidx/fragment/app/r;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/r;->o:Z

    iget-object v2, p1, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-nez v2, :cond_2

    iput-boolean v1, p1, Landroidx/fragment/app/r;->L:Z

    :cond_2
    invoke-static {p1}, Landroidx/fragment/app/L;->F(Landroidx/fragment/app/r;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/L;->D:Z

    :cond_3
    return-object v0
.end method

.method public final a0()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/L;->h:Landroidx/fragment/app/D;

    iput-boolean v2, p0, Landroidx/fragment/app/D;->a:Z

    iget-object p0, p0, Landroidx/fragment/app/D;->c:Landroidx/activity/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/l;->invoke()Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/fragment/app/L;->h:Landroidx/fragment/app/D;

    iget-object v1, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-lez v1, :cond_3

    iget-object p0, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    invoke-static {p0}, Landroidx/fragment/app/L;->I(Landroidx/fragment/app/r;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Landroidx/fragment/app/D;->a:Z

    iget-object p0, v0, Landroidx/fragment/app/D;->c:Landroidx/activity/l;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/activity/l;->invoke()Ljava/lang/Object;

    :cond_4
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Landroidx/fragment/app/v;La4/x;Landroidx/fragment/app/r;)V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-nez v0, :cond_13

    iput-object p1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iput-object p2, p0, Landroidx/fragment/app/L;->u:La4/x;

    iput-object p3, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    iget-object p2, p0, Landroidx/fragment/app/L;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p3, :cond_0

    new-instance v0, Landroidx/fragment/app/H;

    invoke-direct {v0, p3}, Landroidx/fragment/app/H;-><init>(Landroidx/fragment/app/r;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/L;->a0()V

    :cond_2
    if-eqz p1, :cond_4

    iget-object p2, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p2}, Landroidx/activity/i;->getOnBackPressedDispatcher()Landroidx/activity/p;

    move-result-object p2

    iput-object p2, p0, Landroidx/fragment/app/L;->g:Landroidx/activity/p;

    if-eqz p3, :cond_3

    move-object v0, p3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/L;->h:Landroidx/fragment/app/D;

    invoke-virtual {p2, v0, v1}, Landroidx/activity/p;->a(Landroidx/lifecycle/t;Landroidx/fragment/app/D;)V

    :cond_4
    const/4 p2, 0x0

    if-eqz p3, :cond_6

    iget-object p1, p3, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    iget-object p1, p1, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iget-object v0, p1, Landroidx/fragment/app/N;->e:Ljava/util/HashMap;

    iget-object v1, p3, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/N;

    if-nez v1, :cond_5

    new-instance v1, Landroidx/fragment/app/N;

    iget-boolean p1, p1, Landroidx/fragment/app/N;->g:Z

    invoke-direct {v1, p1}, Landroidx/fragment/app/N;-><init>(Z)V

    iget-object p1, p3, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-object v1, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p1}, Landroidx/activity/i;->getViewModelStore()Landroidx/lifecycle/V;

    move-result-object p1

    new-instance v0, Ln1/a;

    sget-object v1, Landroidx/fragment/app/N;->j:Landroidx/fragment/app/G;

    invoke-direct {v0, p1, v1}, Ln1/a;-><init>(Landroidx/lifecycle/V;Landroidx/lifecycle/U;)V

    const-class p1, Landroidx/fragment/app/N;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ln1/a;->i(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Q;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/N;

    iput-object p1, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p1, Landroidx/fragment/app/N;

    invoke-direct {p1, p2}, Landroidx/fragment/app/N;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    :goto_2
    iget-object p1, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iget-boolean v0, p0, Landroidx/fragment/app/L;->E:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Landroidx/fragment/app/L;->F:Z

    if-eqz v0, :cond_a

    :cond_9
    const/4 p2, 0x1

    :cond_a
    iput-boolean p2, p1, Landroidx/fragment/app/N;->i:Z

    iget-object p2, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iput-object p1, p2, Lw0/i;->h:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz p1, :cond_b

    if-nez p3, :cond_b

    iget-object p1, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p1}, Landroidx/activity/i;->getSavedStateRegistry()Ld0/e;

    move-result-object p1

    new-instance p2, Landroidx/fragment/app/s;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Landroidx/fragment/app/s;-><init>(ILjava/lang/Object;)V

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, p2}, Ld0/e;->c(Ljava/lang/String;Ld0/d;)V

    invoke-virtual {p1, v0}, Ld0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->Q(Landroid/os/Parcelable;)V

    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz p1, :cond_d

    iget-object p1, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p1}, Landroidx/activity/i;->getActivityResultRegistry()Landroidx/activity/result/g;

    move-result-object p1

    if-eqz p3, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    const-string v1, ":"

    invoke-static {p2, v0, v1}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_c
    const-string p2, ""

    :goto_3
    const-string v0, "FragmentManager:"

    invoke-static {v0, p2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "StartActivityForResult"

    invoke-static {p2, v0}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/I;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/fragment/app/I;-><init>(I)V

    new-instance v2, Landroidx/fragment/app/C;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/fragment/app/C;-><init>(Landroidx/fragment/app/L;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/g;->d(Ljava/lang/String;Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/L;->z:Landroidx/activity/result/d;

    const-string v0, "StartIntentSenderForResult"

    invoke-static {p2, v0}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/I;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/fragment/app/I;-><init>(I)V

    new-instance v2, Landroidx/fragment/app/C;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Landroidx/fragment/app/C;-><init>(Landroidx/fragment/app/L;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/g;->d(Ljava/lang/String;Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/L;->A:Landroidx/activity/result/d;

    const-string v0, "RequestPermissions"

    invoke-static {p2, v0}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroidx/fragment/app/I;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/fragment/app/I;-><init>(I)V

    new-instance v1, Landroidx/fragment/app/C;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/C;-><init>(Landroidx/fragment/app/L;I)V

    invoke-virtual {p1, p2, v0, v1}, Landroidx/activity/result/g;->d(Ljava/lang/String;Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/d;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/L;->B:Landroidx/activity/result/d;

    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz p1, :cond_e

    iget-object p1, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object p2, p0, Landroidx/fragment/app/L;->n:Landroidx/fragment/app/B;

    invoke-virtual {p1, p2}, Landroidx/activity/i;->addOnConfigurationChangedListener(LJ/a;)V

    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz p1, :cond_f

    iget-object p1, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object p2, p0, Landroidx/fragment/app/L;->o:Landroidx/fragment/app/B;

    invoke-virtual {p1, p2}, Landroidx/activity/i;->addOnTrimMemoryListener(LJ/a;)V

    :cond_f
    iget-object p1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz p1, :cond_10

    iget-object p1, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object p2, p0, Landroidx/fragment/app/L;->p:Landroidx/fragment/app/B;

    invoke-virtual {p1, p2}, Landroidx/activity/i;->addOnMultiWindowModeChangedListener(LJ/a;)V

    :cond_10
    iget-object p1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz p1, :cond_11

    iget-object p1, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object p2, p0, Landroidx/fragment/app/L;->q:Landroidx/fragment/app/B;

    invoke-virtual {p1, p2}, Landroidx/activity/i;->addOnPictureInPictureModeChangedListener(LJ/a;)V

    :cond_11
    iget-object p1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz p1, :cond_12

    if-nez p3, :cond_12

    iget-object p1, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object p0, p0, Landroidx/fragment/app/L;->r:Landroidx/fragment/app/E;

    invoke-virtual {p1, p0}, Landroidx/activity/i;->addMenuProvider(LK/k;)V

    :cond_12
    return-void

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Landroidx/fragment/app/r;)V
    .locals 4

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/r;->C:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p1, Landroidx/fragment/app/r;->C:Z

    iget-boolean v2, p1, Landroidx/fragment/app/r;->n:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v2, p1}, Lw0/i;->c(Landroidx/fragment/app/r;)V

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add from attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/L;->F(Landroidx/fragment/app/r;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/L;->D:Z

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/L;->b:Z

    iget-object v0, p0, Landroidx/fragment/app/L;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/fragment/app/L;->I:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v1}, Lw0/i;->u()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Q;

    iget-object v2, v2, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object v2, v2, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/L;->D()Landroidx/fragment/app/G;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/fragment/app/h;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/G;)Landroidx/fragment/app/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/r;)Landroidx/fragment/app/Q;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object v2, v1, Lw0/i;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/fragment/app/Q;

    iget-object v2, p0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/Q;-><init>(Lw0/c;Lw0/i;Landroidx/fragment/app/r;)V

    iget-object p1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object p1, p1, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Q;->m(Ljava/lang/ClassLoader;)V

    iget p0, p0, Landroidx/fragment/app/L;->s:I

    iput p0, v0, Landroidx/fragment/app/Q;->e:I

    return-object v0
.end method

.method public final g(Landroidx/fragment/app/r;)V
    .locals 4

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/r;->C:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroidx/fragment/app/r;->C:Z

    iget-boolean v3, p1, Landroidx/fragment/app/r;->n:Z

    if-eqz v3, :cond_3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object v1, v0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/r;->n:Z

    invoke-static {p1}, Landroidx/fragment/app/L;->F(Landroidx/fragment/app/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroidx/fragment/app/L;->D:Z

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->W(Landroidx/fragment/app/r;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final h(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->Z(Ljava/lang/IllegalStateException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/r;->F:Z

    if-eqz p1, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/L;->h(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final i()Z
    .locals 4

    iget v0, p0, Landroidx/fragment/app/L;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Landroidx/fragment/app/r;->B:Z

    if-nez v3, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->i()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_3
    return v1
.end method

.method public final j()Z
    .locals 7

    iget v0, p0, Landroidx/fragment/app/L;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v0}, Lw0/i;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/r;

    if-eqz v5, :cond_1

    invoke-static {v5}, Landroidx/fragment/app/L;->H(Landroidx/fragment/app/r;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Landroidx/fragment/app/r;->B:Z

    if-nez v6, :cond_2

    iget-object v6, v5, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v6}, Landroidx/fragment/app/L;->j()Z

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-eqz v6, :cond_1

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/L;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/L;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/L;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iput-object v3, p0, Landroidx/fragment/app/L;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public final k()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/L;->G:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/L;->x(Z)Z

    invoke-virtual {p0}, Landroidx/fragment/app/L;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/h;

    invoke-virtual {v2}, Landroidx/fragment/app/h;->e()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v2, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    if-eqz v1, :cond_1

    iget-object v0, v2, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/N;

    iget-boolean v0, v0, Landroidx/fragment/app/N;->h:Z

    goto :goto_1

    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/L;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackState;

    iget-object v1, v1, Landroidx/fragment/app/BackStackState;->d:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lw0/i;->h:Ljava/lang/Object;

    check-cast v4, Landroidx/fragment/app/N;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    const-string v6, "FragmentManager"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Clearing non-config state for saved state of Fragment "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v4, v3}, Landroidx/fragment/app/N;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/L;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object v1, p0, Landroidx/fragment/app/L;->o:Landroidx/fragment/app/B;

    invoke-virtual {v0, v1}, Landroidx/activity/i;->removeOnTrimMemoryListener(LJ/a;)V

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object v1, p0, Landroidx/fragment/app/L;->n:Landroidx/fragment/app/B;

    invoke-virtual {v0, v1}, Landroidx/activity/i;->removeOnConfigurationChangedListener(LJ/a;)V

    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object v1, p0, Landroidx/fragment/app/L;->p:Landroidx/fragment/app/B;

    invoke-virtual {v0, v1}, Landroidx/activity/i;->removeOnMultiWindowModeChangedListener(LJ/a;)V

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object v1, p0, Landroidx/fragment/app/L;->q:Landroidx/fragment/app/B;

    invoke-virtual {v0, v1}, Landroidx/activity/i;->removeOnPictureInPictureModeChangedListener(LJ/a;)V

    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object v1, p0, Landroidx/fragment/app/L;->r:Landroidx/fragment/app/E;

    invoke-virtual {v0, v1}, Landroidx/activity/i;->removeMenuProvider(LK/k;)V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iput-object v0, p0, Landroidx/fragment/app/L;->u:La4/x;

    iput-object v0, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/L;->g:Landroidx/activity/p;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/fragment/app/L;->h:Landroidx/fragment/app/D;

    iget-object v1, v1, Landroidx/fragment/app/D;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/a;

    invoke-interface {v2}, Landroidx/activity/a;->cancel()V

    goto :goto_3

    :cond_b
    iput-object v0, p0, Landroidx/fragment/app/L;->g:Landroidx/activity/p;

    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/L;->z:Landroidx/activity/result/d;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    iget-object v0, p0, Landroidx/fragment/app/L;->A:Landroidx/activity/result/d;

    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    iget-object p0, p0, Landroidx/fragment/app/L;->B:Landroidx/activity/result/d;

    invoke-virtual {p0}, Landroidx/activity/result/d;->b()V

    :cond_d
    return-void
.end method

.method public final l(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->Z(Ljava/lang/IllegalStateException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/r;->F:Z

    if-eqz p1, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/L;->l(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final m(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->Z(Ljava/lang/IllegalStateException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/L;->m(ZZ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->v()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->i()Z

    iget-object v0, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->n()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o()Z
    .locals 4

    iget v0, p0, Landroidx/fragment/app/L;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Landroidx/fragment/app/r;->B:Z

    if-nez v3, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->o()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_3
    return v1
.end method

.method public final p()V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/L;->s:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroidx/fragment/app/r;->B:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->p()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final q(Landroidx/fragment/app/r;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0, v0}, Lw0/i;->l(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/fragment/app/L;->I(Landroidx/fragment/app/r;)Z

    move-result p0

    iget-object v0, p1, Landroidx/fragment/app/r;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p0, :cond_1

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p1, Landroidx/fragment/app/r;->m:Ljava/lang/Boolean;

    iget-object p0, p1, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {p0}, Landroidx/fragment/app/L;->a0()V

    iget-object p1, p0, Landroidx/fragment/app/L;->w:Landroidx/fragment/app/r;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->q(Landroidx/fragment/app/r;)V

    :cond_1
    return-void
.end method

.method public final r(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->Z(Ljava/lang/IllegalStateException;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/L;->r(ZZ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final s()Z
    .locals 5

    iget v0, p0, Landroidx/fragment/app/L;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/r;

    if-eqz v3, :cond_1

    invoke-static {v3}, Landroidx/fragment/app/L;->H(Landroidx/fragment/app/r;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Landroidx/fragment/app/r;->B:Z

    if-nez v4, :cond_2

    iget-object v3, v3, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v3}, Landroidx/fragment/app/L;->s()Z

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final t(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/L;->b:Z

    iget-object v2, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object v2, v2, Lw0/i;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Q;

    if-eqz v3, :cond_0

    iput p1, v3, Landroidx/fragment/app/Q;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/L;->J(IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/L;->e()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/h;

    invoke-virtual {v2}, Landroidx/fragment/app/h;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/L;->b:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/L;->x(Z)Z

    return-void

    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/L;->b:Z

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const-string v0, "    "

    invoke-static {p1, v0}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lw0/i;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Active Fragments:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Q;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_1d

    iget-object v4, v4, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentId=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroidx/fragment/app/r;->y:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " mContainerId=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroidx/fragment/app/r;->z:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " mTag="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->A:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroidx/fragment/app/r;->d:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " mWho="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " mBackStackNesting="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroidx/fragment/app/r;->t:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAdded="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/r;->n:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mRemoving="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/r;->o:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mFromLayout="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/r;->p:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mInLayout="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/r;->q:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHidden="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/r;->B:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mDetached="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/r;->C:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mMenuVisible="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/r;->E:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mHasMenu="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mRetainInstance="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/r;->D:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mUserVisibleHint="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/r;->J:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v6, v4, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-eqz v6, :cond_0

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentManager="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v6, v4, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-eqz v6, :cond_1

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v6, v4, Landroidx/fragment/app/r;->x:Landroidx/fragment/app/r;

    if-eqz v6, :cond_2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mParentFragment="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->x:Landroidx/fragment/app/r;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v6, v4, Landroidx/fragment/app/r;->i:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mArguments="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->i:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v6, v4, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedFragmentState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v6, v4, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    if-eqz v6, :cond_5

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v6, v4, Landroidx/fragment/app/r;->g:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewRegistryState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->g:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-object v6, v4, Landroidx/fragment/app/r;->j:Landroidx/fragment/app/r;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    iget-object v6, v4, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-eqz v6, :cond_8

    iget-object v8, v4, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v6, v6, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v6, v8}, Lw0/i;->l(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v6

    goto :goto_1

    :cond_8
    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_9

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mTarget="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v6, " mTargetRequestCode="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroidx/fragment/app/r;->l:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mPopDirection="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v6, :cond_a

    move v6, v5

    goto :goto_2

    :cond_a
    iget-boolean v6, v6, Landroidx/fragment/app/p;->a:Z

    :goto_2
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v6, v4, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v6, :cond_b

    move v6, v5

    goto :goto_3

    :cond_b
    iget v6, v6, Landroidx/fragment/app/p;->b:I

    :goto_3
    if-eqz v6, :cond_d

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v6, :cond_c

    move v6, v5

    goto :goto_4

    :cond_c
    iget v6, v6, Landroidx/fragment/app/p;->b:I

    :goto_4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_d
    iget-object v6, v4, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v6, :cond_e

    move v6, v5

    goto :goto_5

    :cond_e
    iget v6, v6, Landroidx/fragment/app/p;->c:I

    :goto_5
    if-eqz v6, :cond_10

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v6, :cond_f

    move v6, v5

    goto :goto_6

    :cond_f
    iget v6, v6, Landroidx/fragment/app/p;->c:I

    :goto_6
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_10
    iget-object v6, v4, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v6, :cond_11

    move v6, v5

    goto :goto_7

    :cond_11
    iget v6, v6, Landroidx/fragment/app/p;->d:I

    :goto_7
    if-eqz v6, :cond_13

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v6, :cond_12

    move v6, v5

    goto :goto_8

    :cond_12
    iget v6, v6, Landroidx/fragment/app/p;->d:I

    :goto_8
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_13
    iget-object v6, v4, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v6, :cond_14

    move v6, v5

    goto :goto_9

    :cond_14
    iget v6, v6, Landroidx/fragment/app/p;->e:I

    :goto_9
    if-eqz v6, :cond_16

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v6, :cond_15

    move v6, v5

    goto :goto_a

    :cond_15
    iget v6, v6, Landroidx/fragment/app/p;->e:I

    :goto_a
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_16
    iget-object v6, v4, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v6, :cond_17

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_17
    iget-object v6, v4, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v6, :cond_18

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mView="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {v4}, Landroidx/fragment/app/r;->d()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-interface {v4}, Landroidx/lifecycle/W;->getViewModelStore()Landroidx/lifecycle/V;

    move-result-object v6

    new-instance v8, Ln1/a;

    sget-object v9, LW/b;->e:LU0/e;

    invoke-direct {v8, v6, v9}, Ln1/a;-><init>(Landroidx/lifecycle/V;Landroidx/lifecycle/U;)V

    const-class v6, LW/b;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    const-string v10, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ln1/a;->i(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Q;

    move-result-object v6

    check-cast v6, LW/b;

    iget-object v6, v6, LW/b;->d:Ln/k;

    iget v8, v6, Ln/k;->f:I

    if-lez v8, :cond_1c

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Loaders:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v8, v6, Ln/k;->f:I

    if-gtz v8, :cond_19

    goto :goto_b

    :cond_19
    iget-object p0, v6, Ln/k;->e:[Ljava/lang/Object;

    aget-object p0, p0, v5

    if-nez p0, :cond_1a

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "  #"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, v6, Ln/k;->d:[I

    aget p0, p0, v5

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    throw v7

    :cond_1a
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_b
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Child "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v4, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const-string v6, "  "

    invoke-static {v2, v6}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p2, p3, p4}, Landroidx/fragment/app/L;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    iget-object p2, v1, Lw0/i;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_1f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Added Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v5

    :goto_c
    if-ge v1, p4, :cond_1f

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/r;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1f
    iget-object p2, p0, Landroidx/fragment/app/L;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_20

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v5

    :goto_d
    if-ge p4, p2, :cond_20

    iget-object v1, p0, Landroidx/fragment/app/L;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/r;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_d

    :cond_20
    iget-object p2, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_21

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v5

    :goto_e
    if-ge p4, p2, :cond_21

    iget-object v1, p0, Landroidx/fragment/app/L;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p3, v2}, Landroidx/fragment/app/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_e

    :cond_21
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Back Stack Index: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Landroidx/fragment/app/L;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_22

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_f
    if-ge v5, p4, :cond_22

    iget-object v0, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/J;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :catchall_0
    move-exception p0

    goto :goto_10

    :cond_22
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/L;->u:La4/x;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz p2, :cond_23

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/L;->s:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/L;->E:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/L;->F:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/L;->G:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroidx/fragment/app/L;->D:Z

    if-eqz p2, :cond_24

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/fragment/app/L;->D:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_24
    return-void

    :goto_10
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final v(Landroidx/fragment/app/J;Z)V
    .locals 2

    if-nez p2, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/L;->G:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has not been attached to a host."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/L;->E:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/fragment/app/L;->F:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Activity has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/L;->S()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final w(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/L;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/L;->G:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has not been attached to a host."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/v;->f:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroidx/fragment/app/L;->E:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/fragment/app/L;->F:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/L;->I:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/L;->I:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/L;->J:Ljava/util/ArrayList;

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called from main thread of fragment host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager is already executing transactions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x(Z)Z
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->w(Z)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/L;->I:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/L;->J:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, p1

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v7, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/J;

    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/J;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/v;->f:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/L;->M:Landroidx/fragment/app/d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v6, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/L;->b:Z

    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/L;->I:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/L;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/L;->P(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0}, Landroidx/fragment/app/L;->d()V

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/L;->d()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/L;->a0()V

    iget-boolean v1, p0, Landroidx/fragment/app/L;->H:Z

    if-eqz v1, :cond_3

    iput-boolean p1, p0, Landroidx/fragment/app/L;->H:Z

    invoke-virtual {p0}, Landroidx/fragment/app/L;->Y()V

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v0

    :goto_3
    :try_start_4
    iget-object v0, p0, Landroidx/fragment/app/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v0, v0, Landroidx/fragment/app/v;->f:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/fragment/app/L;->M:Landroidx/fragment/app/d;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw p1

    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final y(Landroidx/fragment/app/a;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/L;->G:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/L;->w(Z)V

    iget-object p2, p0, Landroidx/fragment/app/L;->I:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/L;->J:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/L;->b:Z

    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/L;->I:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/fragment/app/L;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/L;->P(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/L;->d()V

    invoke-virtual {p0}, Landroidx/fragment/app/L;->a0()V

    iget-boolean p1, p0, Landroidx/fragment/app/L;->H:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/L;->H:Z

    invoke-virtual {p0}, Landroidx/fragment/app/L;->Y()V

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/L;->d()V

    throw p1
.end method

.method public final z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    iget-boolean v5, v5, Landroidx/fragment/app/a;->o:Z

    iget-object v6, v0, Landroidx/fragment/app/L;->K:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroidx/fragment/app/L;->K:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v6, v0, Landroidx/fragment/app/L;->K:Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v7}, Lw0/i;->x()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v0, Landroidx/fragment/app/L;->w:Landroidx/fragment/app/r;

    move v9, v3

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v9, v4, :cond_13

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/fragment/app/a;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_d

    iget-object v14, v0, Landroidx/fragment/app/L;->K:Ljava/util/ArrayList;

    const/4 v12, 0x0

    :goto_2
    iget-object v8, v13, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v12, v15, :cond_c

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/S;

    iget v3, v15, Landroidx/fragment/app/S;->a:I

    if-eq v3, v11, :cond_b

    const/4 v11, 0x2

    const/16 v2, 0x9

    if-eq v3, v11, :cond_5

    const/4 v11, 0x3

    if-eq v3, v11, :cond_4

    const/4 v11, 0x6

    if-eq v3, v11, :cond_4

    const/4 v11, 0x7

    if-eq v3, v11, :cond_3

    const/16 v11, 0x8

    if-eq v3, v11, :cond_1

    goto :goto_3

    :cond_1
    new-instance v3, Landroidx/fragment/app/S;

    const/4 v11, 0x0

    invoke-direct {v3, v2, v6, v11}, Landroidx/fragment/app/S;-><init>(ILandroidx/fragment/app/r;I)V

    invoke-virtual {v8, v12, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v15, Landroidx/fragment/app/S;->c:Z

    add-int/lit8 v12, v12, 0x1

    iget-object v2, v15, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    move-object v6, v2

    :cond_2
    :goto_3
    move-object/from16 v20, v7

    const/4 v1, 0x1

    goto/16 :goto_8

    :cond_3
    move-object/from16 v20, v7

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_4
    iget-object v3, v15, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v15, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    if-ne v3, v6, :cond_2

    new-instance v6, Landroidx/fragment/app/S;

    invoke-direct {v6, v2, v3}, Landroidx/fragment/app/S;-><init>(ILandroidx/fragment/app/r;)V

    invoke-virtual {v8, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v20, v7

    const/4 v1, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_5
    iget-object v3, v15, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    iget v11, v3, Landroidx/fragment/app/r;->z:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v2, v17

    const/16 v17, 0x0

    :goto_4
    if-ltz v2, :cond_9

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    check-cast v7, Landroidx/fragment/app/r;

    iget v1, v7, Landroidx/fragment/app/r;->z:I

    if-ne v1, v11, :cond_8

    if-ne v7, v3, :cond_6

    move/from16 v18, v11

    const/4 v1, 0x1

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    if-ne v7, v6, :cond_7

    new-instance v1, Landroidx/fragment/app/S;

    move/from16 v18, v11

    const/4 v6, 0x0

    const/16 v11, 0x9

    invoke-direct {v1, v11, v7, v6}, Landroidx/fragment/app/S;-><init>(ILandroidx/fragment/app/r;I)V

    invoke-virtual {v8, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move v1, v6

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    move/from16 v18, v11

    const/4 v1, 0x0

    const/16 v11, 0x9

    :goto_5
    new-instance v11, Landroidx/fragment/app/S;

    move-object/from16 v21, v6

    const/4 v6, 0x3

    invoke-direct {v11, v6, v7, v1}, Landroidx/fragment/app/S;-><init>(ILandroidx/fragment/app/r;I)V

    iget v1, v15, Landroidx/fragment/app/S;->d:I

    iput v1, v11, Landroidx/fragment/app/S;->d:I

    iget v1, v15, Landroidx/fragment/app/S;->f:I

    iput v1, v11, Landroidx/fragment/app/S;->f:I

    iget v1, v15, Landroidx/fragment/app/S;->e:I

    iput v1, v11, Landroidx/fragment/app/S;->e:I

    iget v1, v15, Landroidx/fragment/app/S;->g:I

    iput v1, v11, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v8, v12, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    add-int/2addr v12, v1

    move-object/from16 v6, v21

    goto :goto_6

    :cond_8
    move/from16 v18, v11

    const/4 v1, 0x1

    :goto_6
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v1, p1

    move/from16 v11, v18

    move-object/from16 v7, v20

    goto :goto_4

    :cond_9
    move-object/from16 v20, v7

    const/4 v1, 0x1

    if-eqz v17, :cond_a

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    :cond_a
    iput v1, v15, Landroidx/fragment/app/S;->a:I

    iput-boolean v1, v15, Landroidx/fragment/app/S;->c:Z

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move-object/from16 v20, v7

    move v1, v11

    :goto_7
    iget-object v2, v15, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v12, v1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v11, v1

    move-object/from16 v7, v20

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v20, v7

    goto :goto_b

    :cond_d
    move-object/from16 v20, v7

    move v1, v11

    iget-object v2, v0, Landroidx/fragment/app/L;->K:Ljava/util/ArrayList;

    iget-object v3, v13, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    :goto_9
    if-ltz v7, :cond_10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/S;

    iget v11, v8, Landroidx/fragment/app/S;->a:I

    if-eq v11, v1, :cond_f

    const/4 v1, 0x3

    if-eq v11, v1, :cond_e

    packed-switch v11, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    iget-object v11, v8, Landroidx/fragment/app/S;->h:Landroidx/lifecycle/n;

    iput-object v11, v8, Landroidx/fragment/app/S;->i:Landroidx/lifecycle/n;

    goto :goto_a

    :pswitch_1
    iget-object v6, v8, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    goto :goto_a

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_a

    :cond_e
    :pswitch_3
    iget-object v8, v8, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    const/4 v1, 0x3

    :pswitch_4
    iget-object v8, v8, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v7, v7, -0x1

    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    :goto_b
    if-nez v10, :cond_12

    iget-boolean v1, v13, Landroidx/fragment/app/a;->g:Z

    if-eqz v1, :cond_11

    goto :goto_c

    :cond_11
    const/4 v10, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v10, 0x1

    :goto_d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v7, v20

    goto/16 :goto_1

    :cond_13
    move-object/from16 v20, v7

    iget-object v1, v0, Landroidx/fragment/app/L;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_16

    iget v1, v0, Landroidx/fragment/app/L;->s:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_16

    move/from16 v1, p3

    :goto_e
    if-ge v1, v4, :cond_16

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-object v3, v3, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/S;

    iget-object v5, v5, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    if-eqz v5, :cond_14

    iget-object v6, v5, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-eqz v6, :cond_14

    invoke-virtual {v0, v5}, Landroidx/fragment/app/L;->f(Landroidx/fragment/app/r;)Landroidx/fragment/app/Q;

    move-result-object v5

    move-object/from16 v6, v20

    invoke-virtual {v6, v5}, Lw0/i;->D(Landroidx/fragment/app/Q;)V

    goto :goto_10

    :cond_14
    move-object/from16 v6, v20

    :goto_10
    move-object/from16 v20, v6

    goto :goto_f

    :cond_15
    move-object/from16 v6, v20

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_16
    move-object/from16 v2, p1

    move/from16 v1, p3

    :goto_11
    const/4 v3, -0x1

    if-ge v1, v4, :cond_22

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    move-object/from16 v6, p2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "Unknown cmd: "

    if-eqz v7, :cond_1e

    invoke-virtual {v5, v3}, Landroidx/fragment/app/a;->c(I)V

    iget-object v3, v5, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    :goto_12
    if-ltz v7, :cond_1d

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/S;

    iget-object v11, v10, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    if-eqz v11, :cond_1c

    iget-object v12, v11, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v12, :cond_17

    goto :goto_13

    :cond_17
    invoke-virtual {v11}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    move-result-object v12

    iput-boolean v9, v12, Landroidx/fragment/app/p;->a:Z

    :goto_13
    iget v9, v5, Landroidx/fragment/app/a;->f:I

    const/16 v12, 0x2002

    const/16 v13, 0x1001

    if-eq v9, v13, :cond_1a

    if-eq v9, v12, :cond_18

    const/16 v12, 0x1004

    const/16 v13, 0x2005

    if-eq v9, v13, :cond_1a

    const/16 v14, 0x1003

    if-eq v9, v14, :cond_19

    if-eq v9, v12, :cond_18

    const/4 v12, 0x0

    goto :goto_14

    :cond_18
    move v12, v13

    goto :goto_14

    :cond_19
    move v12, v14

    :cond_1a
    :goto_14
    iget-object v9, v11, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v9, :cond_1b

    if-nez v12, :cond_1b

    goto :goto_15

    :cond_1b
    invoke-virtual {v11}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    iget-object v9, v11, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    iput v12, v9, Landroidx/fragment/app/p;->f:I

    :goto_15
    invoke-virtual {v11}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    iget-object v9, v11, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1c
    iget v9, v10, Landroidx/fragment/app/S;->a:I

    iget-object v12, v5, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/L;

    packed-switch v9, :pswitch_data_1

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v10, Landroidx/fragment/app/S;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    iget-object v9, v10, Landroidx/fragment/app/S;->h:Landroidx/lifecycle/n;

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/L;->U(Landroidx/fragment/app/r;Landroidx/lifecycle/n;)V

    :goto_16
    const/4 v9, 0x1

    goto/16 :goto_17

    :pswitch_7
    invoke-virtual {v12, v11}, Landroidx/fragment/app/L;->V(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_8
    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/fragment/app/L;->V(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_9
    iget v9, v10, Landroidx/fragment/app/S;->d:I

    iget v13, v10, Landroidx/fragment/app/S;->e:I

    iget v14, v10, Landroidx/fragment/app/S;->f:I

    iget v10, v10, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/r;->z(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/L;->T(Landroidx/fragment/app/r;Z)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/L;->g(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_a
    iget v9, v10, Landroidx/fragment/app/S;->d:I

    iget v13, v10, Landroidx/fragment/app/S;->e:I

    iget v14, v10, Landroidx/fragment/app/S;->f:I

    iget v10, v10, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/r;->z(IIII)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/L;->c(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_b
    iget v9, v10, Landroidx/fragment/app/S;->d:I

    iget v13, v10, Landroidx/fragment/app/S;->e:I

    iget v14, v10, Landroidx/fragment/app/S;->f:I

    iget v10, v10, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/r;->z(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/L;->T(Landroidx/fragment/app/r;Z)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/L;->E(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_c
    iget v9, v10, Landroidx/fragment/app/S;->d:I

    iget v13, v10, Landroidx/fragment/app/S;->e:I

    iget v14, v10, Landroidx/fragment/app/S;->f:I

    iget v10, v10, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/r;->z(IIII)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/fragment/app/L;->X(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_d
    iget v9, v10, Landroidx/fragment/app/S;->d:I

    iget v13, v10, Landroidx/fragment/app/S;->e:I

    iget v14, v10, Landroidx/fragment/app/S;->f:I

    iget v10, v10, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/r;->z(IIII)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/L;->a(Landroidx/fragment/app/r;)Landroidx/fragment/app/Q;

    goto :goto_16

    :pswitch_e
    iget v9, v10, Landroidx/fragment/app/S;->d:I

    iget v13, v10, Landroidx/fragment/app/S;->e:I

    iget v14, v10, Landroidx/fragment/app/S;->f:I

    iget v10, v10, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Landroidx/fragment/app/r;->z(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v9}, Landroidx/fragment/app/L;->T(Landroidx/fragment/app/r;Z)V

    invoke-virtual {v12, v11}, Landroidx/fragment/app/L;->O(Landroidx/fragment/app/r;)V

    :goto_17
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_12

    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_1d

    :cond_1e
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroidx/fragment/app/a;->c(I)V

    iget-object v3, v5, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v7, :cond_1d

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/S;

    iget-object v10, v9, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    if-eqz v10, :cond_21

    iget-object v12, v10, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v12, :cond_1f

    goto :goto_19

    :cond_1f
    invoke-virtual {v10}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    move-result-object v12

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/fragment/app/p;->a:Z

    :goto_19
    iget v12, v5, Landroidx/fragment/app/a;->f:I

    iget-object v13, v10, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v13, :cond_20

    if-nez v12, :cond_20

    goto :goto_1a

    :cond_20
    invoke-virtual {v10}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    iget-object v13, v10, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    iput v12, v13, Landroidx/fragment/app/p;->f:I

    :goto_1a
    invoke-virtual {v10}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    iget-object v12, v10, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_21
    iget v12, v9, Landroidx/fragment/app/S;->a:I

    iget-object v13, v5, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/L;

    packed-switch v12, :pswitch_data_2

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v9, Landroidx/fragment/app/S;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    iget-object v9, v9, Landroidx/fragment/app/S;->i:Landroidx/lifecycle/n;

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/L;->U(Landroidx/fragment/app/r;Landroidx/lifecycle/n;)V

    :goto_1b
    const/4 v9, 0x0

    goto/16 :goto_1c

    :pswitch_11
    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Landroidx/fragment/app/L;->V(Landroidx/fragment/app/r;)V

    goto :goto_1b

    :pswitch_12
    const/4 v12, 0x0

    invoke-virtual {v13, v10}, Landroidx/fragment/app/L;->V(Landroidx/fragment/app/r;)V

    goto :goto_1b

    :pswitch_13
    const/4 v12, 0x0

    iget v14, v9, Landroidx/fragment/app/S;->d:I

    iget v15, v9, Landroidx/fragment/app/S;->e:I

    iget v12, v9, Landroidx/fragment/app/S;->f:I

    iget v9, v9, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v10, v14, v15, v12, v9}, Landroidx/fragment/app/r;->z(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/L;->T(Landroidx/fragment/app/r;Z)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/L;->c(Landroidx/fragment/app/r;)V

    goto :goto_1b

    :pswitch_14
    iget v12, v9, Landroidx/fragment/app/S;->d:I

    iget v14, v9, Landroidx/fragment/app/S;->e:I

    iget v15, v9, Landroidx/fragment/app/S;->f:I

    iget v9, v9, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/r;->z(IIII)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/L;->g(Landroidx/fragment/app/r;)V

    goto :goto_1b

    :pswitch_15
    iget v12, v9, Landroidx/fragment/app/S;->d:I

    iget v14, v9, Landroidx/fragment/app/S;->e:I

    iget v15, v9, Landroidx/fragment/app/S;->f:I

    iget v9, v9, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/r;->z(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/L;->T(Landroidx/fragment/app/r;Z)V

    invoke-static {v10}, Landroidx/fragment/app/L;->X(Landroidx/fragment/app/r;)V

    goto :goto_1b

    :pswitch_16
    iget v12, v9, Landroidx/fragment/app/S;->d:I

    iget v14, v9, Landroidx/fragment/app/S;->e:I

    iget v15, v9, Landroidx/fragment/app/S;->f:I

    iget v9, v9, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/r;->z(IIII)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/L;->E(Landroidx/fragment/app/r;)V

    goto :goto_1b

    :pswitch_17
    iget v12, v9, Landroidx/fragment/app/S;->d:I

    iget v14, v9, Landroidx/fragment/app/S;->e:I

    iget v15, v9, Landroidx/fragment/app/S;->f:I

    iget v9, v9, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/r;->z(IIII)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/L;->O(Landroidx/fragment/app/r;)V

    goto :goto_1b

    :pswitch_18
    iget v12, v9, Landroidx/fragment/app/S;->d:I

    iget v14, v9, Landroidx/fragment/app/S;->e:I

    iget v15, v9, Landroidx/fragment/app/S;->f:I

    iget v9, v9, Landroidx/fragment/app/S;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Landroidx/fragment/app/r;->z(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v13, v10, v9}, Landroidx/fragment/app/L;->T(Landroidx/fragment/app/r;Z)V

    invoke-virtual {v13, v10}, Landroidx/fragment/app/L;->a(Landroidx/fragment/app/r;)Landroidx/fragment/app/Q;

    :goto_1c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_18

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    :cond_22
    move-object/from16 v6, p2

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v5, p3

    :goto_1e
    if-ge v5, v4, :cond_27

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    if-eqz v1, :cond_24

    iget-object v8, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_1f
    if-ltz v8, :cond_26

    iget-object v9, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/S;

    iget-object v9, v9, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    if-eqz v9, :cond_23

    invoke-virtual {v0, v9}, Landroidx/fragment/app/L;->f(Landroidx/fragment/app/r;)Landroidx/fragment/app/Q;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/Q;->k()V

    :cond_23
    add-int/lit8 v8, v8, -0x1

    goto :goto_1f

    :cond_24
    iget-object v7, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_25
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/S;

    iget-object v8, v8, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    if-eqz v8, :cond_25

    invoke-virtual {v0, v8}, Landroidx/fragment/app/L;->f(Landroidx/fragment/app/r;)Landroidx/fragment/app/Q;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/Q;->k()V

    goto :goto_20

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_27
    iget v5, v0, Landroidx/fragment/app/L;->s:I

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7}, Landroidx/fragment/app/L;->J(IZ)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move/from16 v7, p3

    :goto_21
    if-ge v7, v4, :cond_2a

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    iget-object v8, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_28
    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/S;

    iget-object v9, v9, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/r;

    if-eqz v9, :cond_28

    iget-object v9, v9, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v9, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/L;->D()Landroidx/fragment/app/G;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/fragment/app/h;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/G;)Landroidx/fragment/app/h;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_2a
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/h;

    iput-boolean v1, v5, Landroidx/fragment/app/h;->d:Z

    iget-object v7, v5, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    invoke-virtual {v5}, Landroidx/fragment/app/h;->g()V

    const/4 v8, 0x0

    iput-boolean v8, v5, Landroidx/fragment/app/h;->e:Z

    iget-object v9, v5, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_24
    if-ltz v9, :cond_2c

    iget-object v10, v5, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/W;

    iget-object v11, v10, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    iget-object v11, v11, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-static {v11}, LB/a;->c(Landroid/view/View;)I

    move-result v11

    iget v12, v10, Landroidx/fragment/app/W;->a:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2b

    if-eq v11, v13, :cond_2b

    iget-object v9, v10, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    iget-object v9, v9, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    iput-boolean v8, v5, Landroidx/fragment/app/h;->e:Z

    goto :goto_25

    :catchall_0
    move-exception v0

    goto :goto_26

    :cond_2b
    add-int/lit8 v9, v9, -0x1

    goto :goto_24

    :cond_2c
    :goto_25
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroidx/fragment/app/h;->c()V

    goto :goto_23

    :goto_26
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2d
    move/from16 v0, p3

    :goto_27
    if-ge v0, v4, :cond_2f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2e

    iget v5, v1, Landroidx/fragment/app/a;->r:I

    if-ltz v5, :cond_2e

    iput v3, v1, Landroidx/fragment/app/a;->r:I

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_2f
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
