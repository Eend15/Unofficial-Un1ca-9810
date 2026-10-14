.class public final Landroidx/fragment/app/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw0/c;

.field public final b:Lw0/i;

.field public final c:Landroidx/fragment/app/r;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Lw0/c;Lw0/i;Landroidx/fragment/app/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Q;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/Q;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/Q;->b:Lw0/i;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    return-void
.end method

.method public constructor <init>(Lw0/c;Lw0/i;Landroidx/fragment/app/r;Landroidx/fragment/app/FragmentState;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Landroidx/fragment/app/Q;->d:Z

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Landroidx/fragment/app/Q;->e:I

    .line 36
    iput-object p1, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    .line 37
    iput-object p2, p0, Landroidx/fragment/app/Q;->b:Lw0/i;

    .line 38
    iput-object p3, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    const/4 p0, 0x0

    .line 39
    iput-object p0, p3, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    .line 40
    iput-object p0, p3, Landroidx/fragment/app/r;->g:Landroid/os/Bundle;

    .line 41
    iput v0, p3, Landroidx/fragment/app/r;->t:I

    .line 42
    iput-boolean v0, p3, Landroidx/fragment/app/r;->q:Z

    .line 43
    iput-boolean v0, p3, Landroidx/fragment/app/r;->n:Z

    .line 44
    iget-object p1, p3, Landroidx/fragment/app/r;->j:Landroidx/fragment/app/r;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p3, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    .line 45
    iput-object p0, p3, Landroidx/fragment/app/r;->j:Landroidx/fragment/app/r;

    .line 46
    iget-object p0, p4, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 47
    iput-object p0, p3, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    goto :goto_1

    .line 48
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iput-object p0, p3, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lw0/c;Lw0/i;Ljava/lang/ClassLoader;Landroidx/fragment/app/F;Landroidx/fragment/app/FragmentState;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/Q;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/Q;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/Q;->b:Lw0/i;

    .line 12
    iget-object p1, p5, Landroidx/fragment/app/FragmentState;->d:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroidx/fragment/app/F;->a(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object p1

    .line 13
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 15
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/fragment/app/r;->A(Landroid/os/Bundle;)V

    .line 16
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->e:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    .line 17
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->f:Z

    iput-boolean p2, p1, Landroidx/fragment/app/r;->p:Z

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p1, Landroidx/fragment/app/r;->r:Z

    .line 19
    iget p2, p5, Landroidx/fragment/app/FragmentState;->g:I

    iput p2, p1, Landroidx/fragment/app/r;->y:I

    .line 20
    iget p2, p5, Landroidx/fragment/app/FragmentState;->h:I

    iput p2, p1, Landroidx/fragment/app/r;->z:I

    .line 21
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->i:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/r;->A:Ljava/lang/String;

    .line 22
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->j:Z

    iput-boolean p2, p1, Landroidx/fragment/app/r;->D:Z

    .line 23
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->k:Z

    iput-boolean p2, p1, Landroidx/fragment/app/r;->o:Z

    .line 24
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->l:Z

    iput-boolean p2, p1, Landroidx/fragment/app/r;->C:Z

    .line 25
    iget-boolean p2, p5, Landroidx/fragment/app/FragmentState;->n:Z

    iput-boolean p2, p1, Landroidx/fragment/app/r;->B:Z

    .line 26
    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/FragmentState;->o:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/r;->O:Landroidx/lifecycle/n;

    .line 27
    iget-object p2, p5, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 28
    iput-object p2, p1, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    goto :goto_0

    .line 29
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    .line 30
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    const/4 p0, 0x2

    .line 31
    const-string p2, "FragmentManager"

    invoke-static {p2, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const-string v0, "FragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    iget-object v3, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v3, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    iget-object v2, v3, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v2}, Landroidx/fragment/app/L;->K()V

    iput v1, v3, Landroidx/fragment/app/r;->d:I

    const/4 v2, 0x0

    iput-boolean v2, v3, Landroidx/fragment/app/r;->F:Z

    invoke-virtual {v3}, Landroidx/fragment/app/r;->k()V

    iget-boolean v4, v3, Landroidx/fragment/app/r;->F:Z

    const-string v5, "Fragment "

    if-eqz v4, :cond_6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "moveto RESTORE_VIEW_STATE: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v3, Landroidx/fragment/app/r;->H:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v4, v3, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    iget-object v6, v3, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    if-eqz v6, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v1, v3, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    :cond_2
    iget-object v0, v3, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v3, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    iget-object v6, v3, Landroidx/fragment/app/r;->g:Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/fragment/app/T;->g:Ld0/f;

    invoke-virtual {v0, v6}, Ld0/f;->b(Landroid/os/Bundle;)V

    iput-object v1, v3, Landroidx/fragment/app/r;->g:Landroid/os/Bundle;

    :cond_3
    iput-boolean v2, v3, Landroidx/fragment/app/r;->F:Z

    invoke-virtual {v3, v4}, Landroidx/fragment/app/r;->v(Landroid/os/Bundle;)V

    iget-boolean v0, v3, Landroidx/fragment/app/r;->F:Z

    if-eqz v0, :cond_4

    iget-object v0, v3, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, v3, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    sget-object v4, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/T;->a(Landroidx/lifecycle/m;)V

    goto :goto_0

    :cond_4
    new-instance p0, Landroidx/fragment/app/X;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    iput-object v1, v3, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    iget-object v0, v3, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iput-boolean v2, v0, Landroidx/fragment/app/L;->E:Z

    iput-boolean v2, v0, Landroidx/fragment/app/L;->F:Z

    iget-object v1, v0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v2, v1, Landroidx/fragment/app/N;->i:Z

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/fragment/app/L;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {p0, v2}, Lw0/c;->i(Z)V

    return-void

    :cond_6
    new-instance p0, Landroidx/fragment/app/X;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/Q;->b:Lw0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_0
    if-ltz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/r;

    iget-object v6, v5, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-ne v6, v1, :cond_1

    iget-object v5, v5, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/r;

    iget-object v5, v4, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-ne v5, v1, :cond_3

    iget-object v4, v4, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v4, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {v0, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final c()V
    .locals 7

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto ATTACHED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/r;->j:Landroidx/fragment/app/r;

    const/4 v1, 0x0

    const-string v3, " that does not belong to this FragmentManager!"

    const-string v4, " declared target fragment "

    iget-object v5, p0, Landroidx/fragment/app/Q;->b:Lw0/i;

    const-string v6, "Fragment "

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iget-object v5, v5, Lw0/i;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Q;

    if-eqz v0, :cond_1

    iget-object v3, v2, Landroidx/fragment/app/r;->j:Landroidx/fragment/app/r;

    iget-object v3, v3, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iput-object v3, v2, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    iput-object v1, v2, Landroidx/fragment/app/r;->j:Landroidx/fragment/app/r;

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/fragment/app/r;->j:Landroidx/fragment/app/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, v2, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, v5, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Q;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    invoke-static {v0, v1, v3}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/Q;->k()V

    :cond_5
    iget-object v0, v2, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    iget-object v1, v0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iput-object v1, v2, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    iput-object v0, v2, Landroidx/fragment/app/r;->x:Landroidx/fragment/app/r;

    iget-object p0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw0/c;->v(Z)V

    iget-object v1, v2, Landroidx/fragment/app/r;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/n;

    iget-object v4, v4, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/r;

    iget-object v5, v4, Landroidx/fragment/app/r;->S:Ld0/f;

    invoke-virtual {v5}, Ld0/f;->a()V

    invoke-static {v4}, Landroidx/lifecycle/K;->d(Ld0/g;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iget-object v3, v2, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    invoke-virtual {v2}, Landroidx/fragment/app/r;->a()La4/x;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Landroidx/fragment/app/L;->b(Landroidx/fragment/app/v;La4/x;Landroidx/fragment/app/r;)V

    iput v0, v2, Landroidx/fragment/app/r;->d:I

    iput-boolean v0, v2, Landroidx/fragment/app/r;->F:Z

    iget-object v1, v2, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/r;->m(Landroidx/fragment/app/w;)V

    iget-boolean v1, v2, Landroidx/fragment/app/r;->F:Z

    if-eqz v1, :cond_8

    iget-object v1, v2, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    iget-object v1, v1, Landroidx/fragment/app/L;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/O;

    invoke-interface {v3, v2}, Landroidx/fragment/app/O;->b(Landroidx/fragment/app/r;)V

    goto :goto_2

    :cond_7
    iget-object v1, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iput-boolean v0, v1, Landroidx/fragment/app/L;->E:Z

    iput-boolean v0, v1, Landroidx/fragment/app/L;->F:Z

    iget-object v2, v1, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v0, v2, Landroidx/fragment/app/N;->i:Z

    invoke-virtual {v1, v0}, Landroidx/fragment/app/L;->t(I)V

    invoke-virtual {p0, v0}, Lw0/c;->n(Z)V

    return-void

    :cond_8
    new-instance p0, Landroidx/fragment/app/X;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onAttach()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()I
    .locals 11

    iget-object v0, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object v1, v0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-nez v1, :cond_0

    iget p0, v0, Landroidx/fragment/app/r;->d:I

    return p0

    :cond_0
    iget v1, p0, Landroidx/fragment/app/Q;->e:I

    iget-object v2, v0, Landroidx/fragment/app/r;->O:Landroidx/lifecycle/n;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, -0x1

    const/4 v9, 0x4

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v9, :cond_4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-boolean v2, v0, Landroidx/fragment/app/r;->p:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Landroidx/fragment/app/r;->q:Z

    if-eqz v2, :cond_5

    iget p0, p0, Landroidx/fragment/app/Q;->e:I

    invoke-static {p0, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object p0, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_7

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget p0, p0, Landroidx/fragment/app/Q;->e:I

    if-ge p0, v9, :cond_6

    iget p0, v0, Landroidx/fragment/app/r;->d:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-boolean p0, v0, Landroidx/fragment/app/r;->n:Z

    if-nez p0, :cond_8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-object p0, v0, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz p0, :cond_d

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/L;->D()Landroidx/fragment/app/G;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/fragment/app/h;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/G;)Landroidx/fragment/app/h;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/h;->d(Landroidx/fragment/app/r;)Landroidx/fragment/app/W;

    move-result-object v2

    if-eqz v2, :cond_9

    iget v6, v2, Landroidx/fragment/app/W;->b:I

    :cond_9
    iget-object p0, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/W;

    iget-object v10, v2, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-boolean v10, v2, Landroidx/fragment/app/W;->f:Z

    if-nez v10, :cond_a

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_d

    if-eqz v6, :cond_c

    if-ne v6, v3, :cond_d

    :cond_c
    iget p0, v2, Landroidx/fragment/app/W;->b:I

    move v6, p0

    :cond_d
    if-ne v6, v4, :cond_e

    const/4 p0, 0x6

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_e
    if-ne v6, v5, :cond_f

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_f
    iget-boolean p0, v0, Landroidx/fragment/app/r;->o:Z

    if-eqz p0, :cond_11

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_10
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_11
    :goto_3
    iget-boolean p0, v0, Landroidx/fragment/app/r;->I:Z

    if-eqz p0, :cond_12

    iget p0, v0, Landroidx/fragment/app/r;->d:I

    if-ge p0, v7, :cond_12

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_12
    const-string p0, "FragmentManager"

    invoke-static {p0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computeExpectedState() of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v1
.end method

.method public final e()V
    .locals 6

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v2, Landroidx/fragment/app/r;->M:Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {p0, v1}, Lw0/c;->w(Z)V

    iget-object v0, v2, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    iget-object v4, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v4}, Landroidx/fragment/app/L;->K()V

    iput v3, v2, Landroidx/fragment/app/r;->d:I

    iput-boolean v1, v2, Landroidx/fragment/app/r;->F:Z

    iget-object v4, v2, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    new-instance v5, Landroidx/fragment/app/Fragment$6;

    invoke-direct {v5, v2}, Landroidx/fragment/app/Fragment$6;-><init>(Landroidx/fragment/app/r;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    iget-object v4, v2, Landroidx/fragment/app/r;->S:Ld0/f;

    invoke-virtual {v4, v0}, Ld0/f;->b(Landroid/os/Bundle;)V

    invoke-virtual {v2, v0}, Landroidx/fragment/app/r;->n(Landroid/os/Bundle;)V

    iput-boolean v3, v2, Landroidx/fragment/app/r;->M:Z

    iget-boolean v0, v2, Landroidx/fragment/app/r;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    sget-object v2, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    invoke-virtual {p0, v1}, Lw0/c;->r(Z)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/fragment/app/X;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v2, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    if-eqz p0, :cond_3

    const-string v0, "android:support:fragments"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v0, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/L;->Q(Landroid/os/Parcelable;)V

    iget-object p0, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iput-boolean v1, p0, Landroidx/fragment/app/L;->E:Z

    iput-boolean v1, p0, Landroidx/fragment/app/L;->F:Z

    iget-object v0, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v1, v0, Landroidx/fragment/app/N;->i:Z

    invoke-virtual {p0, v3}, Landroidx/fragment/app/L;->t(I)V

    :cond_3
    iput v3, v2, Landroidx/fragment/app/r;->d:I

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-boolean v1, v0, Landroidx/fragment/app/r;->p:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATE_VIEW: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->r(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, v0, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v3, v0, Landroidx/fragment/app/r;->z:I

    if-eqz v3, :cond_6

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget-object v4, v0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    iget-object v4, v4, Landroidx/fragment/app/L;->u:La4/x;

    invoke-virtual {v4, v3}, La4/x;->O(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    iget-boolean v4, v0, Landroidx/fragment/app/r;->r:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/r;->x()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, v0, Landroidx/fragment/app/r;->z:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "unknown"

    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroidx/fragment/app/r;->z:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") for fragment "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    instance-of v4, v3, Landroidx/fragment/app/FragmentContainerView;

    if-nez v4, :cond_7

    sget-object v4, LS/d;->a:LS/c;

    new-instance v4, LS/e;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v3, v5}, LS/e;-><init>(Landroidx/fragment/app/r;Landroid/view/ViewGroup;I)V

    invoke-static {v4}, LS/d;->b(LS/f;)V

    invoke-static {v0}, LS/d;->a(Landroidx/fragment/app/r;)LS/c;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for a container view with no id"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_1
    iput-object v3, v0, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v4}, Landroidx/fragment/app/r;->w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    const/4 v4, 0x2

    if-eqz v1, :cond_c

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    sget v6, LR/b;->fragment_container_view_tag:I

    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Q;->b()V

    :cond_8
    iget-boolean v1, v0, Landroidx/fragment/app/r;->B:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v1, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    sget-object v3, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-static {v1}, LK/v;->c(Landroid/view/View;)V

    goto :goto_2

    :cond_a
    iget-object v1, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    new-instance v3, Landroidx/fragment/app/P;

    invoke-direct {v3, v1}, Landroidx/fragment/app/P;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_2
    iget-object v1, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/L;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {p0, v5}, Lw0/c;->B(Z)V

    iget-object p0, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    iget-object v1, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    move-result-object v3

    iput v1, v3, Landroidx/fragment/app/p;->j:F

    iget-object v1, v0, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    if-nez p0, :cond_c

    iget-object p0, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {v0}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    move-result-object v1

    iput-object p0, v1, Landroidx/fragment/app/p;->k:Landroid/view/View;

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "requestFocus: Saved focused view "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for Fragment "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object p0, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    iput v4, v0, Landroidx/fragment/app/r;->d:I

    return-void
.end method

.method public final g()V
    .locals 8

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "movefrom CREATED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v2, Landroidx/fragment/app/r;->o:Z

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroidx/fragment/app/r;->j()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/Q;->b:Lw0/i;

    if-eqz v0, :cond_2

    iget-object v5, v2, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iget-object v6, v4, Lw0/i;->g:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentState;

    :cond_2
    if-nez v0, :cond_7

    iget-object v5, v4, Lw0/i;->h:Ljava/lang/Object;

    check-cast v5, Landroidx/fragment/app/N;

    iget-object v6, v5, Landroidx/fragment/app/N;->d:Ljava/util/HashMap;

    iget-object v7, v2, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v5, v1

    goto :goto_1

    :cond_4
    iget-boolean v6, v5, Landroidx/fragment/app/N;->g:Z

    if-eqz v6, :cond_3

    iget-boolean v5, v5, Landroidx/fragment/app/N;->h:Z

    :goto_1
    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, v2, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {v4, p0}, Lw0/i;->l(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-boolean v0, p0, Landroidx/fragment/app/r;->D:Z

    if-eqz v0, :cond_6

    iput-object p0, v2, Landroidx/fragment/app/r;->j:Landroidx/fragment/app/r;

    :cond_6
    iput v3, v2, Landroidx/fragment/app/r;->d:I

    goto/16 :goto_6

    :cond_7
    :goto_2
    iget-object v5, v2, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-eqz v5, :cond_8

    iget-object v5, v4, Lw0/i;->h:Ljava/lang/Object;

    check-cast v5, Landroidx/fragment/app/N;

    iget-boolean v5, v5, Landroidx/fragment/app/N;->h:Z

    goto :goto_3

    :cond_8
    iget-object v5, v5, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v5

    xor-int/2addr v5, v1

    goto :goto_3

    :cond_9
    move v5, v1

    :goto_3
    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    if-eqz v5, :cond_b

    :goto_4
    iget-object v0, v4, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/N;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/N;->c(Landroidx/fragment/app/r;)V

    :cond_b
    iget-object v0, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->k()V

    iget-object v0, v2, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    sget-object v5, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    invoke-virtual {v0, v5}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iput v3, v2, Landroidx/fragment/app/r;->d:I

    iput-boolean v3, v2, Landroidx/fragment/app/r;->M:Z

    iput-boolean v1, v2, Landroidx/fragment/app/r;->F:Z

    iget-object v0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {v0, v3}, Lw0/c;->s(Z)V

    invoke-virtual {v4}, Lw0/i;->u()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Q;

    if-eqz v1, :cond_c

    iget-object v3, v2, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iget-object v1, v1, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object v5, v1, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iput-object v2, v1, Landroidx/fragment/app/r;->j:Landroidx/fragment/app/r;

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    goto :goto_5

    :cond_d
    iget-object v0, v2, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v4, v0}, Lw0/i;->l(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v0

    iput-object v0, v2, Landroidx/fragment/app/r;->j:Landroidx/fragment/app/r;

    :cond_e
    invoke-virtual {v4, p0}, Lw0/i;->E(Landroidx/fragment/app/Q;)V

    :goto_6
    return-void
.end method

.method public final h()V
    .locals 6

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "movefrom CREATE_VIEW: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/L;->t(I)V

    iget-object v0, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    invoke-virtual {v0}, Landroidx/fragment/app/T;->b()V

    iget-object v0, v0, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    iget-object v0, v0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    sget-object v3, Landroidx/lifecycle/n;->f:Landroidx/lifecycle/n;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, v2, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    sget-object v3, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/T;->a(Landroidx/lifecycle/m;)V

    :cond_2
    iput v1, v2, Landroidx/fragment/app/r;->d:I

    const/4 v0, 0x0

    iput-boolean v0, v2, Landroidx/fragment/app/r;->F:Z

    invoke-virtual {v2}, Landroidx/fragment/app/r;->p()V

    iget-boolean v1, v2, Landroidx/fragment/app/r;->F:Z

    if-eqz v1, :cond_5

    invoke-interface {v2}, Landroidx/lifecycle/W;->getViewModelStore()Landroidx/lifecycle/V;

    move-result-object v1

    new-instance v3, Ln1/a;

    sget-object v4, LW/b;->e:LU0/e;

    invoke-direct {v3, v1, v4}, Ln1/a;-><init>(Landroidx/lifecycle/V;Landroidx/lifecycle/U;)V

    const-class v1, LW/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ln1/a;->i(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Q;

    move-result-object v1

    check-cast v1, LW/b;

    iget-object v1, v1, LW/b;->d:Ln/k;

    iget v3, v1, Ln/k;->f:I

    if-gtz v3, :cond_3

    iput-boolean v0, v2, Landroidx/fragment/app/r;->s:Z

    iget-object p0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {p0, v0}, Lw0/c;->C(Z)V

    const/4 p0, 0x0

    iput-object p0, v2, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    iput-object p0, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    iput-object p0, v2, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    iget-object v1, v2, Landroidx/fragment/app/r;->R:Landroidx/lifecycle/A;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/A;->e(Ljava/lang/Object;)V

    iput-boolean v0, v2, Landroidx/fragment/app/r;->q:Z

    return-void

    :cond_3
    iget-object p0, v1, Ln/k;->e:[Ljava/lang/Object;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Landroidx/fragment/app/X;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDestroyView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i()V
    .locals 7

    const-string v0, "FragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    iget-object v3, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "movefrom ATTACHED: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    iput v2, v3, Landroidx/fragment/app/r;->d:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/r;->F:Z

    invoke-virtual {v3}, Landroidx/fragment/app/r;->q()V

    iget-boolean v5, v3, Landroidx/fragment/app/r;->F:Z

    if-eqz v5, :cond_7

    iget-object v5, v3, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iget-boolean v6, v5, Landroidx/fragment/app/L;->G:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroidx/fragment/app/L;->k()V

    new-instance v5, Landroidx/fragment/app/M;

    invoke-direct {v5}, Landroidx/fragment/app/L;-><init>()V

    iput-object v5, v3, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    :cond_1
    iget-object v5, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {v5, v4}, Lw0/c;->t(Z)V

    iput v2, v3, Landroidx/fragment/app/r;->d:I

    const/4 v2, 0x0

    iput-object v2, v3, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    iput-object v2, v3, Landroidx/fragment/app/r;->x:Landroidx/fragment/app/r;

    iput-object v2, v3, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    iget-boolean v2, v3, Landroidx/fragment/app/r;->o:Z

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/r;->j()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/Q;->b:Lw0/i;

    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/N;

    iget-object v2, p0, Landroidx/fragment/app/N;->d:Ljava/util/HashMap;

    iget-object v4, v3, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Landroidx/fragment/app/N;->g:Z

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Landroidx/fragment/app/N;->h:Z

    :cond_4
    :goto_0
    if-eqz v4, :cond_6

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "initState called for fragment: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/r;->h()V

    :cond_6
    return-void

    :cond_7
    new-instance p0, Landroidx/fragment/app/X;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDetach()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-boolean v1, v0, Landroidx/fragment/app/r;->p:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/r;->q:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/r;->s:Z

    if-nez v1, :cond_2

    const/4 v1, 0x3

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATE_VIEW: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->r(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/r;->w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    sget v3, LR/b;->fragment_container_view_tag:I

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v1, v0, Landroidx/fragment/app/r;->B:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroidx/fragment/app/L;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {p0, v2}, Lw0/c;->B(Z)V

    iput v3, v0, Landroidx/fragment/app/r;->d:I

    :cond_2
    return-void
.end method

.method public final k()V
    .locals 10

    iget-object v0, p0, Landroidx/fragment/app/Q;->b:Lw0/i;

    iget-boolean v1, p0, Landroidx/fragment/app/Q;->d:Z

    const/4 v2, 0x2

    const-string v3, "FragmentManager"

    iget-object v4, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v1, :cond_1

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v5, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/Q;->d:Z

    move v6, v5

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->d()I

    move-result v7

    iget v8, v4, Landroidx/fragment/app/r;->d:I

    const/4 v9, 0x3

    if-eq v7, v8, :cond_9

    if-le v7, v8, :cond_4

    add-int/lit8 v8, v8, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->n()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_1
    const/4 v6, 0x6

    iput v6, v4, Landroidx/fragment/app/r;->d:I

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->p()V

    goto/16 :goto_1

    :pswitch_3
    iget-object v6, v4, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/L;->D()Landroidx/fragment/app/G;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/fragment/app/h;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/G;)Landroidx/fragment/app/h;

    move-result-object v6

    iget-object v7, v4, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, LB/a;->b(I)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v6, v7, v2, p0}, Landroidx/fragment/app/h;->a(IILandroidx/fragment/app/Q;)V

    :cond_3
    const/4 v6, 0x4

    iput v6, v4, Landroidx/fragment/app/r;->d:I

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->a()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->j()V

    invoke-virtual {p0}, Landroidx/fragment/app/Q;->f()V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->e()V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->c()V

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v8, v8, -0x1

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->l()V

    goto/16 :goto_1

    :pswitch_9
    const/4 v6, 0x5

    iput v6, v4, Landroidx/fragment/app/r;->d:I

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->q()V

    goto :goto_1

    :pswitch_b
    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, v4, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, v4, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    if-nez v6, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Q;->o()V

    :cond_6
    iget-object v6, v4, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, v4, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/L;->D()Landroidx/fragment/app/G;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/fragment/app/h;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/G;)Landroidx/fragment/app/h;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v6, v1, v9, p0}, Landroidx/fragment/app/h;->a(IILandroidx/fragment/app/Q;)V

    :cond_8
    iput v9, v4, Landroidx/fragment/app/r;->d:I

    goto :goto_1

    :pswitch_c
    iput-boolean v5, v4, Landroidx/fragment/app/r;->q:Z

    iput v2, v4, Landroidx/fragment/app/r;->d:I

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->h()V

    iput v1, v4, Landroidx/fragment/app/r;->d:I

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->g()V

    goto :goto_1

    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/Q;->i()V

    :goto_1
    move v6, v1

    goto/16 :goto_0

    :cond_9
    if-nez v6, :cond_c

    const/4 v6, -0x1

    if-ne v8, v6, :cond_c

    iget-boolean v6, v4, Landroidx/fragment/app/r;->o:Z

    if-eqz v6, :cond_c

    invoke-virtual {v4}, Landroidx/fragment/app/r;->j()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up state of never attached fragment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v6, v0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v6, Landroidx/fragment/app/N;

    invoke-virtual {v6, v4}, Landroidx/fragment/app/N;->c(Landroidx/fragment/app/r;)V

    invoke-virtual {v0, p0}, Lw0/i;->E(Landroidx/fragment/app/Q;)V

    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initState called for fragment: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v4}, Landroidx/fragment/app/r;->h()V

    :cond_c
    iget-boolean v0, v4, Landroidx/fragment/app/r;->L:Z

    if-eqz v0, :cond_12

    iget-object v0, v4, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, v4, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    invoke-virtual {v4}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/L;->D()Landroidx/fragment/app/G;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/fragment/app/h;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/G;)Landroidx/fragment/app/h;

    move-result-object v0

    iget-boolean v6, v4, Landroidx/fragment/app/r;->B:Z

    if-eqz v6, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v0, v9, v1, p0}, Landroidx/fragment/app/h;->a(IILandroidx/fragment/app/Q;)V

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v0, v2, v1, p0}, Landroidx/fragment/app/h;->a(IILandroidx/fragment/app/Q;)V

    :cond_10
    :goto_2
    iget-object v0, v4, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-eqz v0, :cond_11

    iget-boolean v2, v4, Landroidx/fragment/app/r;->n:Z

    if-eqz v2, :cond_11

    invoke-static {v4}, Landroidx/fragment/app/L;->F(Landroidx/fragment/app/r;)Z

    move-result v2

    if-eqz v2, :cond_11

    iput-boolean v1, v0, Landroidx/fragment/app/L;->D:Z

    :cond_11
    iput-boolean v5, v4, Landroidx/fragment/app/r;->L:Z

    iget-object v0, v4, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    iput-boolean v5, p0, Landroidx/fragment/app/Q;->d:Z

    return-void

    :goto_3
    iput-boolean v5, p0, Landroidx/fragment/app/Q;->d:Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "movefrom RESUMED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/L;->t(I)V

    iget-object v0, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    sget-object v1, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/T;->a(Landroidx/lifecycle/m;)V

    :cond_1
    iget-object v0, v2, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    sget-object v1, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 v0, 0x6

    iput v0, v2, Landroidx/fragment/app/r;->d:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroidx/fragment/app/r;->F:Z

    iget-object p0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw0/c;->u(Z)V

    return-void
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object v0, p0, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    const-string v0, "android:view_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    iget-object p1, p0, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    const-string v0, "android:view_registry_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/r;->g:Landroid/os/Bundle;

    iget-object p1, p0, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    const-string v0, "android:target_state"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    const-string v0, "android:target_req_state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/r;->l:I

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    const-string v0, "android:user_visible_hint"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/fragment/app/r;->J:Z

    if-nez p1, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/r;->I:Z

    :cond_2
    return-void
.end method

.method public final n()V
    .locals 7

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto RESUMED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/p;->k:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v4, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_5

    iget-object v5, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-ne v4, v5, :cond_4

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v4

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestFocus: Restoring focused view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    const-string v0, "succeeded"

    goto :goto_3

    :cond_3
    const-string v0, "failed"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    move-result-object v0

    iput-object v3, v0, Landroidx/fragment/app/p;->k:Landroid/view/View;

    iget-object v0, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->K()V

    iget-object v0, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/L;->x(Z)Z

    const/4 v0, 0x7

    iput v0, v2, Landroidx/fragment/app/r;->d:I

    iput-boolean v1, v2, Landroidx/fragment/app/r;->F:Z

    iget-object v1, v2, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    sget-object v4, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iget-object v1, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, v2, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    iget-object v1, v1, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    :cond_6
    iget-object v1, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroidx/fragment/app/L;->E:Z

    iput-boolean v4, v1, Landroidx/fragment/app/L;->F:Z

    iget-object v5, v1, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v4, v5, Landroidx/fragment/app/N;->i:Z

    invoke-virtual {v1, v0}, Landroidx/fragment/app/L;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {p0, v4}, Lw0/c;->x(Z)V

    iput-object v3, v2, Landroidx/fragment/app/r;->e:Landroid/os/Bundle;

    iput-object v3, v2, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    iput-object v3, v2, Landroidx/fragment/app/r;->g:Landroid/os/Bundle;

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object p0, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object v0, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving view state for fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iput-object v0, p0, Landroidx/fragment/app/r;->f:Landroid/util/SparseArray;

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    iget-object v1, v1, Landroidx/fragment/app/T;->g:Ld0/f;

    invoke-virtual {v1, v0}, Ld0/f;->c(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v0, p0, Landroidx/fragment/app/r;->g:Landroid/os/Bundle;

    :cond_3
    return-void
.end method

.method public final p()V
    .locals 5

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto STARTED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->K()V

    iget-object v0, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/L;->x(Z)Z

    const/4 v0, 0x5

    iput v0, v2, Landroidx/fragment/app/r;->d:I

    const/4 v1, 0x0

    iput-boolean v1, v2, Landroidx/fragment/app/r;->F:Z

    invoke-virtual {v2}, Landroidx/fragment/app/r;->t()V

    iget-boolean v3, v2, Landroidx/fragment/app/r;->F:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    sget-object v4, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iget-object v3, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    iget-object v3, v3, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    :cond_1
    iget-object v2, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iput-boolean v1, v2, Landroidx/fragment/app/L;->E:Z

    iput-boolean v1, v2, Landroidx/fragment/app/L;->F:Z

    iget-object v3, v2, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v1, v3, Landroidx/fragment/app/N;->i:Z

    invoke-virtual {v2, v0}, Landroidx/fragment/app/L;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {p0, v1}, Lw0/c;->z(Z)V

    return-void

    :cond_2
    new-instance p0, Landroidx/fragment/app/X;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "movefrom STARTED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/L;->F:Z

    iget-object v3, v0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v1, v3, Landroidx/fragment/app/N;->i:Z

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/fragment/app/L;->t(I)V

    iget-object v0, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    sget-object v3, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/T;->a(Landroidx/lifecycle/m;)V

    :cond_1
    iget-object v0, v2, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    sget-object v3, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iput v1, v2, Landroidx/fragment/app/r;->d:I

    const/4 v0, 0x0

    iput-boolean v0, v2, Landroidx/fragment/app/r;->F:Z

    invoke-virtual {v2}, Landroidx/fragment/app/r;->u()V

    iget-boolean v1, v2, Landroidx/fragment/app/r;->F:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/Q;->a:Lw0/c;

    invoke-virtual {p0, v0}, Lw0/c;->A(Z)V

    return-void

    :cond_2
    new-instance p0, Landroidx/fragment/app/X;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStop()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
