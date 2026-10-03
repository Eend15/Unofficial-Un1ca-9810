.class public final synthetic LA0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LA0/b;->d:I

    iput-object p1, p0, LA0/b;->e:Ljava/lang/Object;

    iput-object p3, p0, LA0/b;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, v0, LA0/b;->d:I

    packed-switch v4, :pswitch_data_0

    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, Lu0/e;

    const-string v2, "this$0"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt0/b;

    iget-object v3, v0, Lu0/e;->e:Ljava/lang/Object;

    iput-object v3, v2, Lt0/b;->d:Ljava/lang/Object;

    iget-object v4, v2, Lt0/b;->e:Ln1/a;

    invoke-virtual {v2, v4, v3}, Lt0/b;->d(Ln1/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, Lo0/r;

    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    iget-object v1, v1, Lo0/r;->s:Ly0/k;

    iget-object v1, v1, Ly0/i;->a:Ljava/lang/Object;

    instance-of v1, v1, Ly0/a;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ly0/i;->cancel(Z)Z

    :cond_1
    return-void

    :pswitch_1
    iget-object v1, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v1, Lw0/j;

    iget-object v0, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v0, Lo0/e;

    invoke-virtual {v0, v1, v2}, Lo0/e;->c(Lw0/j;Z)V

    return-void

    :pswitch_2
    iget-object v1, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v0, v0, LA0/b;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/app/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/appcompat/app/o;->a()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/o;->a()V

    throw v1

    :pswitch_3
    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/profileinstaller/ProfileInstallerInitializer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, LY/h;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x3e8

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    new-instance v4, LY/e;

    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v0, v2}, LY/e;-><init>(Landroid/content/Context;I)V

    add-int/lit16 v3, v3, 0x1388

    int-to-long v2, v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_4
    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetEditMode$Params;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetEditMode$Params;->isEditMode:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :cond_2
    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, LS1/f;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, LS1/f;->n()V

    new-instance v2, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetFocusEmojiGroup$Params;

    invoke-direct {v2, v3}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetFocusEmojiGroup$Params;-><init>(I)V

    invoke-virtual {v0, v2}, LS1/f;->setFocusEmojiGroup(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetFocusEmojiGroup$Params;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, LS1/f;->o()V

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetEditMode$Params;->isEditMode:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, LS1/f;->u(Z)V

    :cond_4
    iget-object v1, v0, LS1/f;->e:Ln1/a;

    invoke-virtual {v1, v3}, Ln1/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v1, v1, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, La2/q;

    iget-object v1, v1, La2/q;->k:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/o;

    if-eqz v1, :cond_5

    iget-object v1, v1, La2/o;->b:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v3, v1}, LS1/f;->s(ILjava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetFocusEmojiGroup$Params;

    iget v4, v1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SimpleGroupIdParams;->groupId:I

    if-gez v4, :cond_6

    iput v3, v1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SimpleGroupIdParams;->groupId:I

    :cond_6
    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, LS1/f;

    iget-object v4, v0, LS1/f;->m:La2/q;

    iget-object v4, v4, La2/q;->o:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/f;

    iget-object v7, v6, La2/f;->n:Landroid/view/View;

    const-string v8, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.suitcase.legacy.layout.ElementView"

    invoke-static {v7, v8}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, LU1/b;

    iget v6, v6, La2/f;->i:I

    iget v8, v1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SimpleGroupIdParams;->groupId:I

    if-ne v6, v8, :cond_8

    move v6, v3

    goto :goto_4

    :cond_8
    move v6, v2

    :goto_4
    iput-boolean v6, v7, LU1/b;->m:Z

    iget-object v8, v7, LU1/b;->j:Landroid/graphics/Paint;

    if-nez v6, :cond_9

    iget-boolean v6, v7, LU1/b;->n:Z

    if-eqz v6, :cond_9

    const/16 v6, 0x66

    goto :goto_5

    :cond_9
    const/16 v6, 0xff

    :goto_5
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, LS1/f;->p()V

    return-void

    :pswitch_6
    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, LS1/f;

    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/CountDownLatch;

    const-string v5, "save: exception = "

    :try_start_1
    invoke-virtual {v1}, LS1/f;->k()V

    invoke-virtual {v1}, LS1/f;->l()La2/f;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v6, v1, LS1/f;->o:LS1/a;

    if-eqz v6, :cond_b

    iget v7, v0, La2/f;->c:I

    iget v8, v0, La2/f;->d:I

    const/4 v9, 0x1

    const-wide/16 v10, 0x1f4

    invoke-virtual/range {v6 .. v11}, LS1/a;->b(IIZJ)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_b
    :goto_6
    invoke-virtual {v1, v3, v2, v3}, LS1/f;->r(ZZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_7
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_9

    :goto_8
    :try_start_2
    iget-object v1, v1, LS1/f;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :goto_9
    return-void

    :goto_a
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :pswitch_7
    iget-object v4, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;

    iget v5, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    if-gez v5, :cond_c

    iput v3, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    :cond_c
    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, LS1/f;

    invoke-virtual {v0}, LS1/f;->k()V

    iget-object v5, v0, LS1/f;->m:La2/q;

    iget-object v5, v5, La2/q;->o:Landroid/util/ArrayMap;

    iget v6, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const-string v6, "next(...)"

    const-string v7, "iterator(...)"

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, La2/f;

    iget-object v9, v0, LS1/f;->e:Ln1/a;

    invoke-virtual {v9}, Ln1/a;->p()LS2/b;

    move-result-object v9

    iget-object v10, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->emojiId:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "000"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, LS2/b;->i(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    iget-object v8, v8, La2/f;->n:Landroid/view/View;

    const-string v10, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.suitcase.legacy.layout.ElementView"

    invoke-static {v8, v10}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, LU1/b;

    invoke-virtual {v8, v9}, LU1/b;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_d
    iget-object v5, v0, LS1/f;->e:Ln1/a;

    iget v8, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    iget-object v9, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->emojiId:Ljava/lang/String;

    const-string v10, "emojiId"

    invoke-static {v9, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v10, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->frameCount:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v8}, Ln1/a;->o(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_f

    iget-object v11, v5, Ln1/a;->b:Ljava/lang/Object;

    check-cast v11, La2/q;

    iget-object v11, v11, La2/q;->k:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La2/o;

    if-eqz v11, :cond_e

    iput-object v9, v11, La2/o;->b:Ljava/lang/String;

    iget-object v12, v11, La2/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move v13, v2

    :goto_c
    if-ge v13, v10, :cond_e

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v15

    const-string v1, "%03d"

    invoke-static {v14, v1, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".webp"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v3

    goto :goto_c

    :cond_e
    iget-object v1, v5, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, La2/q;

    iget-object v1, v1, La2/q;->k:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v5, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, La2/q;

    iget-object v1, v1, La2/q;->k:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget v1, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    if-gez v1, :cond_10

    iput v3, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    :cond_10
    iget-object v1, v0, LS1/f;->m:La2/q;

    iget-object v1, v1, La2/q;->o:Landroid/util/ArrayMap;

    iget v5, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_11
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, La2/f;

    const-string v7, "default"

    iget-object v5, v5, La2/f;->o:Landroid/util/ArrayMap;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_12

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/h;

    if-eqz v5, :cond_12

    iget-object v5, v5, La2/h;->b:Ljava/lang/String;

    goto :goto_e

    :cond_12
    const/4 v5, 0x0

    :goto_e
    iget-object v7, v0, LS1/f;->m:La2/q;

    iget-object v7, v7, La2/q;->l:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/d;

    if-eqz v5, :cond_11

    iget-object v7, v0, LS1/f;->e:Ln1/a;

    invoke-virtual {v7}, Ln1/a;->p()LS2/b;

    move-result-object v7

    iget-object v8, v0, LS1/f;->e:Ln1/a;

    iget v9, v4, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    invoke-virtual {v8, v9}, Ln1/a;->o(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resId"

    invoke-static {v8, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v7, LS2/b;->b:Ljava/lang/Object;

    check-cast v10, La2/q;

    iget-object v11, v10, La2/q;->k:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/o;

    if-eqz v8, :cond_15

    iget-object v8, v8, La2/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v2

    :goto_f
    if-ge v12, v11, :cond_15

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v10, La2/q;->n:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_13

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    const-string v15, "get(...)"

    invoke-static {v13, v15}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v13}, LS2/b;->i(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v13

    :cond_13
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_14

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/2addr v12, v3

    goto :goto_f

    :cond_15
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16

    goto/16 :goto_d

    :cond_16
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v10, v2

    move v11, v10

    :goto_10
    if-ge v10, v8, :cond_19

    iget v12, v5, La2/d;->d:I

    add-int/2addr v12, v10

    if-gtz v11, :cond_18

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v12, v13, :cond_17

    goto :goto_11

    :cond_17
    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    goto :goto_12

    :cond_18
    :goto_11
    add-int/lit8 v12, v11, 0x1

    :goto_12
    new-instance v13, La2/b;

    invoke-direct {v13}, La2/b;-><init>()V

    iget-object v14, v5, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La2/b;

    iget-object v14, v14, La2/b;->a:Ljava/lang/String;

    const-string v15, "<set-?>"

    invoke-static {v14, v15}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v14, v13, La2/b;->a:Ljava/lang/String;

    iget-object v14, v5, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La2/b;

    iget v14, v14, La2/b;->b:I

    iput v14, v13, La2/b;->b:I

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/Drawable;

    iput-object v11, v13, La2/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v3

    move v11, v12

    goto :goto_10

    :cond_19
    iget-object v8, v5, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iput-object v7, v5, La2/d;->e:Ljava/util/ArrayList;

    goto/16 :goto_d

    :cond_1a
    invoke-virtual {v0}, LS1/f;->p()V

    return-void

    :pswitch_8
    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, LQ1/i;

    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, Lo1/a;

    iget-object v4, v1, LQ1/i;->c:Ljava/lang/Object;

    check-cast v4, LX1/i;

    if-eqz v4, :cond_1b

    iget-object v5, v4, LX1/i;->k:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v4, v4, LX1/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v5

    if-nez v4, :cond_1b

    const-string v4, "TimeContainer"

    const-string v5, "onTimeChanged, all queue will be consumed."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, LQ1/i;->c:Ljava/lang/Object;

    check-cast v4, LX1/i;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, LX1/i;->g()V

    goto :goto_13

    :catchall_2
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_1b
    :goto_13
    invoke-virtual {v1}, LQ1/i;->b()LQ1/b;

    move-result-object v4

    check-cast v4, LW1/c;

    iget-object v5, v4, LW1/c;->i:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "onPauseFrame"

    invoke-static {v5, v7, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, v4, LW1/c;->z:Z

    invoke-virtual {v4, v2, v3}, LW1/c;->r(ZZ)V

    invoke-virtual {v1}, LQ1/i;->b()LQ1/b;

    move-result-object v3

    check-cast v3, LW1/c;

    iget-object v3, v3, LW1/c;->m:LX1/i;

    if-eqz v3, :cond_1c

    iget-object v4, v3, LX1/i;->k:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v3, v3, LX1/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v4

    goto :goto_14

    :catchall_3
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1c
    :goto_14
    invoke-virtual {v1}, LQ1/i;->d()Z

    move-result v3

    iget-object v4, v1, LQ1/i;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQ1/a;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v6, v1, LQ1/i;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/EnumMap;

    invoke-virtual {v5, v0, v6}, LQ1/a;->b(Lo1/a;Ljava/util/EnumMap;)V

    goto :goto_15

    :cond_1d
    invoke-virtual {v1}, LQ1/i;->b()LQ1/b;

    move-result-object v0

    check-cast v0, LW1/c;

    iget-object v4, v0, LW1/c;->i:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "onResumeFrame"

    invoke-static {v4, v6, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, v0, LW1/c;->z:Z

    if-eqz v3, :cond_22

    invoke-virtual {v1}, LQ1/i;->b()LQ1/b;

    move-result-object v0

    check-cast v0, LW1/c;

    invoke-virtual {v0}, LW1/c;->q()V

    invoke-virtual {v1}, LQ1/i;->b()LQ1/b;

    move-result-object v0

    check-cast v0, LW1/c;

    iget-object v1, v0, LW1/c;->s:LH1/a;

    sget-object v2, LH1/a;->f:LH1/a;

    if-ne v1, v2, :cond_22

    iget-boolean v1, v0, LW1/c;->g:Z

    if-nez v1, :cond_22

    iget-boolean v1, v0, LW1/c;->t:Z

    if-nez v1, :cond_1e

    goto :goto_18

    :cond_1e
    iget-object v1, v0, LW1/c;->o:LS2/b;

    if-eqz v1, :cond_21

    iget-object v1, v1, LS2/b;->e:Ljava/lang/Object;

    check-cast v1, Ln/f;

    const-string v2, "container_global_touch"

    invoke-virtual {v1, v2}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/f;

    if-eqz v1, :cond_1f

    iget-object v1, v1, La2/f;->n:Landroid/view/View;

    goto :goto_16

    :cond_1f
    const/4 v1, 0x0

    :goto_16
    const-string v2, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.suitcase.layout.ContainerLayout"

    invoke-static {v1, v2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LR1/b;

    iget-object v2, v1, LR1/b;->d:La2/f;

    iget-object v2, v2, La2/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/a;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v5, v0, LW1/c;->m:LX1/i;

    if-eqz v5, :cond_20

    iget v7, v3, La2/a;->c:F

    iget v3, v3, La2/a;->d:F

    invoke-virtual {v5, v4, v6, v7, v3}, LX1/i;->a(FFFF)V

    goto :goto_17

    :cond_21
    const-string v0, "viewPool"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_22
    :goto_18
    return-void

    :pswitch_9
    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, [Z

    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, [Landroid/os/ParcelFileDescriptor;

    monitor-enter v1

    :try_start_5
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_23

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_19

    :catchall_4
    move-exception v0

    goto :goto_1a

    :cond_23
    const-wide/16 v3, 0x2710

    :try_start_6
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catch_1
    :try_start_7
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_24

    monitor-exit v1

    goto :goto_19

    :cond_24
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const-string v1, "BitmapUtils"

    const-string v3, "encodeBitmapToPipe: observer: timeout. closing read pfd forcefully"

    invoke-static {v1, v3}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_19

    :catch_2
    move-exception v0

    const-string v1, "BitmapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encodeBitmapToPipe: observer: e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void

    :goto_1a
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.wallpaper.magician.action.GENERATE_RESULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v4, LI2/a;

    iget-object v5, v4, LI2/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "generate_result_code"

    iget v7, v4, LI2/a;->d:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "id"

    iget-wide v7, v4, LI2/a;->b:J

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "which"

    iget v7, v4, LI2/a;->c:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "total_count"

    iget-object v7, v4, LI2/a;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v6, "generated_count"

    iget-object v7, v4, LI2/a;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v6, "generated_key"

    iget-object v7, v4, LI2/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "generated_uri"

    iget-object v7, v4, LI2/a;->h:Landroid/net/Uri;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v0, LI2/b;

    if-eqz v7, :cond_25

    iget-object v6, v0, LI2/b;->a:Landroid/content/Context;

    invoke-virtual {v6, v5, v7, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_25
    iget-object v3, v0, LI2/b;->c:LO2/a;

    invoke-virtual {v3}, LO2/a;->d()LU0/e;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "notify, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "BroadcastNotifier"

    invoke-virtual {v3, v5, v4, v2}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, LI2/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_b
    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "which"

    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b(I)V

    return-void

    :pswitch_c
    sget-object v1, LH1/a;->f:LH1/a;

    iget-object v2, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, LH1/a;

    if-ne v0, v1, :cond_26

    const-string v0, "android.wallpaper.wakingup"

    invoke-virtual {v2, v0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c(Ljava/lang/String;)V

    goto :goto_1b

    :cond_26
    const-string v0, "android.wallpaper.goingtosleep"

    invoke-virtual {v2, v0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c(Ljava/lang/String;)V

    :goto_1b
    return-void

    :pswitch_d
    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, LB/c;

    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, LB/c;->e(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_e
    iget-object v1, v0, LA0/b;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v0, v0, LA0/b;->f:Ljava/lang/Object;

    check-cast v0, LZ0/a;

    const-string v2, "this$0"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    iget-boolean v3, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->j:Z

    if-eqz v3, :cond_27

    iget-object v0, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ly0/k;

    const-string v1, "future"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LA0/c;->a:Ljava/lang/String;

    new-instance v1, Ln0/k;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ly0/k;->j(Ljava/lang/Object;)Z

    goto :goto_1c

    :catchall_5
    move-exception v0

    goto :goto_1d

    :cond_27
    iget-object v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ly0/k;

    invoke-virtual {v1, v0}, Ly0/k;->l(LZ0/a;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :goto_1c
    monitor-exit v2

    return-void

    :goto_1d
    monitor-exit v2

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
