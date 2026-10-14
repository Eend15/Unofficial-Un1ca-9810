.class public final Landroidx/appcompat/app/h;
.super Landroidx/activity/j;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroidx/appcompat/app/l;


# instance fields
.field public g:Landroidx/appcompat/app/F;

.field public final h:Landroidx/appcompat/app/G;

.field public final i:Landroidx/appcompat/app/g;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 4

    invoke-static {p1, p2}, Landroidx/appcompat/app/h;->g(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lf/a;->dialogTheme:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-direct {p0, p1, v1}, Landroidx/activity/j;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroidx/appcompat/app/G;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/G;-><init>(Landroidx/appcompat/app/h;)V

    iput-object v1, p0, Landroidx/appcompat/app/h;->h:Landroidx/appcompat/app/G;

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object v1

    if-nez p2, :cond_1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v2, Lf/a;->dialogTheme:I

    invoke-virtual {p1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    :cond_1
    move-object p1, v1

    check-cast p1, Landroidx/appcompat/app/F;

    iput p2, p1, Landroidx/appcompat/app/F;->U:I

    invoke-virtual {v1}, Landroidx/appcompat/app/q;->d()V

    new-instance p1, Landroidx/appcompat/app/g;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/g;-><init>(Landroid/content/Context;Landroidx/appcompat/app/h;Landroid/view/Window;)V

    iput-object p1, p0, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/g;

    return-void
.end method

.method public static g(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lf/a;->alertDialogTheme:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

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

.method public final d()Landroidx/appcompat/app/q;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/h;->g:Landroidx/appcompat/app/F;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/app/q;->d:Landroidx/appcompat/app/o;

    new-instance v0, Landroidx/appcompat/app/F;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Landroidx/appcompat/app/F;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/l;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/h;->g:Landroidx/appcompat/app/F;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/h;->g:Landroidx/appcompat/app/F;

    return-object p0
.end method

.method public final dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->e()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/app/h;->h:Landroidx/appcompat/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/G;->d:Landroidx/appcompat/app/h;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h;->i(Landroid/view/KeyEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/K;->f(Landroid/view/View;Landroidx/lifecycle/t;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, La4/x;->Y(Landroid/view/View;Ld0/g;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Landroidx/activity/q;->view_tree_on_back_pressed_dispatcher_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/q;->a()V

    invoke-super {p0, p1}, Landroidx/activity/j;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->d()V

    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/F;

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->v()V

    iget-object p0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->b()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/app/h;->f(Landroid/os/Bundle;)V

    move-object/from16 v2, p0

    iget-object v2, v2, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/g;

    iget-object v3, v2, Landroidx/appcompat/app/g;->b:Landroidx/appcompat/app/h;

    iget v4, v2, Landroidx/appcompat/app/g;->q:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/h;->setContentView(I)V

    sget v3, Lf/f;->parentPanel:I

    iget-object v4, v2, Landroidx/appcompat/app/g;->c:Landroid/view/Window;

    invoke-virtual {v4, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v5, Lf/f;->topPanel:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lf/f;->contentPanel:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget v7, Lf/f;->buttonPanel:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v8, Lf/f;->customPanel:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/high16 v8, 0x20000

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setFlags(II)V

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    sget v9, Lf/f;->topPanel:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    sget v10, Lf/f;->contentPanel:I

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lf/f;->buttonPanel:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v9, v5}, Landroidx/appcompat/app/g;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v10, v6}, Landroidx/appcompat/app/g;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-static {v11, v7}, Landroidx/appcompat/app/g;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    sget v9, Lf/f;->scrollView:I

    invoke-virtual {v4, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroidx/core/widget/NestedScrollView;

    iput-object v9, v2, Landroidx/appcompat/app/g;->i:Landroidx/core/widget/NestedScrollView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setFocusable(Z)V

    iget-object v9, v2, Landroidx/appcompat/app/g;->i:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v9, v10}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v9, 0x102000b

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Landroidx/appcompat/app/g;->m:Landroid/widget/TextView;

    const/4 v11, -0x1

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v2, Landroidx/appcompat/app/g;->i:Landroidx/core/widget/NestedScrollView;

    iget-object v12, v2, Landroidx/appcompat/app/g;->m:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, v2, Landroidx/appcompat/app/g;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v9, :cond_1

    iget-object v9, v2, Landroidx/appcompat/app/g;->i:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v12, v2, Landroidx/appcompat/app/g;->i:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v13, v2, Landroidx/appcompat/app/g;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v14, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v9, 0x1020019

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v2, Landroidx/appcompat/app/g;->f:Landroid/widget/Button;

    iget-object v12, v2, Landroidx/appcompat/app/g;->w:Landroidx/appcompat/app/c;

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_2

    iget-object v13, v2, Landroidx/appcompat/app/g;->f:Landroid/widget/Button;

    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    move v13, v10

    goto :goto_1

    :cond_2
    iget-object v13, v2, Landroidx/appcompat/app/g;->f:Landroid/widget/Button;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v2, Landroidx/appcompat/app/g;->f:Landroid/widget/Button;

    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    move v13, v14

    :goto_1
    const v15, 0x102001a

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    iput-object v15, v2, Landroidx/appcompat/app/g;->g:Landroid/widget/Button;

    invoke-virtual {v15, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v15, v2, Landroidx/appcompat/app/g;->g:Landroid/widget/Button;

    invoke-virtual {v15, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v15, v2, Landroidx/appcompat/app/g;->g:Landroid/widget/Button;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v15, v2, Landroidx/appcompat/app/g;->g:Landroid/widget/Button;

    invoke-virtual {v15, v10}, Landroid/view/View;->setVisibility(I)V

    or-int/2addr v13, v1

    :goto_2
    const v15, 0x102001b

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    iput-object v15, v2, Landroidx/appcompat/app/g;->h:Landroid/widget/Button;

    invoke-virtual {v15, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v2, Landroidx/appcompat/app/g;->h:Landroid/widget/Button;

    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v12, v2, Landroidx/appcompat/app/g;->h:Landroid/widget/Button;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v2, Landroidx/appcompat/app/g;->h:Landroid/widget/Button;

    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    or-int/2addr v13, v0

    :goto_3
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iget-object v15, v2, Landroidx/appcompat/app/g;->a:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    sget v9, Lf/a;->alertDialogCenterButtons:I

    invoke-virtual {v15, v9, v12, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v12, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_7

    const/high16 v9, 0x3f000000    # 0.5f

    if-ne v13, v14, :cond_5

    iget-object v0, v2, Landroidx/appcompat/app/g;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v9, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_5
    if-ne v13, v1, :cond_6

    iget-object v0, v2, Landroidx/appcompat/app/g;->g:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v9, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_6
    if-ne v13, v0, :cond_7

    iget-object v0, v2, Landroidx/appcompat/app/g;->h:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v9, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_4
    if-eqz v13, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v0, v2, Landroidx/appcompat/app/g;->n:Landroid/view/View;

    if-eqz v0, :cond_9

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v0, v11, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v9, v2, Landroidx/appcompat/app/g;->n:Landroid/view/View;

    invoke-virtual {v5, v9, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lf/f;->title_template:I

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_9
    const v0, 0x1020006

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Landroidx/appcompat/app/g;->k:Landroid/widget/ImageView;

    iget-object v0, v2, Landroidx/appcompat/app/g;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, v2, Landroidx/appcompat/app/g;->u:Z

    if-eqz v0, :cond_b

    sget v0, Lf/f;->alertTitle:I

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Landroidx/appcompat/app/g;->l:Landroid/widget/TextView;

    iget-object v9, v2, Landroidx/appcompat/app/g;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Landroidx/appcompat/app/g;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v9, v2, Landroidx/appcompat/app/g;->k:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_a
    iget-object v0, v2, Landroidx/appcompat/app/g;->l:Landroid/widget/TextView;

    iget-object v9, v2, Landroidx/appcompat/app/g;->k:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    iget-object v12, v2, Landroidx/appcompat/app/g;->k:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    iget-object v13, v2, Landroidx/appcompat/app/g;->k:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    iget-object v15, v2, Landroidx/appcompat/app/g;->k:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v0, v9, v12, v13, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v2, Landroidx/appcompat/app/g;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_b
    sget v0, Lf/f;->title_template:I

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Landroidx/appcompat/app/g;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_c

    move v0, v14

    goto :goto_7

    :cond_c
    move v0, v10

    :goto_7
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v8, :cond_d

    move v3, v14

    goto :goto_8

    :cond_d
    move v3, v10

    :goto_8
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_e

    move v7, v14

    goto :goto_9

    :cond_e
    move v7, v10

    :goto_9
    if-nez v7, :cond_f

    sget v8, Lf/f;->textSpacerNoButtons:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    if-eqz v3, :cond_12

    iget-object v8, v2, Landroidx/appcompat/app/g;->i:Landroidx/core/widget/NestedScrollView;

    if-eqz v8, :cond_10

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_10
    iget-object v8, v2, Landroidx/appcompat/app/g;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v8, :cond_11

    sget v8, Lf/f;->titleDividerNoCustom:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_a

    :cond_11
    const/4 v9, 0x0

    :goto_a
    if-eqz v9, :cond_13

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_12
    sget v5, Lf/f;->textSpacerNoTitle:I

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_b
    iget-object v5, v2, Landroidx/appcompat/app/g;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_14

    if-nez v3, :cond_17

    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    if-eqz v3, :cond_15

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    goto :goto_c

    :cond_15
    iget v9, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->d:I

    :goto_c
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    if-eqz v7, :cond_16

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    goto :goto_d

    :cond_16
    iget v13, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->e:I

    :goto_d
    invoke-virtual {v5, v8, v9, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    :cond_17
    if-nez v0, :cond_1b

    iget-object v0, v2, Landroidx/appcompat/app/g;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v0, :cond_18

    goto :goto_e

    :cond_18
    iget-object v0, v2, Landroidx/appcompat/app/g;->i:Landroidx/core/widget/NestedScrollView;

    :goto_e
    if-eqz v0, :cond_1b

    if-eqz v7, :cond_19

    goto :goto_f

    :cond_19
    move v1, v10

    :goto_f
    or-int/2addr v1, v3

    sget v3, Lf/f;->scrollIndicatorUp:I

    invoke-virtual {v4, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v5, Lf/f;->scrollIndicatorDown:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget-object v5, LK/D;->a:Ljava/util/WeakHashMap;

    const/4 v5, 0x3

    invoke-static {v0, v1, v5}, LK/y;->b(Landroid/view/View;II)V

    if-eqz v3, :cond_1a

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    if-eqz v4, :cond_1b

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    iget-object v0, v2, Landroidx/appcompat/app/g;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v0, :cond_1c

    iget-object v1, v2, Landroidx/appcompat/app/g;->o:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v2, Landroidx/appcompat/app/g;->p:I

    if-le v1, v11, :cond_1c

    invoke-virtual {v0, v1, v14}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1c
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/g;

    iget-object v0, v0, Landroidx/appcompat/app/g;->i:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->i(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/g;

    iget-object v0, v0, Landroidx/appcompat/app/g;->i:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->i(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/j;->onStop()V

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

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

.method public final onSupportActionModeFinished(Lj/b;)V
    .locals 0

    return-void
.end method

.method public final onSupportActionModeStarted(Lj/b;)V
    .locals 0

    return-void
.end method

.method public final onWindowStartingSupportActionMode(Lj/a;)Lj/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->h(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->i(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/q;->j(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->d()Landroidx/appcompat/app/q;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/q;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h;->h(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p0, p0, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/g;

    iput-object p1, p0, Landroidx/appcompat/app/g;->d:Ljava/lang/CharSequence;

    .line 5
    iget-object p0, p0, Landroidx/appcompat/app/g;->l:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
