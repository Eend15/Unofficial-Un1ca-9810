.class public final Ld0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm/f;

.field public b:Z

.field public c:Landroid/os/Bundle;

.field public d:Z

.field public e:Landroidx/appcompat/app/i;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/f;

    invoke-direct {v0}, Lm/f;-><init>()V

    iput-object v0, p0, Ld0/e;->a:Lm/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld0/e;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    iget-boolean v0, p0, Ld0/e;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld0/e;->c:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Ld0/e;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Ld0/e;->c:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Ld0/e;->c:Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ld0/d;
    .locals 3

    iget-object p0, p0, Ld0/e;->a:Lm/f;

    invoke-virtual {p0}, Lm/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lm/b;

    invoke-virtual {v0}, Lm/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lm/b;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "components"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld0/d;

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ld0/d;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ld0/e;->a:Lm/f;

    invoke-virtual {p0, p1}, Lm/f;->g(Ljava/lang/Object;)Lm/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lm/c;->e:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v0, Lm/c;

    invoke-direct {v0, p1, p2}, Lm/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lm/f;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm/f;->g:I

    iget-object p1, p0, Lm/f;->e:Lm/c;

    if-nez p1, :cond_1

    iput-object v0, p0, Lm/f;->d:Lm/c;

    iput-object v0, p0, Lm/f;->e:Lm/c;

    goto :goto_0

    :cond_1
    iput-object v0, p1, Lm/c;->f:Lm/c;

    iput-object p1, v0, Lm/c;->g:Lm/c;

    iput-object v0, p0, Lm/f;->e:Lm/c;

    :goto_0
    const/4 p0, 0x0

    :goto_1
    check-cast p0, Ld0/d;

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SavedStateProvider with the given key is already registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()V
    .locals 4

    const-class v0, Landroidx/lifecycle/j;

    iget-boolean v1, p0, Ld0/e;->f:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Ld0/e;->e:Landroidx/appcompat/app/i;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/app/i;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/i;-><init>(Ld0/e;)V

    :cond_0
    iput-object v1, p0, Ld0/e;->e:Landroidx/appcompat/app/i;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Ld0/e;->e:Landroidx/appcompat/app/i;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must have default constructor in order to be automatically recreated"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
