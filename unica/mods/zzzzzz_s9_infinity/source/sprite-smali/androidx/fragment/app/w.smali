.class public abstract Landroidx/fragment/app/w;
.super Landroidx/activity/i;
.source "SourceFile"

# interfaces
.implements Lz/a;


# static fields
.field static final LIFECYCLE_TAG:Ljava/lang/String; = "android:support:lifecycle"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

.field final mFragments:Landroidx/fragment/app/y;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/activity/i;-><init>()V

    new-instance v0, Landroidx/fragment/app/v;

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/app/k;

    invoke-direct {v0, v1}, Landroidx/fragment/app/v;-><init>(Landroidx/appcompat/app/k;)V

    new-instance v2, Landroidx/fragment/app/y;

    invoke-direct {v2, v0}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/v;)V

    iput-object v2, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/fragment/app/w;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/w;->mStopped:Z

    invoke-virtual {p0}, Landroidx/activity/i;->getSavedStateRegistry()Ld0/e;

    move-result-object v0

    new-instance v2, Landroidx/fragment/app/s;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroidx/fragment/app/s;-><init>(ILjava/lang/Object;)V

    const-string v3, "android:support:lifecycle"

    invoke-virtual {v0, v3, v2}, Ld0/e;->c(Ljava/lang/String;Ld0/d;)V

    new-instance v0, Landroidx/fragment/app/t;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/t;-><init>(Landroidx/appcompat/app/k;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/i;->addOnConfigurationChangedListener(LJ/a;)V

    new-instance v0, Landroidx/fragment/app/t;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/t;-><init>(Landroidx/appcompat/app/k;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/i;->addOnNewIntentListener(LJ/a;)V

    new-instance v0, Landroidx/fragment/app/u;

    invoke-direct {v0, v1}, Landroidx/fragment/app/u;-><init>(Landroidx/appcompat/app/k;)V

    invoke-virtual {p0, v0}, Landroidx/activity/i;->addOnContextAvailableListener(Lc/b;)V

    return-void
.end method

.method public static c(Landroidx/fragment/app/L;)Z
    .locals 5

    iget-object p0, p0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {p0}, Lw0/i;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/r;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/v;->h:Landroidx/appcompat/app/k;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/r;->c()Landroidx/fragment/app/L;

    move-result-object v2

    invoke-static {v2}, Landroidx/fragment/app/w;->c(Landroidx/fragment/app/L;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    sget-object v3, Landroidx/lifecycle/n;->g:Landroidx/lifecycle/n;

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/fragment/app/T;->b()V

    iget-object v2, v2, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    iget-object v2, v2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v0, v1, Landroidx/fragment/app/r;->Q:Landroidx/fragment/app/T;

    iget-object v0, v0, Landroidx/fragment/app/T;->f:Landroidx/lifecycle/v;

    invoke-virtual {v0}, Landroidx/lifecycle/v;->g()V

    move v0, v4

    :cond_4
    iget-object v2, v1, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    iget-object v2, v2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/r;->P:Landroidx/lifecycle/v;

    invoke-virtual {v0}, Landroidx/lifecycle/v;->g()V

    move v0, v4

    goto :goto_0

    :cond_5
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object p0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object p0, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/A;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/A;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lz/d;->shouldDumpInternalState([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/w;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/w;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/w;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Landroidx/lifecycle/W;->getViewModelStore()Landroidx/lifecycle/V;

    move-result-object v1

    new-instance v2, Ln1/a;

    sget-object v3, LW/b;->e:LU0/e;

    invoke-direct {v2, v1, v3}, Ln1/a;-><init>(Landroidx/lifecycle/V;Landroidx/lifecycle/U;)V

    const-class v1, LW/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ln1/a;->i(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Q;

    move-result-object v1

    check-cast v1, LW/b;

    iget-object v1, v1, LW/b;->d:Ln/k;

    iget v2, v1, Ln/k;->f:I

    if-lez v2, :cond_4

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Loaders:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v2, v1, Ln/k;->f:I

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v1, Ln/k;->e:[Ljava/lang/Object;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    if-nez p0, :cond_2

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "  #"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, v1, Ln/k;->d:[I

    aget p0, p0, p1

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object p0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object p0, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/L;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/L;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object p0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object p0, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    return-object p0
.end method

.method public getSupportLoaderManager()LW/a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, LW/c;

    invoke-interface {p0}, Landroidx/lifecycle/W;->getViewModelStore()Landroidx/lifecycle/V;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LW/c;-><init>(Landroidx/lifecycle/t;Landroidx/lifecycle/V;)V

    return-object v0
.end method

.method public markFragmentsCreated()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/w;->getSupportFragmentManager()Landroidx/fragment/app/L;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/w;->c(Landroidx/fragment/app/L;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/i;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/r;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/i;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/w;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v0, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object p0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object p0, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/L;->E:Z

    iput-boolean p1, p0, Landroidx/fragment/app/L;->F:Z

    iget-object v0, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean p1, v0, Landroidx/fragment/app/N;->i:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->t(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/w;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/w;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object v0, v0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object v0, v0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/L;->k()V

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v0, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/activity/i;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object p0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object p0, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    invoke-virtual {p0}, Landroidx/fragment/app/L;->i()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/w;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object v0, v0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    const/4 v1, 0x5

    iget-object v0, v0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/L;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v0, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/w;->onResumeFragments()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/i;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/w;->mResumed:Z

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object p0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object p0, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/L;->x(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/w;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v1, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object p0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object p0, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/L;->E:Z

    iput-boolean v0, p0, Landroidx/fragment/app/L;->F:Z

    iget-object v1, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v0, v1, Landroidx/fragment/app/N;->i:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/L;->t(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/w;->mStopped:Z

    iget-boolean v1, p0, Landroidx/fragment/app/w;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Landroidx/fragment/app/w;->mCreated:Z

    iget-object v1, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object v1, v1, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    iput-boolean v0, v1, Landroidx/fragment/app/L;->E:Z

    iput-boolean v0, v1, Landroidx/fragment/app/L;->F:Z

    iget-object v3, v1, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v0, v3, Landroidx/fragment/app/N;->i:Z

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroidx/fragment/app/L;->t(I)V

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object v1, v1, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/L;->x(Z)Z

    iget-object v1, p0, Landroidx/fragment/app/w;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v2, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object p0, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object p0, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    iput-boolean v0, p0, Landroidx/fragment/app/L;->E:Z

    iput-boolean v0, p0, Landroidx/fragment/app/L;->F:Z

    iget-object v1, p0, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v0, v1, Landroidx/fragment/app/N;->i:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/L;->t(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/w;->mStopped:Z

    invoke-virtual {p0}, Landroidx/fragment/app/w;->markFragmentsCreated()V

    iget-object v1, p0, Landroidx/fragment/app/w;->mFragments:Landroidx/fragment/app/y;

    iget-object v1, v1, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/M;

    iput-boolean v0, v1, Landroidx/fragment/app/L;->F:Z

    iget-object v2, v1, Landroidx/fragment/app/L;->L:Landroidx/fragment/app/N;

    iput-boolean v0, v2, Landroidx/fragment/app/N;->i:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/L;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Lz/g;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Lz/g;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/r;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/w;->startActivityFromFragment(Landroidx/fragment/app/r;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/r;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1
    invoke-virtual {p0, p2, v0, p4}, Landroidx/activity/i;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 2
    :cond_0
    iget-object p0, p1, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object p0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/L;->z:Landroidx/activity/result/d;

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object p1, p1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/L;->C:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 7
    const-string p1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/L;->z:Landroidx/activity/result/d;

    .line 9
    invoke-virtual {p0, p2}, Landroidx/activity/result/d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-ne p3, v0, :cond_3

    .line 11
    iget-object p0, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    .line 12
    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    .line 13
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not attached to Activity"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/r;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move-object/from16 v7, p8

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroidx/activity/i;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v5, v0, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    const-string v6, "Fragment "

    if-eqz v5, :cond_8

    const-string v5, "FragmentManager"

    const/4 v8, 0x2

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " received the following in startIntentSenderForResult() requestCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " IntentSender: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " fillInIntent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " options: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v9

    iget-object v10, v9, Landroidx/fragment/app/L;->A:Landroidx/activity/result/d;

    if-eqz v10, :cond_6

    if-eqz v7, :cond_4

    if-nez v3, :cond_2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    const/4 v10, 0x1

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "ActivityOptions "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " were added to fillInIntent "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for fragment "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v4, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    const-string v4, "intentSender"

    invoke-static {p2, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/activity/result/IntentSenderRequest;

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct {v4, p2, v3, v10, v11}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    new-instance v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v3, v0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-direct {v1, v3, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    iget-object v2, v9, Landroidx/fragment/app/L;->C:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "is launching an IntentSender for result "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v9, Landroidx/fragment/app/L;->A:Landroidx/activity/result/d;

    invoke-virtual {v0, v4}, Landroidx/activity/result/d;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    move/from16 v10, p5

    move/from16 v11, p6

    iget-object v0, v9, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    if-ne v2, v4, :cond_7

    iget-object v0, v0, Landroidx/fragment/app/v;->d:Landroidx/fragment/app/w;

    move-object v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroidx/activity/i;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not attached to Activity"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
