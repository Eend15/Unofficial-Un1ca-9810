.class public abstract Landroidx/appcompat/app/k;
.super Landroidx/fragment/app/w;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/l;
.implements Lz/h;


# static fields
.field private static final DELEGATE_TAG:Ljava/lang/String; = "androidx:appcompat"


# instance fields
.field private mDelegate:Landroidx/appcompat/app/q;

.field private mResources:Landroid/content/res/Resources;


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->d()V

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->v()V

    iget-object v0, p0, Landroidx/appcompat/app/F;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/appcompat/app/F;->n:Landroidx/appcompat/app/y;

    iget-object p0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/y;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/F;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/app/F;->P:Z

    iget v2, v0, Landroidx/appcompat/app/F;->T:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Landroidx/appcompat/app/q;->e:I

    :goto_0
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/F;->B(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1}, Landroidx/appcompat/app/q;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Landroidx/appcompat/app/q;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean v2, Landroidx/appcompat/app/q;->g:Z

    if-nez v2, :cond_2

    new-instance v2, LY/e;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, LY/e;-><init>(Landroid/content/Context;I)V

    sget-object v3, Landroidx/appcompat/app/q;->d:Landroidx/appcompat/app/o;

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/o;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-static {p1, v0, v4, v3}, Landroidx/appcompat/app/F;->s(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_0
    move-object v5, p1

    check-cast v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v5, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    :cond_3
    instance-of v2, p1, Lj/d;

    if-eqz v2, :cond_4

    invoke-static {p1, v0, v4, v3}, Landroidx/appcompat/app/F;->s(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_1
    move-object v3, p1

    check-cast v3, Lj/d;

    invoke-virtual {v3, v2}, Lj/d;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    :cond_4
    sget-boolean v2, Landroidx/appcompat/app/F;->k0:Z

    if-nez v2, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v3, -0x1

    iput v3, v2, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    iput v6, v2, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_1b

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput v3, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_2

    :cond_6
    iget v3, v2, Landroid/content/res/Configuration;->fontScale:F

    iget v6, v5, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_7

    iput v6, v4, Landroid/content/res/Configuration;->fontScale:F

    :cond_7
    iget v3, v2, Landroid/content/res/Configuration;->mcc:I

    iget v6, v5, Landroid/content/res/Configuration;->mcc:I

    if-eq v3, v6, :cond_8

    iput v6, v4, Landroid/content/res/Configuration;->mcc:I

    :cond_8
    iget v3, v2, Landroid/content/res/Configuration;->mnc:I

    iget v6, v5, Landroid/content/res/Configuration;->mnc:I

    if-eq v3, v6, :cond_9

    iput v6, v4, Landroid/content/res/Configuration;->mnc:I

    :cond_9
    invoke-static {v2, v5, v4}, Landroidx/appcompat/app/w;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v3, v2, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, v5, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v6, :cond_a

    iput v6, v4, Landroid/content/res/Configuration;->touchscreen:I

    :cond_a
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    iget v6, v5, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v6, :cond_b

    iput v6, v4, Landroid/content/res/Configuration;->keyboard:I

    :cond_b
    iget v3, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v6, :cond_c

    iput v6, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_c
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    iget v6, v5, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v6, :cond_d

    iput v6, v4, Landroid/content/res/Configuration;->navigation:I

    :cond_d
    iget v3, v2, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, v5, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v6, :cond_e

    iput v6, v4, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_e
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    iget v6, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v6, :cond_f

    iput v6, v4, Landroid/content/res/Configuration;->orientation:I

    :cond_f
    iget v3, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    if-eq v3, v6, :cond_10

    iget v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v3, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0xc0

    if-eq v3, v6, :cond_11

    iget v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v3, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x30

    if-eq v3, v6, :cond_12

    iget v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_12
    iget v3, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0x300

    if-eq v3, v6, :cond_13

    iget v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    iget v3, v2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0x3

    if-eq v3, v6, :cond_14

    iget v3, v4, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->colorMode:I

    :cond_14
    iget v3, v2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0xc

    if-eq v3, v6, :cond_15

    iget v3, v4, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->colorMode:I

    :cond_15
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    if-eq v3, v6, :cond_16

    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->uiMode:I

    :cond_16
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    if-eq v3, v6, :cond_17

    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->uiMode:I

    :cond_17
    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v3, v6, :cond_18

    iput v6, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_18
    iget v3, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v6, :cond_19

    iput v6, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_19
    iget v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v3, v6, :cond_1a

    iput v6, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1a
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, v5, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_1b

    iput v3, v4, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1b
    :goto_2
    invoke-static {p1, v0, v4, v1}, Landroidx/appcompat/app/F;->s(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Lj/d;

    sget v2, Lf/i;->Theme_AppCompat_Empty:I

    invoke-direct {v1, p1, v2}, Lj/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lj/d;->a(Landroid/content/res/Configuration;)V

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1c

    invoke-virtual {v1}, Lj/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    :catch_2
    :cond_1c
    move-object p1, v1

    :goto_3
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/K;->f(Landroid/view/View;Landroidx/lifecycle/t;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, LV/d;->view_tree_view_model_store_owner:I

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, La4/x;->Y(Landroid/view/View;Ld0/g;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Landroidx/activity/q;->view_tree_on_back_pressed_dispatcher_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/a;->j(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lz/d;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->v()V

    iget-object p0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate()Landroidx/appcompat/app/q;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->mDelegate:Landroidx/appcompat/app/q;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/app/q;->d:Landroidx/appcompat/app/o;

    new-instance v0, Landroidx/appcompat/app/F;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Landroidx/appcompat/app/F;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/l;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/k;->mDelegate:Landroidx/appcompat/app/q;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/k;->mDelegate:Landroidx/appcompat/app/q;

    return-object p0
.end method

.method public getDrawerToggleDelegate()Landroidx/appcompat/app/b;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/appcompat/app/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    iget-object v0, p0, Landroidx/appcompat/app/F;->q:Lj/i;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->z()V

    new-instance v0, Lj/i;

    iget-object v1, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/a;->e()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lj/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/F;->q:Lj/i;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/F;->q:Lj/i;

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    sget v1, Landroidx/appcompat/widget/V0;->a:I

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/a;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->z()V

    iget-object p0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 0

    invoke-static {p0}, Lz/b;->a(Landroidx/appcompat/app/k;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->b()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/activity/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/F;

    iget-boolean v0, p1, Landroidx/appcompat/app/F;->G:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/appcompat/app/F;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/F;->z()V

    iget-object v0, p1, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->g()V

    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/v;->a()Landroidx/appcompat/widget/v;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroidx/appcompat/widget/C0;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Landroidx/appcompat/widget/C0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/h;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ln/h;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p1, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p1, Landroidx/appcompat/app/F;->S:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/F;->m(Z)Z

    iget-object p1, p0, Landroidx/appcompat/app/k;->mResources:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/k;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_2
    return-void

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public onContentChanged()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->onSupportContentChanged()V

    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Lz/i;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lz/h;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lz/b;->a(Landroidx/appcompat/app/k;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    iget-object v1, p1, Lz/i;->e:Landroidx/appcompat/app/k;

    if-nez p0, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    :cond_1
    iget-object p1, p1, Lz/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :try_start_0
    invoke-static {v1, p0}, Lz/b;->b(Landroidx/appcompat/app/k;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p1, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {v1, p0}, Lz/b;->b(Landroidx/appcompat/app/k;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_1
    const-string p1, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/w;->onDestroy()V

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->e()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLocalesChanged(LG/e;)V
    .locals 0

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/w;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/app/a;->d()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->onSupportNavigateUp()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onNightModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/activity/i;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->v()V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/w;->onPostResume()V

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->z()V

    iget-object p0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a;->m(Z)V

    :cond_0
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Lz/i;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/w;->onStart()V

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/F;->m(Z)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/w;->onStop()V

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->z()V

    iget-object p0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a;->m(Z)V

    :cond_0
    return-void
.end method

.method public onSupportActionModeFinished(Lj/b;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Lj/b;)V
    .locals 0

    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/k;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lz/i;

    invoke-direct {v0, p0}, Lz/i;-><init>(Landroidx/appcompat/app/k;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/k;->onCreateSupportNavigateUpTaskStack(Lz/i;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/k;->onPrepareSupportNavigateUpTaskStack(Lz/i;)V

    iget-object v2, v0, Lz/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v1, [Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    aget-object v4, v2, v1

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v4, 0x1000c000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v0, v0, Lz/i;->e:Landroidx/appcompat/app/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/k;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lj/a;)Lj/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/k;->d()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->h(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/k;->d()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->i(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/k;->d()V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/q;->j(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    iget-object v0, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->z()V

    iget-object v0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    instance-of v1, v0, Landroidx/appcompat/app/S;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/app/F;->q:Lj/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->h()V

    :cond_1
    iput-object v1, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz p1, :cond_3

    new-instance v0, Landroidx/appcompat/app/M;

    iget-object v1, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/app/F;->r:Ljava/lang/CharSequence;

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/F;->n:Landroidx/appcompat/app/y;

    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/app/M;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroidx/appcompat/app/y;)V

    iput-object v0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    iget-object v1, p0, Landroidx/appcompat/app/F;->n:Landroidx/appcompat/app/y;

    iget-object v0, v0, Landroidx/appcompat/app/M;->c:Landroidx/appcompat/app/L;

    iput-object v0, v1, Landroidx/appcompat/app/y;->e:Landroidx/appcompat/app/L;

    iget-boolean v0, p1, Landroidx/appcompat/widget/Toolbar;->U:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iput-boolean v1, p1, Landroidx/appcompat/widget/Toolbar;->U:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->B()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/app/F;->n:Landroidx/appcompat/app/y;

    iput-object v1, p1, Landroidx/appcompat/app/y;->e:Landroidx/appcompat/app/L;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->b()V

    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    iput p1, p0, Landroidx/appcompat/app/F;->U:I

    return-void
.end method

.method public startSupportActionMode(Lj/a;)Lj/b;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->l(Lj/a;)Lj/b;

    move-result-object p0

    return-object p0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->b()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->g(I)Z

    move-result p0

    return p0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
