.class public final LA1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA1/l;->d:I

    iput-object p2, p0, LA1/l;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ls3/i;
    .locals 4

    iget-object v0, p0, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, La0/g;

    new-instance v1, Ls3/i;

    invoke-direct {v1}, Ls3/i;-><init>()V

    iget-object v0, v0, La0/g;->a:Landroidx/work/impl/WorkDatabase_Impl;

    new-instance v2, LU3/w;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, LU3/w;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/work/impl/WorkDatabase;->m(Le0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls3/i;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {v0, v3}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lp4/g;->g(Ls3/i;)Ls3/i;

    move-result-object v0

    iget-object v1, v0, Ls3/i;->d:Ls3/f;

    invoke-virtual {v1}, Ls3/f;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, LA1/l;->e:Ljava/lang/Object;

    check-cast v1, La0/g;

    iget-object v1, v1, La0/g;->g:Lf0/i;

    const-string v2, "Required value was null."

    if-eqz v1, :cond_2

    iget-object p0, p0, LA1/l;->e:Ljava/lang/Object;

    check-cast p0, La0/g;

    iget-object p0, p0, La0/g;->g:Lf0/i;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lf0/i;->a()I

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object v0

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x6

    const/16 v8, 0x4e20

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget v11, v1, LA1/l;->d:I

    packed-switch v11, :pswitch_data_0

    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/work/Worker;

    :try_start_0
    invoke-virtual {v1}, Landroidx/work/Worker;->f()Ln0/m;

    move-result-object v0

    iget-object v2, v1, Landroidx/work/Worker;->h:Ly0/k;

    invoke-virtual {v2, v0}, Ly0/k;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, v1, Landroidx/work/Worker;->h:Ly0/k;

    invoke-virtual {v1, v0}, Ly0/k;->k(Ljava/lang/Throwable;)Z

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "Spr_History"

    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Lh2/b;

    iget-object v1, v0, Lh2/b;->e:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lh2/b;->a:Lh2/c;

    iget-object v4, v0, Lh2/b;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v7, v0, Lh2/b;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v4}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {v3}, Le0/a;->K(Lh2/c;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    iget-object v11, v0, Lh2/a;->b:Ljava/lang/String;

    const-string v12, " | "

    const-string v13, "substring(...)"

    iget-object v0, v0, Lh2/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v8, :cond_3

    add-int/lit16 v15, v14, -0x4e20

    invoke-virtual {v1, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v14, v9

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    move v14, v10

    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_4
    move v14, v10

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v14, :cond_6

    invoke-static {v1, v5, v10, v10, v6}, LV4/m;->u0(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v4, "key"

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lh2/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    :goto_6
    return-void

    :pswitch_1
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_2
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w0()Z

    return-void

    :pswitch_3
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v1, :cond_15

    iget-object v5, v1, Landroidx/recyclerview/widget/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    iget-object v8, v1, Landroidx/recyclerview/widget/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    iget-object v12, v1, Landroidx/recyclerview/widget/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    iget-object v14, v1, Landroidx/recyclerview/widget/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v6, :cond_9

    if-eqz v11, :cond_9

    if-eqz v15, :cond_9

    if-eqz v13, :cond_9

    goto/16 :goto_e

    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    iget-wide v2, v1, Landroidx/recyclerview/widget/j;->d:J

    if-eqz v17, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Landroidx/recyclerview/widget/U;

    iget-object v9, v7, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v4, v1, Landroidx/recyclerview/widget/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/e;

    invoke-direct {v3, v1, v7, v10, v9}, Landroidx/recyclerview/widget/e;-><init>(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/U;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v1, Landroidx/recyclerview/widget/j;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Landroidx/recyclerview/widget/d;

    const/4 v7, 0x0

    invoke-direct {v5, v1, v4, v7}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/j;Ljava/util/ArrayList;I)V

    if-nez v6, :cond_b

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/i;

    iget-object v4, v4, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/U;

    iget-object v4, v4, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    sget-object v7, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v5, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_8

    :cond_b
    invoke-virtual {v5}, Landroidx/recyclerview/widget/d;->run()V

    :cond_c
    :goto_8
    if-nez v13, :cond_e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v1, Landroidx/recyclerview/widget/j;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Landroidx/recyclerview/widget/d;

    const/4 v7, 0x1

    invoke-direct {v5, v1, v4, v7}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/j;Ljava/util/ArrayList;I)V

    if-nez v6, :cond_d

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/h;

    iget-object v4, v4, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/U;

    iget-object v4, v4, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    sget-object v7, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v5, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_9

    :cond_d
    invoke-virtual {v5}, Landroidx/recyclerview/widget/d;->run()V

    :cond_e
    :goto_9
    if-nez v15, :cond_14

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v1, Landroidx/recyclerview/widget/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Landroidx/recyclerview/widget/d;

    const/4 v7, 0x2

    invoke-direct {v5, v1, v4, v7}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/j;Ljava/util/ArrayList;I)V

    if-eqz v6, :cond_10

    if-eqz v11, :cond_10

    if-nez v13, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v5}, Landroidx/recyclerview/widget/d;->run()V

    goto :goto_e

    :cond_10
    :goto_a
    if-nez v6, :cond_11

    goto :goto_b

    :cond_11
    const-wide/16 v2, 0x0

    :goto_b
    if-nez v11, :cond_12

    iget-wide v6, v1, Landroidx/recyclerview/widget/j;->e:J

    goto :goto_c

    :cond_12
    const-wide/16 v6, 0x0

    :goto_c
    if-nez v13, :cond_13

    iget-wide v8, v1, Landroidx/recyclerview/widget/j;->f:J

    goto :goto_d

    :cond_13
    const-wide/16 v8, 0x0

    :goto_d
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v6, v2

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/U;

    iget-object v1, v2, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_14
    :goto_e
    const/4 v1, 0x0

    goto :goto_f

    :cond_15
    move v1, v10

    :goto_f
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    return-void

    :pswitch_4
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/m;

    iget v1, v0, Landroidx/recyclerview/widget/m;->A:I

    iget-object v2, v0, Landroidx/recyclerview/widget/m;->z:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    if-eq v1, v3, :cond_16

    const/4 v3, 0x2

    if-eq v1, v3, :cond_17

    goto :goto_10

    :cond_16
    const/4 v3, 0x2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_17
    const/4 v1, 0x3

    iput v1, v0, Landroidx/recyclerview/widget/m;->A:I

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-array v1, v3, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v0, 0x1f4

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :goto_10
    return-void

    :pswitch_5
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/A;

    iget-object v2, v0, Landroidx/lifecycle/A;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/A;

    iget-object v0, v0, Landroidx/lifecycle/A;->f:Ljava/lang/Object;

    iget-object v3, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/A;

    sget-object v4, Landroidx/lifecycle/A;->k:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/lifecycle/A;->f:Ljava/lang/Object;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v1, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/A;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/A;->e(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_6
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/d;

    iget-boolean v2, v0, Landroidx/core/widget/d;->r:Z

    if-nez v2, :cond_18

    goto/16 :goto_13

    :cond_18
    iget-boolean v2, v0, Landroidx/core/widget/d;->p:Z

    iget-object v3, v0, Landroidx/core/widget/d;->d:Landroidx/core/widget/a;

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/core/widget/d;->p:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/core/widget/a;->e:J

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Landroidx/core/widget/a;->g:J

    iput-wide v4, v3, Landroidx/core/widget/a;->f:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v3, Landroidx/core/widget/a;->h:F

    :cond_19
    iget-wide v4, v3, Landroidx/core/widget/a;->g:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1a

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Landroidx/core/widget/a;->g:J

    iget v2, v3, Landroidx/core/widget/a;->i:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    cmp-long v2, v4, v6

    if-lez v2, :cond_1a

    :goto_11
    const/4 v2, 0x0

    goto :goto_12

    :cond_1a
    invoke-virtual {v0}, Landroidx/core/widget/d;->e()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_11

    :goto_12
    iput-boolean v2, v0, Landroidx/core/widget/d;->r:Z

    goto :goto_13

    :cond_1b
    const/4 v2, 0x0

    iget-boolean v4, v0, Landroidx/core/widget/d;->q:Z

    iget-object v5, v0, Landroidx/core/widget/d;->f:Landroid/widget/ListView;

    if-eqz v4, :cond_1c

    iput-boolean v2, v0, Landroidx/core/widget/d;->q:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-wide v6, v8

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_1c
    iget-wide v6, v3, Landroidx/core/widget/a;->f:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1d

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroidx/core/widget/a;->a(J)F

    move-result v2

    const/high16 v4, -0x3f800000    # -4.0f

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v2, v8

    add-float/2addr v2, v4

    iget-wide v8, v3, Landroidx/core/widget/a;->f:J

    sub-long v8, v6, v8

    iput-wide v6, v3, Landroidx/core/widget/a;->f:J

    long-to-float v4, v8

    mul-float/2addr v4, v2

    iget v2, v3, Landroidx/core/widget/a;->d:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v0, v0, Landroidx/core/widget/d;->t:Landroidx/appcompat/widget/k0;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_13
    return-void

    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->A()Z

    return-void

    :pswitch_8
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->i:Z

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iput-boolean v2, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->i:Z

    :cond_1e
    return-void

    :pswitch_9
    iget-object v1, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/k0;

    iput-object v0, v1, Landroidx/appcompat/widget/k0;->o:LA1/l;

    invoke-virtual {v1}, Landroidx/appcompat/widget/k0;->drawableStateChanged()V

    return-void

    :pswitch_a
    iget-object v1, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/M;

    iget-object v2, v1, Landroidx/appcompat/app/M;->b:Landroidx/appcompat/app/y;

    invoke-virtual {v1}, Landroidx/appcompat/app/M;->p()Lk/j;

    move-result-object v1

    if-eqz v1, :cond_1f

    move-object v3, v1

    goto :goto_14

    :cond_1f
    move-object v3, v0

    :goto_14
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lk/j;->w()V

    :cond_20
    :try_start_5
    invoke-virtual {v1}, Lk/j;->clear()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Landroidx/appcompat/app/y;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v2, v4, v0, v1}, Landroidx/appcompat/app/y;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_15

    :catchall_2
    move-exception v0

    goto :goto_16

    :cond_21
    :goto_15
    invoke-virtual {v1}, Lk/j;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_22
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lk/j;->v()V

    :cond_23
    return-void

    :goto_16
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lk/j;->v()V

    :cond_24
    throw v0

    :pswitch_b
    :try_start_6
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    invoke-static {v0}, Landroidx/activity/i;->access$001(Landroidx/activity/i;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_17

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    :goto_17
    return-void

    :cond_25
    throw v0

    :pswitch_c
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, La0/g;

    iget-object v0, v0, La0/g;->a:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v0, v0, Landroidx/work/impl/WorkDatabase;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    const-string v0, "readWriteLock.readLock()"

    invoke-static {v2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, La0/g;

    invoke-virtual {v0}, La0/g;->a()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v0, :cond_26

    :goto_18
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, La0/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1f

    :cond_26
    :try_start_8
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, La0/g;

    iget-object v0, v0, La0/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_18

    :cond_27
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, La0/g;

    iget-object v0, v0, La0/g;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Le0/c;

    move-result-object v0

    invoke-interface {v0}, Le0/c;->O()Lf0/c;

    move-result-object v0

    invoke-virtual {v0}, Lf0/c;->X()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_18

    :cond_28
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, La0/g;

    iget-object v0, v0, La0/g;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Le0/c;

    move-result-object v0

    invoke-interface {v0}, Le0/c;->O()Lf0/c;

    move-result-object v3

    invoke-virtual {v3}, Lf0/c;->g()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual/range {p0 .. p0}, LA1/l;->a()Ls3/i;

    move-result-object v0

    invoke-virtual {v3}, Lf0/c;->b0()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v3}, Lf0/c;->j()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_19
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v2, La0/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1c

    :catchall_3
    move-exception v0

    goto :goto_20

    :catch_2
    move-exception v0

    goto :goto_1a

    :catch_3
    move-exception v0

    goto :goto_1b

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-virtual {v3}, Lf0/c;->j()V

    throw v0
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_1a
    :try_start_c
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lr3/t;->d:Lr3/t;

    goto :goto_19

    :goto_1b
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lr3/t;->d:Lr3/t;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_19

    :goto_1c
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v1, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v1, La0/g;

    iget-object v2, v1, La0/g;->i:Lm/f;

    monitor-enter v2

    :try_start_d
    iget-object v1, v1, La0/g;->i:Lm/f;

    invoke-virtual {v1}, Lm/f;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    move-object v3, v1

    check-cast v3, Lm/b;

    invoke-virtual {v3}, Lm/b;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v3}, Lm/b;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/f;

    invoke-virtual {v3, v0}, La0/f;->a(Ljava/util/Set;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_1d

    :catchall_5
    move-exception v0

    goto :goto_1e

    :cond_29
    monitor-exit v2

    goto :goto_1f

    :goto_1e
    monitor-exit v2

    throw v0

    :cond_2a
    :goto_1f
    return-void

    :goto_20
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v1, La0/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :pswitch_d
    const-string v2, "WMGC_History"

    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, LS2/b;

    iget-object v1, v0, LS2/b;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    iget-object v3, v0, LS2/b;->b:Ljava/lang/Object;

    check-cast v3, LT2/a;

    iget-object v4, v0, LS2/b;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, v0, LS2/b;->f:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_2b
    :try_start_e
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto/16 :goto_26

    :cond_2c
    invoke-virtual {v4}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2d

    invoke-static {v3}, LR3/f;->K(LT2/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    :cond_2d
    iget-object v9, v0, LS2/a;->b:Ljava/lang/String;

    const-string v10, " | "

    const-string v11, "substring(...)"

    iget-object v0, v0, LS2/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_2f

    :try_start_f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v8, :cond_2e

    add-int/lit16 v13, v12, -0x4e20

    invoke-virtual {v1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x1

    goto :goto_21

    :catch_4
    move-exception v0

    goto :goto_23

    :cond_2e
    const/4 v12, 0x0

    :goto_21
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    goto :goto_22

    :cond_2f
    const/4 v12, 0x0

    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_30
    if-eqz v12, :cond_31

    const/4 v9, 0x0

    invoke-static {v1, v5, v9, v9, v6}, LV4/m;->u0(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    const/4 v9, 0x1

    add-int/2addr v0, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_31
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_24

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_24
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_32

    move-object v4, v3

    check-cast v4, LJ2/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "key"

    invoke-static {v1, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, LJ2/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_25

    :cond_33
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    :goto_26
    return-void

    :pswitch_e
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, LM/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LM/d;->n(I)V

    return-void

    :pswitch_f
    move v2, v10

    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, LK0/c;

    iput-boolean v2, v0, LK0/c;->b:Z

    iget-object v1, v0, LK0/c;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:LM/d;

    if-eqz v2, :cond_34

    invoke-virtual {v2}, LM/d;->f()Z

    move-result v2

    if-eqz v2, :cond_34

    iget v1, v0, LK0/c;->a:I

    invoke-virtual {v0, v1}, LK0/c;->a(I)V

    goto :goto_27

    :cond_34
    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_35

    iget v0, v0, LK0/c;->a:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A(I)V

    :cond_35
    :goto_27
    return-void

    :pswitch_10
    iget-object v0, v1, LA1/l;->e:Ljava/lang/Object;

    check-cast v0, LA1/o;

    iget v1, v0, LA1/o;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, LA1/o;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, LA1/o;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "FoldInteractive"

    const-string v3, "auto frame runnable: count[%d], current[%d], target[%d], isVisible[%b]"

    invoke-static {v2, v3, v1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, LA1/o;->x:I

    if-gtz v1, :cond_36

    goto :goto_29

    :cond_36
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, LA1/o;->x:I

    iget v1, v0, LA1/o;->y:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_37

    iget v1, v0, LA1/o;->g:I

    invoke-virtual {v0, v1}, LA1/o;->g(I)Z

    goto :goto_28

    :cond_37
    const/4 v1, 0x0

    iput v1, v0, LA1/o;->x:I

    :goto_28
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_38

    iget v1, v0, LA1/o;->x:I

    if-lez v1, :cond_38

    iget-object v1, v0, LA1/o;->j:Landroid/os/Handler;

    if-eqz v1, :cond_38

    const-wide/16 v2, 0x10

    iget-object v0, v0, LA1/o;->A:LA1/l;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_38
    :goto_29
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
