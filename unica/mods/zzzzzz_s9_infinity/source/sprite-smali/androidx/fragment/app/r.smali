.class public abstract Landroidx/fragment/app/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/t;
.implements Landroidx/lifecycle/W;
.implements Landroidx/lifecycle/i;
.implements Ld0/g;


# static fields
.field public static final V:Ljava/lang/Object;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Z

.field public C:Z

.field public D:Z

.field public final E:Z

.field public F:Z

.field public G:Landroid/view/ViewGroup;

.field public H:Landroid/view/View;

.field public I:Z

.field public J:Z

.field public K:Landroidx/fragment/app/p;

.field public L:Z

.field public M:Z

.field public N:Ljava/lang/String;

.field public O:Landroidx/lifecycle/n;

.field public P:Landroidx/lifecycle/v;

.field public Q:Landroidx/fragment/app/T;

.field public final R:Landroidx/lifecycle/A;

.field public S:Ld0/f;

.field public final T:Ljava/util/ArrayList;

.field public final U:Landroidx/fragment/app/n;

.field public d:I

.field public e:Landroid/os/Bundle;

.field public f:Landroid/util/SparseArray;

.field public g:Landroid/os/Bundle;

.field public h:Ljava/lang/String;

.field public i:Landroid/os/Bundle;

.field public j:Landroidx/fragment/app/r;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/Boolean;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:I

.field public u:Landroidx/fragment/app/L;

.field public v:Landroidx/fragment/app/v;

.field public w:Landroidx/fragment/app/M;

.field public x:Landroidx/fragment/app/r;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/r;->V:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/r;->d:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/r;->k:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/r;->m:Ljava/lang/Boolean;

    new-instance v0, Landroidx/fragment/app/M;

    invoke-direct {v0}, Landroidx/fragment/app/L;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->E:Z

    iput-boolean v0, p0, Landroidx/fragment/app/r;->J:Z

    sget-object v0, Landroidx/lifecycle/n;->h:Landroidx/lifecycle/n;

    iput-object v0, p0, Landroidx/fragment/app/r;->O:Landroidx/lifecycle/n;

    new-instance v0, Landroidx/lifecycle/A;

    invoke-direct {v0}, Landroidx/lifecycle/A;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/r;->R:Landroidx/lifecycle/A;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/r;->T:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/n;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/r;)V

    iput-object v0, p0, Landroidx/fragment/app/r;->U:Landroidx/fragment/app/n;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->g()V

    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroidx/fragment/app/L;->E:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/fragment/app/L;->F:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/r;->i:Landroid/os/Bundle;

    return-void
.end method

.method public a()La4/x;
    .locals 1

    new-instance v0, Landroidx/fragment/app/o;

    invoke-direct {v0, p0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/r;)V

    return-object v0
.end method

.method public final b()Landroidx/fragment/app/p;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/fragment/app/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroidx/fragment/app/r;->V:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/p;->g:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/p;->h:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/p;->i:Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/fragment/app/p;->j:F

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/p;->k:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    return-object p0
.end method

