.class public final Landroidx/fragment/app/f;
.super Landroidx/appcompat/app/B;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:Z

.field public e:Lo1/b;


# virtual methods
.method public final j(Landroid/content/Context;)Lo1/b;
    .locals 8

    iget-boolean v0, p0, Landroidx/fragment/app/f;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/f;->e:Lo1/b;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/W;

    iget v1, v0, Landroidx/fragment/app/W;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, v0, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    iget-object v3, v0, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    if-nez v3, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    iget v5, v3, Landroidx/fragment/app/p;->f:I

    :goto_1
    iget-boolean v6, p0, Landroidx/fragment/app/f;->c:Z

    if-eqz v6, :cond_6

    if-eqz v1, :cond_4

    if-nez v3, :cond_3

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_3
    iget v3, v3, Landroidx/fragment/app/p;->d:I

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    iget v3, v3, Landroidx/fragment/app/p;->e:I

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_8

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    iget v3, v3, Landroidx/fragment/app/p;->b:I

    goto :goto_3

    :cond_8
    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    iget v3, v3, Landroidx/fragment/app/p;->c:I

    :goto_3
    invoke-virtual {v0, v2, v2, v2, v2}, Landroidx/fragment/app/r;->z(IIII)V

    iget-object v2, v0, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-eqz v2, :cond_a

    sget v7, LR/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    sget v7, LR/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v2, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_a
    iget-object v0, v0, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_b

    goto/16 :goto_7

    :cond_b
    if-nez v3, :cond_16

    if-eqz v5, :cond_16

    const/16 v0, 0x1001

    if-eq v5, v0, :cond_14

    const/16 v0, 0x2002

    if-eq v5, v0, :cond_12

    const/16 v0, 0x2005

    if-eq v5, v0, :cond_10

    const/16 v0, 0x1003

    if-eq v5, v0, :cond_e

    const/16 v0, 0x1004

    if-eq v5, v0, :cond_c

    const/4 v0, -0x1

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_c
    if-eqz v1, :cond_d

    const v0, 0x10100b8

    invoke-static {p1, v0}, La4/x;->b0(Landroid/content/Context;I)I

    move-result v0

    goto :goto_4

    :cond_d
    const v0, 0x10100b9

    invoke-static {p1, v0}, La4/x;->b0(Landroid/content/Context;I)I

    move-result v0

    goto :goto_4

    :cond_e
    if-eqz v1, :cond_f

    sget v0, LR/a;->fragment_fade_enter:I

    goto :goto_4

    :cond_f
    sget v0, LR/a;->fragment_fade_exit:I

    goto :goto_4

    :cond_10
    if-eqz v1, :cond_11

    const v0, 0x10100ba

    invoke-static {p1, v0}, La4/x;->b0(Landroid/content/Context;I)I

    move-result v0

    goto :goto_4

    :cond_11
    const v0, 0x10100bb

    invoke-static {p1, v0}, La4/x;->b0(Landroid/content/Context;I)I

    move-result v0

    goto :goto_4

    :cond_12
    if-eqz v1, :cond_13

    sget v0, LR/a;->fragment_close_enter:I

    goto :goto_4

    :cond_13
    sget v0, LR/a;->fragment_close_exit:I

    goto :goto_4

    :cond_14
    if-eqz v1, :cond_15

    sget v0, LR/a;->fragment_open_enter:I

    goto :goto_4

    :cond_15
    sget v0, LR/a;->fragment_open_exit:I

    goto :goto_4

    :cond_16
    :goto_5
    if-eqz v3, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :try_start_0
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v2, Lo1/b;

    invoke-direct {v2, v1}, Lo1/b;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_6
    move-object v6, v2

    goto :goto_7

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_17
    :try_start_1
    invoke-static {p1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v2, Lo1/b;

    invoke-direct {v2, v1}, Lo1/b;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    if-nez v0, :cond_18

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_19

    new-instance v6, Lo1/b;

    invoke-direct {v6, p1}, Lo1/b;-><init>(Landroid/view/animation/Animation;)V

    goto :goto_7

    :cond_18
    throw v1

    :cond_19
    :goto_7
    iput-object v6, p0, Landroidx/fragment/app/f;->e:Lo1/b;

    iput-boolean v4, p0, Landroidx/fragment/app/f;->d:Z

    return-object v6
.end method
