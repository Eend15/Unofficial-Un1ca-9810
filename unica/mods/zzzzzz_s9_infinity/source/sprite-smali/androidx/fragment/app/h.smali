.class public final Landroidx/fragment/app/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/h;->d:Z

    iput-boolean v0, p0, Landroidx/fragment/app/h;->e:Z

    iput-object p1, p0, Landroidx/fragment/app/h;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public static f(Landroid/view/ViewGroup;Landroidx/fragment/app/G;)Landroidx/fragment/app/h;
    .locals 2

    sget v0, LR/b;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/h;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/fragment/app/h;

    invoke-direct {p1, p0}, Landroidx/fragment/app/h;-><init>(Landroid/view/ViewGroup;)V

    sget v0, LR/b;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final a(IILandroidx/fragment/app/Q;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, LG/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p3, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/h;->d(Landroidx/fragment/app/r;)Landroidx/fragment/app/W;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/W;->c(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/fragment/app/W;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/W;-><init>(IILandroidx/fragment/app/Q;LG/c;)V

    iget-object p1, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/V;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/V;-><init>(Landroidx/fragment/app/h;Landroidx/fragment/app/W;I)V

    iget-object p2, v2, Landroidx/fragment/app/W;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/V;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/V;-><init>(Landroidx/fragment/app/h;Landroidx/fragment/app/W;I)V

    iget-object p0, v2, Landroidx/fragment/app/W;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Ljava/util/ArrayList;Z)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/W;

    iget-object v10, v6, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    iget-object v10, v10, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-static {v10}, LB/a;->c(Landroid/view/View;)I

    move-result v10

    iget v11, v6, Landroidx/fragment/app/W;->a:I

    invoke-static {v11}, Lq/e;->c(I)I

    move-result v11

    if-eqz v11, :cond_2

    if-eq v11, v8, :cond_1

    if-eq v11, v9, :cond_2

    if-eq v11, v7, :cond_2

    goto :goto_0

    :cond_1
    if-eq v10, v9, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_2
    if-ne v10, v9, :cond_0

    if-nez v4, :cond_0

    move-object v4, v6

    goto :goto_0

    :cond_3
    const-string v3, "FragmentManager"

    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    const-string v10, " to "

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Executing operations from "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v8

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/fragment/app/W;

    iget-object v13, v13, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/W;

    iget-object v15, v15, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    iget-object v15, v15, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    iget-object v8, v13, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    iget v7, v8, Landroidx/fragment/app/p;->b:I

    iput v7, v15, Landroidx/fragment/app/p;->b:I

    iget v7, v8, Landroidx/fragment/app/p;->c:I

    iput v7, v15, Landroidx/fragment/app/p;->c:I

    iget v7, v8, Landroidx/fragment/app/p;->d:I

    iput v7, v15, Landroidx/fragment/app/p;->d:I

    iget v7, v8, Landroidx/fragment/app/p;->e:I

    iput v7, v15, Landroidx/fragment/app/p;->e:I

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/W;

    new-instance v13, LG/c;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7}, Landroidx/fragment/app/W;->d()V

    iget-object v14, v7, Landroidx/fragment/app/W;->e:Ljava/util/HashSet;

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v15, Landroidx/fragment/app/f;

    invoke-direct {v15, v7, v13}, Landroidx/appcompat/app/B;-><init>(Landroidx/fragment/app/W;LG/c;)V

    iput-boolean v8, v15, Landroidx/fragment/app/f;->d:Z

    iput-boolean v2, v15, Landroidx/fragment/app/f;->c:Z

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, LG/c;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7}, Landroidx/fragment/app/W;->d()V

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v14, Landroidx/fragment/app/g;

    if-eqz v2, :cond_6

    if-ne v7, v4, :cond_7

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    if-ne v7, v5, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    invoke-direct {v14, v7, v13}, Landroidx/appcompat/app/B;-><init>(Landroidx/fragment/app/W;LG/c;)V

    iget v13, v7, Landroidx/fragment/app/W;->a:I

    iget-object v15, v7, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    if-ne v13, v9, :cond_a

    if-eqz v2, :cond_8

    iget-object v13, v15, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    goto :goto_5

    :cond_8
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    if-eqz v2, :cond_9

    iget-object v13, v15, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    goto :goto_6

    :cond_9
    iget-object v13, v15, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_b

    iget-object v13, v15, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    goto :goto_6

    :cond_b
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    if-eqz v8, :cond_d

    if-eqz v2, :cond_c

    iget-object v8, v15, Landroidx/fragment/app/r;->K:Landroidx/fragment/app/p;

    goto :goto_7

    :cond_c
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_d
    :goto_7
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, LH/p;

    invoke-direct {v8, v0, v12, v7}, LH/p;-><init>(Landroidx/fragment/app/h;Ljava/util/ArrayList;Landroidx/fragment/app/W;)V

    iget-object v7, v7, Landroidx/fragment/app/W;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/g;

    iget-object v7, v7, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast v7, Landroidx/fragment/app/W;

    iget-object v13, v7, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    iget-object v13, v13, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-static {v13}, LB/a;->c(Landroid/view/View;)I

    move-result v13

    iget v7, v7, Landroidx/fragment/app/W;->a:I

    goto :goto_8

    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/g;

    iget-object v11, v7, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast v11, Landroidx/fragment/app/W;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroidx/appcompat/app/B;->d()V

    goto :goto_9

    :cond_10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    iget-object v0, v0, Landroidx/fragment/app/h;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v13, v8

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, " has started."

    if-eqz v14, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/f;

    iget-object v8, v14, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast v8, Landroidx/fragment/app/W;

    iget-object v9, v8, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    iget-object v9, v9, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-static {v9}, LB/a;->c(Landroid/view/View;)I

    move-result v9

    iget v8, v8, Landroidx/fragment/app/W;->a:I

    if-eq v9, v8, :cond_19

    move-object/from16 p0, v6

    const/4 v6, 0x2

    if-eq v9, v6, :cond_11

    if-eq v8, v6, :cond_11

    move-object/from16 v22, v5

    :goto_b
    const/4 v5, 0x3

    goto/16 :goto_f

    :cond_11
    invoke-virtual {v14, v7}, Landroidx/fragment/app/f;->j(Landroid/content/Context;)Lo1/b;

    move-result-object v6

    if-nez v6, :cond_12

    invoke-virtual {v14}, Landroidx/appcompat/app/B;->d()V

    :goto_c
    move-object/from16 v22, v5

    :goto_d
    const/4 v5, 0x3

    goto/16 :goto_10

    :cond_12
    iget-object v6, v6, Lo1/b;->d:Ljava/lang/Object;

    check-cast v6, Landroid/animation/Animator;

    if-nez v6, :cond_13

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    iget-object v8, v14, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast v8, Landroidx/fragment/app/W;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v22, v5

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v9, v8, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    if-eqz v5, :cond_15

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring Animator set on "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as this Fragment was involved in a Transition."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {v14}, Landroidx/appcompat/app/B;->d()V

    goto :goto_d

    :cond_15
    iget v5, v8, Landroidx/fragment/app/W;->a:I

    const/4 v13, 0x3

    if-ne v5, v13, :cond_16

    const/16 v19, 0x1

    goto :goto_e

    :cond_16
    const/16 v19, 0x0

    :goto_e
    if-eqz v19, :cond_17

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_17
    iget-object v5, v9, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v9, Landroidx/fragment/app/c;

    move-object/from16 v16, v9

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 v20, v8

    move-object/from16 v21, v14

    invoke-direct/range {v16 .. v21}, Landroidx/fragment/app/c;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/W;Landroidx/fragment/app/f;)V

    invoke-virtual {v6, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_18

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Animator from operation "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    new-instance v5, Lw0/l;

    const/4 v9, 0x3

    invoke-direct {v5, v6, v9, v8}, Lw0/l;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v6, v14, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    check-cast v6, LG/c;

    invoke-virtual {v6, v5}, LG/c;->a(LG/b;)V

    move-object/from16 v6, p0

    move-object/from16 v5, v22

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v13, 0x1

    goto/16 :goto_a

    :cond_19
    move-object/from16 v22, v5

    move-object/from16 p0, v6

    goto/16 :goto_b

    :goto_f
    invoke-virtual {v14}, Landroidx/appcompat/app/B;->d()V

    :goto_10
    move-object/from16 v6, p0

    move-object/from16 v5, v22

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v22, v5

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/f;

    iget-object v6, v5, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast v6, Landroidx/fragment/app/W;

    iget-object v8, v6, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    const-string v9, "Ignoring Animation set on "

    if-eqz v2, :cond_1c

    const/4 v11, 0x2

    invoke-static {v3, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as Animations cannot run alongside Transitions."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-virtual {v5}, Landroidx/appcompat/app/B;->d()V

    goto :goto_11

    :cond_1c
    if-eqz v13, :cond_1e

    const/4 v11, 0x2

    invoke-static {v3, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as Animations cannot run alongside Animators."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-virtual {v5}, Landroidx/appcompat/app/B;->d()V

    goto :goto_11

    :cond_1e
    iget-object v8, v8, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroidx/fragment/app/f;->j(Landroid/content/Context;)Lo1/b;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Lo1/b;->c:Ljava/lang/Object;

    check-cast v9, Landroid/view/animation/Animation;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v6, Landroidx/fragment/app/W;->a:I

    const/4 v14, 0x1

    if-eq v11, v14, :cond_1f

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5}, Landroidx/appcompat/app/B;->d()V

    goto :goto_12

    :cond_1f
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v11, Landroidx/fragment/app/x;

    invoke-direct {v11, v9, v0, v8}, Landroidx/fragment/app/x;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v9, Landroidx/fragment/app/e;

    invoke-direct {v9, v6, v0, v8, v5}, Landroidx/fragment/app/e;-><init>(Landroidx/fragment/app/W;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/f;)V

    invoke-virtual {v11, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v9, 0x2

    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_20

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Animation from operation "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_12
    new-instance v9, Lw0/i;

    const/16 v21, 0x7

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v21}, Lw0/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v5, v5, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    check-cast v5, LG/c;

    invoke-virtual {v5, v9}, LG/c;->a(LG/b;)V

    goto/16 :goto_11

    :cond_21
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/W;

    iget-object v2, v1, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    iget-object v2, v2, Landroidx/fragment/app/r;->H:Landroid/view/View;

    iget v1, v1, Landroidx/fragment/app/W;->a:I

    invoke-static {v2, v1}, LB/a;->a(Landroid/view/View;I)V

    goto :goto_13

    :cond_22
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Completed executing operations from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public final c()V
    .locals 7

    iget-boolean v0, p0, Landroidx/fragment/app/h;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->a:Landroid/view/ViewGroup;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/h;->e()V

    iput-boolean v1, p0, Landroidx/fragment/app/h;->d:Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/W;

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroidx/fragment/app/W;->a()V

    iget-boolean v4, v3, Landroidx/fragment/app/W;->g:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/h;->g()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v3, "FragmentManager"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "FragmentManager"

    const-string v5, "SpecialEffectsController: Executing pending operations"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/W;

    invoke-virtual {v5}, Landroidx/fragment/app/W;->d()V

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, Landroidx/fragment/app/h;->d:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/h;->b(Ljava/util/ArrayList;Z)V

    iput-boolean v1, p0, Landroidx/fragment/app/h;->d:Z

    const-string p0, "FragmentManager"

    invoke-static {p0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "FragmentManager"

    const-string v1, "SpecialEffectsController: Finished executing pending operations"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Landroidx/fragment/app/r;)Landroidx/fragment/app/W;
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/W;

    iget-object v1, v0, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/W;->f:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()V
    .locals 9

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->a:Landroid/view/ViewGroup;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/h;->g()V

    iget-object v3, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/W;

    invoke-virtual {v4}, Landroidx/fragment/app/W;->d()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/W;

    const-string v5, "FragmentManager"

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v7, ""

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/h;->a:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling running operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v4}, Landroidx/fragment/app/W;->a()V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/W;

    const-string v5, "FragmentManager"

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    const-string v7, ""

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/h;->a:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling pending operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v4}, Landroidx/fragment/app/W;->a()V

    goto :goto_3

    :cond_7
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g()V
    .locals 3

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/W;

    iget v1, v0, Landroidx/fragment/app/W;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    invoke-virtual {v1}, Landroidx/fragment/app/r;->y()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, LB/a;->b(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/W;->c(II)V

    goto :goto_0

    :cond_1
    return-void
.end method
