.class public final synthetic LS1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LS1/b;->d:I

    iput-object p1, p0, LS1/b;->g:Ljava/lang/Object;

    iput-object p2, p0, LS1/b;->e:Ljava/lang/Object;

    iput-object p3, p0, LS1/b;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, v0, LS1/b;->d:I

    packed-switch v9, :pswitch_data_0

    iget-object v1, v0, LS1/b;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, v0, LS1/b;->g:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;

    iget-object v0, v0, LS1/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->b(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_0
    iget-object v1, v0, LS1/b;->g:Ljava/lang/Object;

    check-cast v1, LT2/b;

    iget-object v2, v0, LS1/b;->e:Ljava/lang/Object;

    check-cast v2, La4/x;

    iget-object v0, v0, LS1/b;->f:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v1, LT2/b;->a:Landroid/content/Context;

    invoke-static {v0}, La4/x;->r(Landroid/content/Context;)Landroidx/emoji2/text/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/h;

    check-cast v1, Landroidx/emoji2/text/o;

    iget-object v4, v1, Landroidx/emoji2/text/o;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v3, v1, Landroidx/emoji2/text/o;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/h;

    new-instance v1, Landroidx/emoji2/text/j;

    invoke-direct {v1, v2, v3}, Landroidx/emoji2/text/j;-><init>(La4/x;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v1}, Landroidx/emoji2/text/h;->a(La4/x;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-virtual {v2, v0}, La4/x;->N(Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_1
    return-void

    :pswitch_1
    iget-object v9, v0, LS1/b;->g:Ljava/lang/Object;

    check-cast v9, LW1/c;

    iget-object v10, v0, LS1/b;->e:Ljava/lang/Object;

    check-cast v10, LF3/s;

    iget-object v11, v0, LS1/b;->f:Ljava/lang/Object;

    iget-object v0, v9, LW1/c;->o:LS2/b;

    if-eqz v0, :cond_16

    iget-object v12, v0, LS2/b;->d:Ljava/lang/Object;

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_15

    if-eqz v0, :cond_14

    iget-object v0, v0, LS2/b;->e:Ljava/lang/Object;

    check-cast v0, Ln/f;

    iget v0, v0, Ln/j;->f:I

    if-lez v0, :cond_15

    iput-boolean v8, v9, LW1/c;->y:Z

    invoke-static {v12}, LF3/k;->c(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-direct {v0, v13, v12}, Landroid/graphics/Point;-><init>(II)V

    :try_start_5
    iget v12, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v0, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, LF3/s;->d:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v12, v9, LW1/c;->i:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getCurrentThumbnail: e = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v12, v0, v13}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v0, v10, LF3/s;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v9, LW1/c;->l:La2/q;

    iget-object v12, v12, La2/q;->q:La2/k;

    iget-object v12, v12, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, La2/f;

    iget-object v14, v13, La2/f;->n:Landroid/view/View;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getX()F

    move-result v15

    goto :goto_4

    :cond_2
    const/4 v15, 0x0

    :goto_4
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v16

    goto :goto_5

    :cond_3
    const/16 v16, 0x0

    :goto_5
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/view/View;->getRotation()F

    move-result v17

    goto :goto_6

    :cond_4
    const/16 v17, 0x0

    :goto_6
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v14

    goto :goto_7

    :cond_5
    const/4 v14, 0x0

    :goto_7
    new-array v3, v2, [F

    aput v15, v3, v7

    aput v16, v3, v8

    aput v17, v3, v6

    aput v14, v3, v5

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v13, La2/f;->n:Landroid/view/View;

    if-eqz v3, :cond_7

    iget v14, v13, La2/f;->c:I

    int-to-float v14, v14

    iget-object v15, v9, LW1/c;->m:LX1/i;

    if-eqz v15, :cond_6

    iget-object v15, v15, LX1/i;->b:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    goto :goto_8

    :cond_6
    move v15, v1

    :goto_8
    mul-float/2addr v14, v15

    invoke-virtual {v3, v14}, Landroid/view/View;->setX(F)V

    :cond_7
    iget-object v3, v13, La2/f;->n:Landroid/view/View;

    if-eqz v3, :cond_9

    iget v14, v13, La2/f;->d:I

    int-to-float v14, v14

    iget-object v15, v9, LW1/c;->m:LX1/i;

    if-eqz v15, :cond_8

    iget-object v15, v15, LX1/i;->b:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    goto :goto_9

    :cond_8
    move v15, v1

    :goto_9
    mul-float/2addr v14, v15

    invoke-virtual {v3, v14}, Landroid/view/View;->setY(F)V

    :cond_9
    iget-object v3, v13, La2/f;->n:Landroid/view/View;

    if-eqz v3, :cond_a

    iget v14, v13, La2/f;->u:F

    invoke-virtual {v3, v14}, Landroid/view/View;->setRotation(F)V

    :cond_a
    iget-object v3, v13, La2/f;->n:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_b
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, v9, LW1/c;->o:LS2/b;

    if-eqz v0, :cond_12

    iget-object v0, v0, LS2/b;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v7

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_11

    check-cast v2, [F

    iget-object v10, v9, LW1/c;->l:La2/q;

    iget-object v10, v10, La2/q;->q:La2/k;

    iget-object v10, v10, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v10, "get(...)"

    invoke-static {v1, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, La2/f;

    iget-object v10, v1, La2/f;->n:Landroid/view/View;

    if-eqz v10, :cond_d

    aget v12, v2, v7

    invoke-virtual {v10, v12}, Landroid/view/View;->setX(F)V

    :cond_d
    iget-object v10, v1, La2/f;->n:Landroid/view/View;

    if-eqz v10, :cond_e

    aget v12, v2, v8

    invoke-virtual {v10, v12}, Landroid/view/View;->setY(F)V

    :cond_e
    iget-object v10, v1, La2/f;->n:Landroid/view/View;

    if-eqz v10, :cond_f

    aget v12, v2, v6

    invoke-virtual {v10, v12}, Landroid/view/View;->setRotation(F)V

    :cond_f
    iget-object v1, v1, La2/f;->n:Landroid/view/View;

    if-eqz v1, :cond_10

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_10
    move v1, v3

    goto :goto_a

    :cond_11
    invoke-static {}, Lr3/k;->i0()V

    throw v4

    :cond_12
    const-string v0, "viewPool"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_13
    iput-boolean v7, v9, LW1/c;->y:Z

    goto :goto_b

    :cond_14
    const-string v0, "viewPool"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_15
    :goto_b
    monitor-enter v11

    :try_start_6
    invoke-virtual {v11}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v11

    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    monitor-exit v11

    throw v1

    :cond_16
    const-string v0, "viewPool"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :pswitch_2
    iget-object v3, v0, LS1/b;->g:Ljava/lang/Object;

    check-cast v3, LS1/f;

    iget-object v9, v0, LS1/b;->e:Ljava/lang/Object;

    check-cast v9, LF3/s;

    iget-object v10, v0, LS1/b;->f:Ljava/lang/Object;

    iget-object v0, v3, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    iput-boolean v8, v3, LS1/f;->C:Z

    :try_start_7
    iget-object v0, v3, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v11, v3, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v11, :cond_17

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v9, LF3/s;->d:Ljava/lang/Object;

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :cond_17
    const-string v0, "contentView"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_18
    const-string v0, "contentView"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_c
    iget-object v11, v3, LS1/f;->i:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getCurrentThumbnail: e = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v11, v0, v12}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d
    iget-object v0, v9, LF3/s;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v3, LS1/f;->m:La2/q;

    iget-object v11, v11, La2/q;->q:La2/k;

    iget-object v11, v11, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La2/f;

    iget-object v13, v12, La2/f;->n:Landroid/view/View;

    if-eqz v13, :cond_19

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v14

    goto :goto_f

    :cond_19
    const/4 v14, 0x0

    :goto_f
    if-eqz v13, :cond_1a

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v15

    goto :goto_10

    :cond_1a
    const/4 v15, 0x0

    :goto_10
    if-eqz v13, :cond_1b

    invoke-virtual {v13}, Landroid/view/View;->getRotation()F

    move-result v16

    goto :goto_11

    :cond_1b
    const/16 v16, 0x0

    :goto_11
    if-eqz v13, :cond_1c

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v13

    goto :goto_12

    :cond_1c
    const/4 v13, 0x0

    :goto_12
    new-array v4, v2, [F

    aput v14, v4, v7

    aput v15, v4, v8

    aput v16, v4, v6

    aput v13, v4, v5

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v12, La2/f;->n:Landroid/view/View;

    if-eqz v4, :cond_1e

    iget v13, v12, La2/f;->c:I

    int-to-float v13, v13

    iget-object v14, v3, LS1/f;->n:LV1/a;

    if-eqz v14, :cond_1d

    iget-object v14, v14, LV1/a;->g:Landroid/graphics/PointF;

    if-eqz v14, :cond_1d

    iget v14, v14, Landroid/graphics/PointF;->x:F

    goto :goto_13

    :cond_1d
    move v14, v1

    :goto_13
    mul-float/2addr v13, v14

    invoke-virtual {v4, v13}, Landroid/view/View;->setX(F)V

    :cond_1e
    iget-object v4, v12, La2/f;->n:Landroid/view/View;

    if-eqz v4, :cond_20

    iget v13, v12, La2/f;->d:I

    int-to-float v13, v13

    iget-object v14, v3, LS1/f;->n:LV1/a;

    if-eqz v14, :cond_1f

    iget-object v14, v14, LV1/a;->g:Landroid/graphics/PointF;

    if-eqz v14, :cond_1f

    iget v14, v14, Landroid/graphics/PointF;->y:F

    goto :goto_14

    :cond_1f
    move v14, v1

    :goto_14
    mul-float/2addr v13, v14

    invoke-virtual {v4, v13}, Landroid/view/View;->setY(F)V

    :cond_20
    iget-object v4, v12, La2/f;->n:Landroid/view/View;

    if-eqz v4, :cond_21

    iget v13, v12, La2/f;->u:F

    invoke-virtual {v4, v13}, Landroid/view/View;->setRotation(F)V

    :cond_21
    iget-object v4, v12, La2/f;->n:Landroid/view/View;

    if-eqz v4, :cond_22

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_22
    const/4 v4, 0x0

    goto :goto_e

    :cond_23
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, v3, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_29

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v7

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    if-ltz v1, :cond_28

    check-cast v2, [F

    iget-object v9, v3, LS1/f;->m:La2/q;

    iget-object v9, v9, La2/q;->q:La2/k;

    iget-object v9, v9, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v9, "get(...)"

    invoke-static {v1, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, La2/f;

    iget-object v9, v1, La2/f;->n:Landroid/view/View;

    if-eqz v9, :cond_24

    aget v11, v2, v7

    invoke-virtual {v9, v11}, Landroid/view/View;->setX(F)V

    :cond_24
    iget-object v9, v1, La2/f;->n:Landroid/view/View;

    if-eqz v9, :cond_25

    aget v11, v2, v8

    invoke-virtual {v9, v11}, Landroid/view/View;->setY(F)V

    :cond_25
    iget-object v9, v1, La2/f;->n:Landroid/view/View;

    if-eqz v9, :cond_26

    aget v11, v2, v6

    invoke-virtual {v9, v11}, Landroid/view/View;->setRotation(F)V

    :cond_26
    iget-object v1, v1, La2/f;->n:Landroid/view/View;

    if-eqz v1, :cond_27

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_27
    move v1, v4

    goto :goto_15

    :cond_28
    invoke-static {}, Lr3/k;->i0()V

    const/4 v1, 0x0

    throw v1

    :cond_29
    const/4 v1, 0x0

    const-string v0, "contentView"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_2a
    iput-boolean v7, v3, LS1/f;->C:Z

    :cond_2b
    monitor-enter v10

    :try_start_8
    invoke-virtual {v10}, Ljava/lang/Object;->notify()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit v10

    return-void

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit v10

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
