.class public Landroidx/fragment/app/m;
.super Landroidx/fragment/app/r;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public W:Landroid/os/Handler;

.field public final X:Landroidx/fragment/app/d;

.field public final Y:Landroidx/fragment/app/i;

.field public final Z:Landroidx/fragment/app/j;

.field public a0:I

.field public b0:I

.field public c0:Z

.field public d0:Z

.field public e0:I

.field public f0:Z

.field public final g0:Landroidx/fragment/app/k;

.field public h0:Landroid/app/Dialog;

.field public i0:Z

.field public j0:Z

.field public k0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    new-instance v0, Landroidx/fragment/app/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->X:Landroidx/fragment/app/d;

    new-instance v0, Landroidx/fragment/app/i;

    invoke-direct {v0, p0}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->Y:Landroidx/fragment/app/i;

    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0, p0}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->Z:Landroidx/fragment/app/j;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/m;->a0:I

    iput v0, p0, Landroidx/fragment/app/m;->b0:I

    iput-boolean v1, p0, Landroidx/fragment/app/m;->c0:Z

    iput-boolean v1, p0, Landroidx/fragment/app/m;->d0:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/fragment/app/m;->e0:I

    new-instance v1, Landroidx/fragment/app/k;

    invoke-direct {v1, p0}, Landroidx/fragment/app/k;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/fragment/app/m;->g0:Landroidx/fragment/app/k;

    iput-boolean v0, p0, Landroidx/fragment/app/m;->k0:Z

    return-void
.end method


# virtual methods
.method public final B(ZZ)V
    .locals 3

    iget-boolean v0, p0, Landroidx/fragment/app/m;->j0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/m;->j0:Z

    iget-object v1, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Landroidx/fragment/app/m;->W:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/m;->W:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/m;->X:Landroidx/fragment/app/d;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/m;->i0:Z

    iget p2, p0, Landroidx/fragment/app/m;->e0:I

    if-ltz p2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object p2

    iget v0, p0, Landroidx/fragment/app/m;->e0:I

    if-ltz v0, :cond_3

    new-instance v1, Landroidx/fragment/app/K;

    invoke-direct {v1, p2, v0}, Landroidx/fragment/app/K;-><init>(Landroidx/fragment/app/L;I)V

    invoke-virtual {p2, v1, p1}, Landroidx/fragment/app/L;->v(Landroidx/fragment/app/J;Z)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/fragment/app/m;->e0:I

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad id: "

    invoke-static {v0, p1}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object p2

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/L;)V

    iput-boolean v0, v1, Landroidx/fragment/app/a;->o:Z

    iget-object p2, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    if-eqz p2, :cond_6

    iget-object v2, v1, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/L;

    if-ne p2, v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/r;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is already attached to a FragmentManager."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    new-instance p2, Landroidx/fragment/app/S;

    const/4 v2, 0x3

    invoke-direct {p2, v2, p0}, Landroidx/fragment/app/S;-><init>(ILandroidx/fragment/app/r;)V

    invoke-virtual {v1, p2}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/S;)V

    if-eqz p1, :cond_7

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->d(Z)I

    goto :goto_2

    :cond_7
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->d(Z)I

    :goto_2
    return-void
.end method

.method public C()Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCreateDialog called for DialogFragment "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroidx/activity/j;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->x()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Landroidx/fragment/app/m;->b0:I

    invoke-direct {v0, v1, p0}, Landroidx/activity/j;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final a()La4/x;
    .locals 2

    new-instance v0, Landroidx/fragment/app/o;

    invoke-direct {v0, p0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/r;)V

    new-instance v1, Landroidx/fragment/app/l;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/m;Landroidx/fragment/app/o;)V

    return-object v1
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    return-void
.end method

