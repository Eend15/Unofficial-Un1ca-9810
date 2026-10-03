.class public abstract Landroidx/lifecycle/K;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/lifecycle/S;

.field public static final b:Landroidx/lifecycle/S;

.field public static final c:Landroidx/lifecycle/S;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/S;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/S;

    new-instance v0, Landroidx/lifecycle/S;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/K;->b:Landroidx/lifecycle/S;

    new-instance v0, Landroidx/lifecycle/S;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/K;->c:Landroidx/lifecycle/S;

    return-void
.end method

.method public static final a(Landroidx/lifecycle/Q;Ld0/e;Landroidx/lifecycle/o;)V
    .locals 2

    const-string v0, "registry"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    iget-object v1, p0, Landroidx/lifecycle/Q;->a:Ljava/util/HashMap;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroidx/lifecycle/Q;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->f:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p2, p1}, Landroidx/lifecycle/SavedStateHandleController;->c(Landroidx/lifecycle/o;Ld0/e;)V

    move-object p0, p2

    check-cast p0, Landroidx/lifecycle/v;

    iget-object p0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    sget-object v0, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    if-eq p0, v0, :cond_2

    sget-object v0, Landroidx/lifecycle/n;->g:Landroidx/lifecycle/n;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    invoke-direct {p0, p2, p1}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(Landroidx/lifecycle/o;Ld0/e;)V

    invoke-virtual {p2, p0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ld0/e;->d()V

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/I;
    .locals 5

    if-nez p0, :cond_2

    if-nez p1, :cond_0

    new-instance p0, Landroidx/lifecycle/I;

    invoke-direct {p0}, Landroidx/lifecycle/I;-><init>()V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "key"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/I;

    invoke-direct {p1, p0}, Landroidx/lifecycle/I;-><init>(Ljava/util/HashMap;)V

    move-object p0, p1

    :goto_1
    return-object p0

    :cond_2
    const-string p1, "keys"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "values"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Landroidx/lifecycle/I;

    invoke-direct {p0, v0}, Landroidx/lifecycle/I;-><init>(Ljava/util/HashMap;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid bundle passed as restored state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(LV/c;)Landroidx/lifecycle/I;
    .locals 7

    sget-object v0, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/S;

    iget-object p0, p0, LV/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld0/g;

    if-eqz v0, :cond_8

    sget-object v1, Landroidx/lifecycle/K;->b:Landroidx/lifecycle/S;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/W;

    if-eqz v1, :cond_7

    sget-object v2, Landroidx/lifecycle/K;->c:Landroidx/lifecycle/S;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/S;->e:Landroidx/lifecycle/S;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-interface {v0}, Ld0/g;->getSavedStateRegistry()Ld0/e;

    move-result-object v0

    invoke-virtual {v0}, Ld0/e;->b()Ld0/d;

    move-result-object v0

    instance-of v3, v0, Landroidx/lifecycle/L;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/lifecycle/L;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_5

    invoke-static {v1}, Landroidx/lifecycle/K;->e(Landroidx/lifecycle/W;)Landroidx/lifecycle/M;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/M;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/I;

    if-nez v3, :cond_4

    sget-object v3, Landroidx/lifecycle/I;->f:[Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/lifecycle/L;->b()V

    iget-object v3, v0, Landroidx/lifecycle/L;->c:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    iget-object v5, v0, Landroidx/lifecycle/L;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    iget-object v5, v0, Landroidx/lifecycle/L;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iput-object v4, v0, Landroidx/lifecycle/L;->c:Landroid/os/Bundle;

    :cond_3
    invoke-static {v3, v2}, Landroidx/lifecycle/K;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/I;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Ld0/g;)V
    .locals 3

    invoke-interface {p0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/v;

    iget-object v0, v0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/n;->f:Landroidx/lifecycle/n;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ld0/g;->getSavedStateRegistry()Ld0/e;

    move-result-object v0

    invoke-virtual {v0}, Ld0/e;->b()Ld0/d;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/L;

    invoke-interface {p0}, Ld0/g;->getSavedStateRegistry()Ld0/e;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/W;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/L;-><init>(Ld0/e;Landroidx/lifecycle/W;)V

    invoke-interface {p0}, Ld0/g;->getSavedStateRegistry()Ld0/e;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, Ld0/e;->c(Ljava/lang/String;Ld0/d;)V

    invoke-interface {p0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/L;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    :cond_2
    return-void
.end method

.method public static final e(Landroidx/lifecycle/W;)Landroidx/lifecycle/M;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, Landroidx/lifecycle/M;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v1

    const-string v3, "clazz"

    invoke-static {v1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LV/e;

    invoke-static {v1}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v3, v1}, LV/e;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LA1/e;

    const/4 v3, 0x0

    new-array v3, v3, [LV/e;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LV/e;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LV/e;

    const-string v3, "initializers"

    invoke-static {v0, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, LA1/e;->d:Ljava/lang/Object;

    new-instance v0, Ln1/a;

    invoke-interface {p0}, Landroidx/lifecycle/W;->getViewModelStore()Landroidx/lifecycle/V;

    move-result-object v3

    instance-of v4, p0, Landroidx/lifecycle/i;

    if-eqz v4, :cond_0

    check-cast p0, Landroidx/lifecycle/i;

    invoke-interface {p0}, Landroidx/lifecycle/i;->getDefaultViewModelCreationExtras()LV/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, LV/a;->b:LV/a;

    :goto_0
    invoke-direct {v0, v3, v1, p0}, Ln1/a;-><init>(Landroidx/lifecycle/V;Landroidx/lifecycle/U;LV/b;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v0, v2, p0}, Ln1/a;->i(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Q;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/M;

    return-object p0
.end method

.method public static final f(Landroid/view/View;Landroidx/lifecycle/t;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LU/a;->view_tree_lifecycle_owner:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
