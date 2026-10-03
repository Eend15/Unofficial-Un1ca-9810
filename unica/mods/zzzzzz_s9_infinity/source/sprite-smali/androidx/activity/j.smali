.class public Landroidx/activity/j;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;
.implements Ld0/g;


# instance fields
.field public d:Landroidx/lifecycle/v;

.field public final e:Ld0/f;

.field public final f:Landroidx/activity/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Ld0/f;

    invoke-direct {p1, p0}, Ld0/f;-><init>(Ld0/g;)V

    iput-object p1, p0, Landroidx/activity/j;->e:Ld0/f;

    new-instance p1, Landroidx/activity/p;

    new-instance p2, LA0/a;

    const/16 v0, 0x8

    invoke-direct {p2, v0, p0}, LA0/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2}, Landroidx/activity/p;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroidx/activity/j;->f:Landroidx/activity/p;

    return-void
.end method

.method public static a(Landroidx/activity/j;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/j;->c()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Landroidx/lifecycle/v;
    .locals 1

    iget-object v0, p0, Landroidx/activity/j;->d:Landroidx/lifecycle/v;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/activity/j;->d:Landroidx/lifecycle/v;

    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window!!.decorView"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/lifecycle/K;->f(Landroid/view/View;Landroidx/lifecycle/t;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Landroidx/activity/q;->view_tree_on_back_pressed_dispatcher_owner:I

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, La4/x;->Y(Landroid/view/View;Ld0/g;)V

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/j;->b()Landroidx/lifecycle/v;

    move-result-object p0

    return-object p0
.end method

.method public final getSavedStateRegistry()Ld0/e;
    .locals 0

    iget-object p0, p0, Landroidx/activity/j;->e:Ld0/f;

    iget-object p0, p0, Ld0/f;->b:Ld0/e;

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/j;->f:Landroidx/activity/p;

    invoke-virtual {p0}, Landroidx/activity/p;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const-string v1, "onBackInvokedDispatcher"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/activity/j;->f:Landroidx/activity/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Landroidx/activity/p;->e:Landroid/window/OnBackInvokedDispatcher;

    invoke-virtual {v1}, Landroidx/activity/p;->c()V

    iget-object v0, p0, Landroidx/activity/j;->e:Ld0/f;

    invoke-virtual {v0, p1}, Ld0/f;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/activity/j;->b()Landroidx/lifecycle/v;

    move-result-object p0

    sget-object p1, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "super.onSaveInstanceState()"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/j;->e:Ld0/f;

    invoke-virtual {p0, v0}, Ld0/f;->c(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroidx/activity/j;->b()Landroidx/lifecycle/v;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/j;->b()Landroidx/lifecycle/v;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/j;->d:Landroidx/lifecycle/v;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/j;->c()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/activity/j;->c()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/activity/j;->c()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