.method public final m(Landroidx/fragment/app/w;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/r;->m(Landroidx/fragment/app/w;)V

    iget-object p1, p0, Landroidx/fragment/app/m;->g0:Landroidx/fragment/app/k;

    iget-object v0, p0, Landroidx/fragment/app/r;->R:Landroidx/lifecycle/A;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/A;->d(Landroidx/fragment/app/k;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/m;->j0:Z

    return-void
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/r;->n(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m;->W:Landroid/os/Handler;

    iget v0, p0, Landroidx/fragment/app/r;->z:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/m;->d0:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/m;->a0:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/m;->b0:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/m;->c0:Z

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroidx/fragment/app/m;->d0:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/m;->d0:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/m;->e0:I

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-boolean p1, p0, Landroidx/fragment/app/m;->i0:Z

    if-nez p1, :cond_1

    const/4 p1, 0x3

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onDismiss called for DialogFragment "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/m;->B(ZZ)V

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    iget-object v1, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Landroidx/fragment/app/m;->i0:Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v1, p0, Landroidx/fragment/app/m;->j0:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/m;->k0:Z

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    iget-boolean v1, p0, Landroidx/fragment/app/m;->j0:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroidx/fragment/app/m;->j0:Z

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->g0:Landroidx/fragment/app/k;

    iget-object p0, p0, Landroidx/fragment/app/r;->R:Landroidx/lifecycle/A;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "removeObserver"

    invoke-static {v1}, Landroidx/lifecycle/A;->a(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/A;->b:Lm/f;

    invoke-virtual {p0, v0}, Lm/f;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/z;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/lifecycle/z;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z;->c(Z)V

    :goto_0
    return-void
.end method

.method public final r(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 7

    invoke-super {p0, p1}, Landroidx/fragment/app/r;->r(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/fragment/app/m;->d0:Z

    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    if-eqz v0, :cond_9

    iget-boolean v3, p0, Landroidx/fragment/app/m;->f0:Z

    if-eqz v3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/m;->k0:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroidx/fragment/app/m;->f0:Z

    invoke-virtual {p0}, Landroidx/fragment/app/m;->C()Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    iget-boolean v5, p0, Landroidx/fragment/app/m;->d0:Z

    if-eqz v5, :cond_5

    iget v5, p0, Landroidx/fragment/app/m;->a0:I

    if-eq v5, v3, :cond_3

    if-eq v5, v1, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_3

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/r;->d()Landroid/content/Context;

    move-result-object v4

    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_1
    iget-object v4, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    iget-boolean v5, p0, Landroidx/fragment/app/m;->c0:Z

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v4, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    iget-object v5, p0, Landroidx/fragment/app/m;->Y:Landroidx/fragment/app/i;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v4, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    iget-object v5, p0, Landroidx/fragment/app/m;->Z:Landroidx/fragment/app/j;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v3, p0, Landroidx/fragment/app/m;->k0:Z

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iput-boolean v0, p0, Landroidx/fragment/app/m;->f0:Z

    goto :goto_4

    :goto_3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->f0:Z

    throw p1

    :cond_6
    :goto_4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get layout inflater for DialogFragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from dialog context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_8
    return-object p1

    :cond_9
    :goto_5
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getting layout inflater for DialogFragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/fragment/app/m;->d0:Z

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "mShowsDialog = false: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "mCreatingDialog = true: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    return-object p1
.end method

.method public s(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:dialogShowing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Landroidx/fragment/app/m;->a0:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Landroidx/fragment/app/m;->b0:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/m;->c0:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/m;->d0:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget p0, p0, Landroidx/fragment/app/m;->e0:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    const-string v0, "android:backStackId"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public t()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    iget-object v0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/m;->i0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/K;->f(Landroid/view/View;Landroidx/lifecycle/t;)V

    sget v1, LV/d;->view_tree_view_model_store_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v0, p0}, La4/x;->Y(Landroid/view/View;Ld0/g;)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    iget-object p0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->F:Z

    iget-object v0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/r;->w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android:savedDialogState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
