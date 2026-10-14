.class public final Landroidx/fragment/app/v;
.super La4/x;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/W;
.implements Landroidx/lifecycle/t;
.implements Ld0/g;
.implements Landroidx/fragment/app/O;


# instance fields
.field public final d:Landroidx/fragment/app/w;

.field public final e:Landroidx/fragment/app/w;

.field public final f:Landroid/os/Handler;

.field public final g:Landroidx/fragment/app/M;

.field public final synthetic h:Landroidx/appcompat/app/k;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/fragment/app/M;

    invoke-direct {v1}, Landroidx/fragment/app/L;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    iput-object p1, p0, Landroidx/fragment/app/v;->d:Landroidx/fragment/app/w;

    iput-object p1, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    iput-object v0, p0, Landroidx/fragment/app/v;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final O(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/k;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final P()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Landroidx/fragment/app/r;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->onAttachFragment(Landroidx/fragment/app/r;)V

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    return-object p0
.end method

.method public final getSavedStateRegistry()Ld0/e;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p0}, Landroidx/activity/i;->getSavedStateRegistry()Ld0/e;

    move-result-object p0

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/V;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    invoke-virtual {p0}, Landroidx/activity/i;->getViewModelStore()Landroidx/lifecycle/V;

    move-result-object p0

    return-object p0
.end method
