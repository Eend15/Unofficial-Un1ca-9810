.class public final Landroidx/fragment/app/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;
.implements Ld0/g;
.implements Landroidx/lifecycle/W;


# instance fields
.field public final d:Landroidx/fragment/app/r;

.field public final e:Landroidx/lifecycle/V;

.field public f:Landroidx/lifecycle/v;

.field public g:Ld0/f;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/r;Landroidx/lifecycle/V;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    iput-object v0, p0, Landroidx/fragment/app/T;->g:Ld0/f;

    iput-object p1, p0, Landroidx/fragment/app/T;->d:Landroidx/fragment/app/r;

    iput-object p2, p0, Landroidx/fragment/app/T;->e:Landroidx/lifecycle/V;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/m;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    new-instance v0, Ld0/f;

    invoke-direct {v0, p0}, Ld0/f;-><init>(Ld0/g;)V

    iput-object v0, p0, Landroidx/fragment/app/T;->g:Ld0/f;

    invoke-virtual {v0}, Ld0/f;->a()V

    invoke-static {p0}, Landroidx/lifecycle/K;->d(Ld0/g;)V

    :cond_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()LV/b;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/T;->d:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->x()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, LV/c;

    invoke-direct {v2}, LV/c;-><init>()V

    iget-object v3, v2, LV/b;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    sget-object v4, Landroidx/lifecycle/S;->d:Landroidx/lifecycle/S;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/S;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/K;->b:Landroidx/lifecycle/S;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Landroidx/fragment/app/r;->i:Landroid/os/Bundle;

    if-eqz p0, :cond_3

    sget-object v0, Landroidx/lifecycle/K;->c:Landroidx/lifecycle/S;

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/T;->b()V

    iget-object p0, p0, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    return-object p0
.end method

.method public final getSavedStateRegistry()Ld0/e;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/T;->b()V

    iget-object p0, p0, Landroidx/fragment/app/T;->g:Ld0/f;

    iget-object p0, p0, Ld0/f;->b:Ld0/e;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/V;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/T;->b()V

    iget-object p0, p0, Landroidx/fragment/app/T;->e:Landroidx/lifecycle/V;

    return-object p0
.end method
