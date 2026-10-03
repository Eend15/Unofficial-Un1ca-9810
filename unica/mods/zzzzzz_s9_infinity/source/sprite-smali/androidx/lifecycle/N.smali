.class public final Landroidx/lifecycle/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/U;


# instance fields
.field public final d:Landroid/app/Application;

.field public final e:Landroidx/lifecycle/T;

.field public final f:Landroid/os/Bundle;

.field public final g:Landroidx/lifecycle/o;

.field public final h:Ld0/e;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/activity/i;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ld0/g;->getSavedStateRegistry()Ld0/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/N;->h:Ld0/e;

    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/N;->g:Landroidx/lifecycle/o;

    iput-object p3, p0, Landroidx/lifecycle/N;->f:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/N;->d:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/lifecycle/T;->h:Landroidx/lifecycle/T;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/lifecycle/T;

    invoke-direct {p2, p1}, Landroidx/lifecycle/T;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/T;->h:Landroidx/lifecycle/T;

    :cond_0
    sget-object p1, Landroidx/lifecycle/T;->h:Landroidx/lifecycle/T;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/T;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/T;-><init>(Landroid/app/Application;)V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/N;->e:Landroidx/lifecycle/T;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Q;
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/N;->g:Landroidx/lifecycle/o;

    if-eqz v0, :cond_a

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/N;->d:Landroid/app/Application;

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/lifecycle/O;->a:Ljava/util/List;

    invoke-static {v2, p1}, Landroidx/lifecycle/O;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/O;->b:Ljava/util/List;

    invoke-static {v2, p1}, Landroidx/lifecycle/O;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    iget-object p2, p0, Landroidx/lifecycle/N;->d:Landroid/app/Application;

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/N;->e:Landroidx/lifecycle/T;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/T;->c(Ljava/lang/Class;)Landroidx/lifecycle/Q;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/lifecycle/S;->f:Landroidx/lifecycle/S;

    if-nez p0, :cond_2

    new-instance p0, Landroidx/lifecycle/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Landroidx/lifecycle/S;->f:Landroidx/lifecycle/S;

    :cond_2
    sget-object p0, Landroidx/lifecycle/S;->f:Landroidx/lifecycle/S;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/S;->c(Ljava/lang/Class;)Landroidx/lifecycle/Q;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    iget-object v3, p0, Landroidx/lifecycle/N;->h:Ld0/e;

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/lifecycle/N;->f:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Ld0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/I;->f:[Ljava/lang/Class;

    invoke-static {v5, v4}, Landroidx/lifecycle/K;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/I;

    move-result-object v4

    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p2, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/I;)V

    invoke-virtual {v5, v0, v3}, Landroidx/lifecycle/SavedStateHandleController;->c(Landroidx/lifecycle/o;Ld0/e;)V

    move-object p2, v0

    check-cast p2, Landroidx/lifecycle/v;

    iget-object p2, p2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    sget-object v6, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    if-eq p2, v6, :cond_5

    sget-object v6, Landroidx/lifecycle/n;->g:Landroidx/lifecycle/n;

    invoke-virtual {p2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    invoke-direct {p2, v0, v3}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(Landroidx/lifecycle/o;Ld0/e;)V

    invoke-virtual {v0, p2}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v3}, Ld0/e;->d()V

    :goto_3
    if-eqz v1, :cond_6

    iget-object p0, p0, Landroidx/lifecycle/N;->d:Landroid/app/Application;

    if-eqz p0, :cond_6

    filled-new-array {p0, v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/O;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/Q;

    move-result-object p0

    goto :goto_4

    :cond_6
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/O;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/Q;

    move-result-object p0

    :goto_4
    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    iget-object p2, p0, Landroidx/lifecycle/Q;->a:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/Q;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v1, p0, Landroidx/lifecycle/Q;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_7
    :goto_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    move-object v5, v0

    :goto_6
    iget-boolean p1, p0, Landroidx/lifecycle/Q;->c:Z

    if-eqz p1, :cond_9

    invoke-static {v5}, Landroidx/lifecycle/Q;->a(Ljava/lang/Object;)V

    :cond_9
    return-object p0

    :goto_7
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/lang/Class;)Landroidx/lifecycle/Q;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/N;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Q;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p(Ljava/lang/Class;LV/c;)Landroidx/lifecycle/Q;
    .locals 3

    sget-object v0, Landroidx/lifecycle/S;->e:Landroidx/lifecycle/S;

    iget-object v1, p2, LV/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v2, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/S;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/lifecycle/K;->b:Landroidx/lifecycle/S;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v0, Landroidx/lifecycle/S;->d:Landroidx/lifecycle/S;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/lifecycle/O;->a:Ljava/util/List;

    invoke-static {v2, p1}, Landroidx/lifecycle/O;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/O;->b:Ljava/util/List;

    invoke-static {v2, p1}, Landroidx/lifecycle/O;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/N;->e:Landroidx/lifecycle/T;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/T;->p(Ljava/lang/Class;LV/c;)Landroidx/lifecycle/Q;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroidx/lifecycle/K;->c(LV/c;)Landroidx/lifecycle/I;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/O;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/Q;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/K;->c(LV/c;)Landroidx/lifecycle/I;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/O;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/Q;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/N;->g:Landroidx/lifecycle/o;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/N;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Q;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