.method public final c()Landroidx/fragment/app/L;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has not been attached yet."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    :goto_0
    return-object p0
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/r;->O:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/r;->x:Landroidx/fragment/app/r;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p0, p0, Landroidx/fragment/app/r;->x:Landroidx/fragment/app/r;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->e()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public final f()Landroidx/fragment/app/L;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not associated with a fragment manager."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    new-instance v0, Ld0/f;

    invoke-direct {v0, p0}, Ld0/f;-><init>(Ld0/g;)V

    iput-object v0, p0, Landroidx/fragment/app/r;->S:Ld0/f;

    iget-object v0, p0, Landroidx/fragment/app/r;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/r;->U:Landroidx/fragment/app/n;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget p0, p0, Landroidx/fragment/app/r;->d:I

    if-ltz p0, :cond_0

    iget-object p0, v1, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/r;

    iget-object v0, p0, Landroidx/fragment/app/r;->S:Ld0/f;

    invoke-virtual {v0}, Ld0/f;->a()V

    invoke-static {p0}, Landroidx/lifecycle/K;->d(Ld0/g;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()LV/b;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/r;->x()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not find Application instance from Context "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/r;->x()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, LV/c;

    invoke-direct {v1}, LV/c;-><init>()V

    iget-object v2, v1, LV/b;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    sget-object v3, Landroidx/lifecycle/S;->d:Landroidx/lifecycle/S;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/S;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/lifecycle/K;->b:Landroidx/lifecycle/S;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/fragment/app/r;->i:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    sget-object v0, Landroidx/lifecycle/K;->c:Landroidx/lifecycle/S;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    return-object p0
.end method

.method public final getSavedStateRegistry()Ld0/e;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/r;->S:Ld0/f;

    iget-object p0, p0, Ld0/f;->b:Ld0/e;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/V;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/r;->e()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iget-object v0, v0, Landroidx/fragment/app/N;->f:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/V;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/lifecycle/V;

    invoke-direct {v1}, Landroidx/lifecycle/V;-><init>()V

    iget-object p0, p0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/r;->g()V

    iget-object v0, p0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/r;->N:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/r;->n:Z

    iput-boolean v0, p0, Landroidx/fragment/app/r;->o:Z

    iput-boolean v0, p0, Landroidx/fragment/app/r;->p:Z

    iput-boolean v0, p0, Landroidx/fragment/app/r;->q:Z

    iput-boolean v0, p0, Landroidx/fragment/app/r;->r:Z

    iput v0, p0, Landroidx/fragment/app/r;->t:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    new-instance v2, Landroidx/fragment/app/M;

    invoke-direct {v2}, Landroidx/fragment/app/L;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iput-object v1, p0, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    iput v0, p0, Landroidx/fragment/app/r;->y:I

    iput v0, p0, Landroidx/fragment/app/r;->z:I

    iput-object v1, p0, Landroidx/fragment/app/r;->A:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/fragment/app/r;->B:Z

    iput-boolean v0, p0, Landroidx/fragment/app/r;->C:Z

    return-void
.end method

.method public final i()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/r;->B:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/r;->x:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/r;->i()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final j()Z
    .locals 0

    iget p0, p0, Landroidx/fragment/app/r;->t:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    return-void
.end method

.method public final l(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " resultCode: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " data: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public m(Landroidx/fragment/app/w;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/r;->F:Z

    iget-object v0, p0, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/v;->d:Landroidx/fragment/app/w;

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Landroidx/fragment/app/r;->F:Z

    :cond_1
    return-void
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/L;->Q(Landroid/os/Parcelable;)V

    iget-object p1, p0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iput-boolean v1, p1, Landroidx/fragment/app/L;->E:Z

    iput-boolean v1, p1, Landroidx/fragment/app/L;->F:Z

    iget-object v2, p1, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v1, v2, Landroidx/fragment/app/N;->i:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/L;->t(I)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iget p1, p0, Landroidx/fragment/app/L;->s:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Landroidx/fragment/app/L;->E:Z

    iput-boolean v1, p0, Landroidx/fragment/app/L;->F:Z

    iget-object p1, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v1, p1, Landroidx/fragment/app/N;->i:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/L;->t(I)V

    :goto_0
    return-void
.end method

.method public o(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/r;->F:Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/v;->d:Landroidx/fragment/app/w;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to an activity."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    return-void
.end method

.method public r(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p0, p0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/A;

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract s(Landroid/os/Bundle;)V
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/r;->y:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/r;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/r;->A:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/r;->A:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    return-void
.end method

.method public v(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/r;->F:Z

    return-void
.end method

.method public w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->K()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->s:Z

    new-instance v0, Landroidx/fragment/app/T;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getViewModelStore()Landroidx/lifecycle/V;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/T;-><init>(Landroidx/fragment/app/r;Landroidx/lifecycle/V;)V

    iput-object v0, p0, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/r;->o(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    invoke-virtual {p1}, Landroidx/fragment/app/T;->b()V

    iget-object p1, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    invoke-static {p1, p2}, Landroidx/lifecycle/K;->f(Landroid/view/View;Landroidx/lifecycle/t;)V

    iget-object p1, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    const-string p3, "<this>"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, LV/d;->view_tree_view_model_store_owner:I

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    invoke-static {p1, p2}, La4/x;->Y(Landroid/view/View;Ld0/g;)V

    iget-object p1, p0, Landroidx/fragment/app/r;->R:Landroidx/lifecycle/A;

    iget-object p0, p0, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/A;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    iget-object p1, p1, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/r;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a context."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/p;->b:I

    invoke-virtual {p0}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    move-result-object p1

    iput p2, p1, Landroidx/fragment/app/p;->c:I

    invoke-virtual {p0}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    move-result-object p1

    iput p3, p1, Landroidx/fragment/app/p;->d:I

    invoke-virtual {p0}, Landroidx/fragment/app/r;->b()Landroidx/fragment/app/p;

    move-result-object p0

    iput p4, p0, Landroidx/fragment/app/p;->e:I

    return-void
.end method
