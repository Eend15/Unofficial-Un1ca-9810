.class public final LS1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/IPhysicsEditor;
.implements LO1/a;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public final D:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

.field public final E:Landroid/os/Handler;

.field public final F:Landroid/os/Handler;

.field public final G:LS1/e;

.field public final H:LS1/e;

.field public final I:LS1/e;

.field public final J:LS1/e;

.field public final K:LS1/e;

.field public final L:Ljava/util/EnumMap;

.field public final M:Landroid/util/ArrayMap;

.field public final N:Ls1/b;

.field public O:LO1/c;

.field public final P:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/IPhysicsEditorCallback;

.field public final d:Landroid/content/Context;

.field public final e:Ln1/a;

.field public final f:I

.field public final g:Z

.field public final h:Landroid/os/Bundle;

.field public final i:Ljava/lang/String;

.field public j:Landroid/view/SurfaceHolder;

.field public final k:Landroid/view/Choreographer;

.field public l:J

.field public final m:La2/q;

.field public n:LV1/a;

.field public final o:LS1/a;

.field public final p:Landroid/widget/FrameLayout;

.field public final q:Z

.field public final r:Lw0/m;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:LH1/a;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln1/a;IZLandroid/os/Bundle;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    const-string v3, "dataManager"

    invoke-static {v1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v0, LS1/f;->d:Landroid/content/Context;

    iput-object v1, v0, LS1/f;->e:Ln1/a;

    move/from16 v4, p3

    iput v4, v0, LS1/f;->f:I

    iput-boolean v2, v0, LS1/f;->g:Z

    move-object/from16 v4, p5

    iput-object v4, v0, LS1/f;->h:Landroid/os/Bundle;

    const-string v4, "LayoutController"

    iput-object v4, v0, LS1/f;->i:Ljava/lang/String;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v4

    iput-object v4, v0, LS1/f;->k:Landroid/view/Choreographer;

    iget-object v1, v1, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, La2/q;

    iput-object v1, v0, LS1/f;->m:La2/q;

    sget-object v4, LH1/a;->f:LH1/a;

    iput-object v4, v0, LS1/f;->v:LH1/a;

    const/4 v4, 0x1

    iput-boolean v4, v0, LS1/f;->y:Z

    iput-boolean v4, v0, LS1/f;->A:Z

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v0, LS1/f;->E:Landroid/os/Handler;

    new-instance v5, LS1/e;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, LS1/e;-><init>(LS1/f;I)V

    iput-object v5, v0, LS1/f;->G:LS1/e;

    new-instance v5, LS1/e;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, LS1/e;-><init>(LS1/f;I)V

    iput-object v5, v0, LS1/f;->H:LS1/e;

    new-instance v5, LS1/e;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6}, LS1/e;-><init>(LS1/f;I)V

    iput-object v5, v0, LS1/f;->I:LS1/e;

    new-instance v5, LS1/e;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v6}, LS1/e;-><init>(LS1/f;I)V

    iput-object v5, v0, LS1/f;->J:LS1/e;

    new-instance v5, LS1/e;

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, LS1/e;-><init>(LS1/f;I)V

    iput-object v5, v0, LS1/f;->K:LS1/e;

    new-instance v5, Ljava/util/EnumMap;

    const-class v6, La2/i;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v5, v0, LS1/f;->L:Ljava/util/EnumMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, LS1/f;->M:Landroid/util/ArrayMap;

    iget-object v5, v1, La2/q;->b:Ljava/lang/String;

    const-string v7, "LayoutController_"

    invoke-static {v7, v5}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, LS1/f;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "_PREVIEW"

    invoke-static {v5, v2}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LS1/f;->i:Ljava/lang/String;

    :cond_0
    new-instance v2, LV1/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, LV1/a;->a:La2/q;

    new-instance v5, Landroid/graphics/PointF;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, v2, LV1/a;->d:Landroid/graphics/PointF;

    new-instance v5, Lk5/i;

    invoke-direct {v5, v7, v7}, Lk5/i;-><init>(FF)V

    iput-object v5, v2, LV1/a;->e:Lk5/i;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, LV1/a;->f:F

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, v2, LV1/a;->g:Landroid/graphics/PointF;

    iget-object v7, v2, LV1/a;->b:Ll5/h;

    const/4 v8, 0x0

    const-string v9, "Physics"

    if-eqz v7, :cond_1

    const-string v7, "World is already created"

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v9, v7, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget-object v7, v1, La2/q;->q:La2/k;

    iget v10, v7, La2/k;->e:F

    iput v10, v2, LV1/a;->f:F

    iget-object v11, v2, LV1/a;->e:Lk5/i;

    iget v12, v7, La2/k;->c:F

    mul-float/2addr v12, v10

    iget v13, v7, La2/k;->d:F

    mul-float/2addr v13, v10

    iput v12, v11, Lk5/i;->d:F

    iput v13, v11, Lk5/i;->e:F

    iget v10, v7, La2/k;->f:F

    iput v10, v2, LV1/a;->c:F

    iget-object v7, v7, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v1, La2/q;->q:La2/k;

    iget v10, v7, La2/k;->a:I

    iget v7, v7, La2/k;->b:I

    invoke-virtual {v2, v10, v7}, LV1/a;->e(II)V

    :cond_2
    new-instance v7, LG4/d;

    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11}, LG4/d;-><init>(IZ)V

    new-instance v10, Ll5/h;

    iget-object v11, v2, LV1/a;->e:Lk5/i;

    invoke-direct {v10, v11}, Ll5/h;-><init>(Lk5/i;)V

    iget-boolean v11, v10, Ll5/h;->h:Z

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v8, v10, Ll5/h;->h:Z

    iget-object v11, v10, Ll5/h;->c:Ll5/a;

    :goto_0
    if-eqz v11, :cond_4

    invoke-virtual {v11, v4}, Ll5/a;->f(Z)V

    iget-object v11, v11, Ll5/a;->k:Ll5/a;

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v11, v10, Ll5/h;->b:Lg4/e;

    iput-object v7, v11, Lg4/e;->d:Ljava/lang/Object;

    iput-object v10, v2, LV1/a;->b:Ll5/h;

    :goto_2
    iget-object v1, v1, La2/q;->q:La2/k;

    iget-object v1, v1, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v7, "iterator(...)"

    invoke-static {v1, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v14, "next(...)"

    const-string v15, " , "

    if-eqz v10, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v14}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, La2/f;

    iget-boolean v14, v10, La2/f;->p:Z

    if-nez v14, :cond_5

    iget-object v10, v10, La2/f;->a:Ljava/lang/String;

    const-string v11, "createBody : physics is NOT supported "

    invoke-static {v11, v10}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v8

    goto/16 :goto_8

    :cond_5
    new-instance v14, Ll5/b;

    invoke-direct {v14}, Ll5/b;-><init>()V

    iget-object v11, v10, La2/f;->q:Ljava/lang/String;

    const-string v5, "static"

    invoke-static {v11, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v4

    goto :goto_4

    :cond_6
    const-string v5, "kinematic"

    invoke-static {v11, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    goto :goto_4

    :cond_7
    const/4 v5, 0x3

    :goto_4
    iput v5, v14, Ll5/b;->a:I

    iget-object v5, v14, Ll5/b;->b:Lk5/i;

    iget v11, v10, La2/f;->c:I

    int-to-float v11, v11

    iget-object v4, v2, LV1/a;->g:Landroid/graphics/PointF;

    iget v8, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, v8

    iget v8, v10, La2/f;->e:I

    int-to-float v8, v8

    const/high16 v16, 0x40000000    # 2.0f

    div-float v8, v8, v16

    add-float/2addr v8, v11

    iget v11, v2, LV1/a;->c:F

    div-float/2addr v8, v11

    iget v12, v10, La2/f;->d:I

    int-to-float v12, v12

    iget v13, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v12, v13

    iget v13, v10, La2/f;->f:I

    int-to-float v13, v13

    div-float v13, v13, v16

    add-float/2addr v13, v12

    div-float/2addr v13, v11

    iput v8, v5, Lk5/i;->d:F

    iput v13, v5, Lk5/i;->e:F

    iget v5, v10, La2/f;->u:F

    const/high16 v8, 0x43340000    # 180.0f

    div-float/2addr v5, v8

    const v8, 0x4048f5c3    # 3.14f

    mul-float/2addr v5, v8

    iput v5, v14, Ll5/b;->c:F

    iget v5, v10, La2/f;->t:F

    iget-object v8, v10, La2/f;->s:La2/e;

    sget-object v11, La2/e;->e:La2/e;

    if-ne v8, v11, :cond_8

    new-instance v4, Lj5/a;

    invoke-direct {v4}, Lj5/a;-><init>()V

    iget v8, v10, La2/f;->e:I

    int-to-float v8, v8

    div-float v8, v8, v16

    mul-float/2addr v8, v5

    iget v5, v2, LV1/a;->c:F

    div-float/2addr v8, v5

    iput v8, v4, Lj5/e;->b:F

    goto :goto_5

    :cond_8
    new-instance v8, Lj5/d;

    invoke-direct {v8}, Lj5/d;-><init>()V

    iget v11, v10, La2/f;->e:I

    int-to-float v11, v11

    div-float v11, v11, v16

    mul-float/2addr v11, v5

    iget v12, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, v12

    iget v12, v2, LV1/a;->c:F

    div-float/2addr v11, v12

    iget v13, v10, La2/f;->f:I

    int-to-float v13, v13

    div-float v13, v13, v16

    mul-float/2addr v13, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v13, v4

    div-float/2addr v13, v12

    invoke-virtual {v8, v11, v13}, Lj5/d;->d(FF)V

    move-object v4, v8

    :goto_5
    new-instance v5, Ll5/d;

    invoke-direct {v5}, Ll5/d;-><init>()V

    iput-object v4, v5, Ll5/d;->a:Lj5/e;

    iget v4, v10, La2/f;->x:F

    iput v4, v5, Ll5/d;->d:F

    iget v4, v10, La2/f;->v:F

    iput v4, v5, Ll5/d;->b:F

    iget v4, v10, La2/f;->w:F

    iput v4, v5, Ll5/d;->c:F

    iget-object v4, v5, Ll5/d;->e:LK/o;

    iget-object v8, v10, La2/f;->z:Ljava/lang/String;

    invoke-static {v8}, LV1/a;->f(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, LK/o;->a:I

    iget-object v4, v5, Ll5/d;->e:LK/o;

    iget-object v8, v10, La2/f;->A:Ljava/lang/String;

    invoke-static {v8}, LV1/a;->f(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, LK/o;->b:I

    iget-object v4, v2, LV1/a;->b:Ll5/h;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v14}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4, v5}, Ll5/a;->c(Ll5/d;)V

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    iput-object v4, v10, La2/f;->B:Ll5/a;

    iget-object v5, v10, La2/f;->a:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, v4, Ll5/a;->c:Lk5/h;

    iget-object v11, v4, Lk5/h;->d:Lk5/i;

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "createBody : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v9, v4, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    move v8, v5

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_b
    move v5, v8

    iget-object v1, v2, LV1/a;->a:La2/q;

    iget-object v4, v1, La2/q;->p:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const-string v8, "createJoints : jointMap="

    invoke-static {v4, v8}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v9, v4, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, La2/q;->p:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-gtz v5, :cond_d

    :cond_c
    move-object/from16 v21, v3

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v14

    goto/16 :goto_10

    :cond_d
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/j;

    iget-object v8, v1, La2/q;->q:La2/k;

    iget-object v8, v8, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La2/f;

    iget-object v13, v12, La2/f;->a:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v5, La2/j;->b:Lw0/i;

    iget-object v1, v1, Lw0/i;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v13, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v10, v12

    goto :goto_b

    :cond_e
    iget-object v1, v5, La2/j;->b:Lw0/i;

    iget-object v1, v1, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v13, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v11, v12

    :cond_f
    :goto_b
    move-object/from16 v1, v16

    goto :goto_a

    :cond_10
    move-object/from16 v16, v1

    if-eqz v10, :cond_18

    if-eqz v11, :cond_18

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v1, v10, La2/f;->B:Ll5/a;

    if-eqz v1, :cond_11

    iget-object v8, v11, La2/f;->B:Ll5/a;

    if-nez v8, :cond_12

    :cond_11
    move-object/from16 v21, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v14

    const/4 v3, 0x0

    const/high16 v7, 0x43340000    # 180.0f

    const v8, 0x4048f5c3    # 3.14f

    goto/16 :goto_e

    :cond_12
    instance-of v12, v5, La2/g;

    iget-object v13, v5, La2/j;->b:Lw0/i;

    if-eqz v12, :cond_15

    iget-object v12, v2, LV1/a;->b:Ll5/h;

    if-eqz v12, :cond_14

    move-object/from16 v17, v4

    new-instance v4, Ln5/b;

    invoke-direct {v4}, Ln5/b;-><init>()V

    iput-object v1, v4, Ln5/d;->b:Ll5/a;

    iput-object v8, v4, Ln5/d;->c:Ll5/a;

    move-object/from16 v18, v14

    iget-object v14, v13, Lw0/i;->g:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/PointF;

    move-object/from16 v19, v7

    iget v7, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v20, v6

    iget v6, v2, LV1/a;->c:F

    div-float/2addr v7, v6

    iget v14, v14, Landroid/graphics/PointF;->y:F

    div-float/2addr v14, v6

    move-object/from16 v21, v3

    iget-object v3, v4, Ln5/b;->e:Lk5/i;

    iput v7, v3, Lk5/i;->d:F

    iput v14, v3, Lk5/i;->e:F

    iget-object v7, v13, Lw0/i;->h:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/PointF;

    iget v13, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v6

    iget v7, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v7, v6

    iget-object v6, v4, Ln5/b;->f:Lk5/i;

    iput v13, v6, Lk5/i;->d:F

    iput v7, v6, Lk5/i;->e:F

    move-object v7, v5

    check-cast v7, La2/g;

    iget v13, v7, La2/g;->d:F

    iput v13, v4, Ln5/b;->h:F

    iget v13, v7, La2/g;->e:F

    iput v13, v4, Ln5/b;->i:F

    iget v7, v7, La2/g;->c:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpg-float v13, v7, v13

    if-nez v13, :cond_13

    iget-object v7, v1, Ll5/a;->d:Lk5/f;

    iget v7, v7, Lk5/f;->h:F

    invoke-static {v3, v7}, LV1/a;->a(Lk5/i;F)Lk5/i;

    move-result-object v3

    iget-object v7, v8, Ll5/a;->d:Lk5/f;

    iget v7, v7, Lk5/f;->h:F

    invoke-static {v6, v7}, LV1/a;->a(Lk5/i;F)Lk5/i;

    move-result-object v6

    iget-object v1, v1, Ll5/a;->c:Lk5/h;

    iget-object v1, v1, Lk5/h;->d:Lk5/i;

    invoke-virtual {v1, v3}, Lk5/i;->a(Lk5/i;)Lk5/i;

    move-result-object v1

    iget-object v3, v8, Ll5/a;->c:Lk5/h;

    iget-object v3, v3, Lk5/h;->d:Lk5/i;

    invoke-virtual {v3, v6}, Lk5/i;->a(Lk5/i;)Lk5/i;

    move-result-object v3

    invoke-static {v1, v3}, Lk5/c;->P(Lk5/i;Lk5/i;)F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v6

    double-to-float v7, v6

    :cond_13
    iput v7, v4, Ln5/b;->g:F

    invoke-virtual {v12, v4}, Ll5/h;->c(Ln5/d;)Ln5/c;

    move-result-object v1

    goto :goto_c

    :cond_14
    move-object/from16 v21, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v14

    const/4 v1, 0x0

    :goto_c
    const/high16 v7, 0x43340000    # 180.0f

    const v8, 0x4048f5c3    # 3.14f

    goto :goto_d

    :cond_15
    move-object/from16 v21, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v14

    instance-of v3, v5, La2/p;

    if-eqz v3, :cond_16

    iget-object v3, v2, LV1/a;->b:Ll5/h;

    if-eqz v3, :cond_16

    new-instance v4, Ln5/f;

    invoke-direct {v4}, Ln5/f;-><init>()V

    iput-object v1, v4, Ln5/d;->b:Ll5/a;

    iput-object v8, v4, Ln5/d;->c:Ll5/a;

    iget-object v1, v4, Ln5/f;->e:Lk5/i;

    iget-object v6, v13, Lw0/i;->g:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v8, v2, LV1/a;->c:F

    div-float/2addr v7, v8

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v8

    iput v7, v1, Lk5/i;->d:F

    iput v6, v1, Lk5/i;->e:F

    iget-object v1, v4, Ln5/f;->f:Lk5/i;

    iget-object v6, v13, Lw0/i;->h:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v8

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v8

    iput v7, v1, Lk5/i;->d:F

    iput v6, v1, Lk5/i;->e:F

    move-object v1, v5

    check-cast v1, La2/p;

    iget-boolean v6, v1, La2/p;->c:Z

    iput-boolean v6, v4, Ln5/d;->d:Z

    iget-boolean v6, v1, La2/p;->d:Z

    iput-boolean v6, v4, Ln5/f;->h:Z

    iget v6, v1, La2/p;->e:F

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v6, v7

    const v8, 0x4048f5c3    # 3.14f

    mul-float/2addr v6, v8

    iput v6, v4, Ln5/f;->g:F

    iget v6, v1, La2/p;->f:F

    div-float/2addr v6, v7

    mul-float/2addr v6, v8

    iput v6, v4, Ln5/f;->i:F

    iget v1, v1, La2/p;->g:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v8

    iput v1, v4, Ln5/f;->j:F

    invoke-virtual {v3, v4}, Ll5/h;->c(Ln5/d;)Ln5/c;

    move-result-object v1

    goto :goto_d

    :cond_16
    const/high16 v7, 0x43340000    # 180.0f

    const v8, 0x4048f5c3    # 3.14f

    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_17

    iget-object v1, v5, La2/j;->a:Ljava/lang/String;

    iget-object v3, v10, La2/f;->a:Ljava/lang/String;

    iget-object v4, v11, La2/f;->a:Ljava/lang/String;

    const-string v5, "createJoint : joint Id="

    invoke-static {v5, v1, v15, v3, v15}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v9, v1, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    const-string v1, "createJoint: joint is NULL"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v9, v1, v4}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :goto_e
    const-string v1, "createJoint: body is NULL"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v9, v1, v4}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_18
    move-object/from16 v21, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v14

    const/high16 v7, 0x43340000    # 180.0f

    const v8, 0x4048f5c3    # 3.14f

    :goto_f
    move-object/from16 v1, v16

    move-object/from16 v4, v17

    move-object/from16 v14, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v20

    move-object/from16 v3, v21

    goto/16 :goto_9

    :goto_10
    iput-object v2, v0, LS1/f;->n:LV1/a;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PhysicsEvent"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, LS1/f;->F:Landroid/os/Handler;

    new-instance v1, Lw0/m;

    iget-object v2, v0, LS1/f;->e:Ln1/a;

    move-object/from16 v3, v21

    invoke-static {v2, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Lw0/m;-><init>(I)V

    iput-object v2, v1, Lw0/m;->b:Ljava/lang/Object;

    new-instance v4, Ln1/a;

    iget-object v2, v2, Ln1/a;->b:Ljava/lang/Object;

    check-cast v2, La2/q;

    invoke-direct {v4, v2}, Ln1/a;-><init>(La2/q;)V

    iput-object v4, v1, Lw0/m;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/EnumMap;

    move-object/from16 v4, v20

    invoke-direct {v2, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v2, v1, Lw0/m;->d:Ljava/lang/Object;

    iput-object v1, v0, LS1/f;->r:Lw0/m;

    iget-object v1, v0, LS1/f;->m:La2/q;

    iget-object v1, v1, La2/q;->q:La2/k;

    iget-object v1, v1, La2/k;->k:Ljava/lang/String;

    const-string v2, "time"

    invoke-static {v1, v2}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, LS1/f;->q:Z

    if-eqz v1, :cond_19

    new-instance v1, LS1/a;

    iget-object v2, v0, LS1/f;->d:Landroid/content/Context;

    iget-object v5, v0, LS1/f;->e:Ln1/a;

    iget-object v6, v0, LS1/f;->n:LV1/a;

    invoke-static {v5, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, LS1/a;->b:Ljava/lang/Object;

    iput-object v5, v1, LS1/a;->c:Ljava/lang/Object;

    iput-object v6, v1, LS1/a;->d:Ljava/lang/Object;

    iput-object v0, v1, LS1/a;->e:Ljava/lang/Object;

    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, v1, LS1/a;->g:Ljava/lang/Object;

    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, v1, LS1/a;->h:Ljava/lang/Object;

    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, v1, LS1/a;->i:Ljava/lang/Object;

    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, v1, LS1/a;->j:Ljava/lang/Object;

    new-instance v3, LQ1/h;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, LQ1/h;-><init>(ILjava/lang/Object;)V

    iput-object v3, v1, LS1/a;->f:Ljava/lang/Object;

    invoke-static {v2}, Lo1/b;->b(Landroid/content/Context;)Lo1/b;

    move-result-object v2

    iget-object v3, v1, LS1/a;->f:Ljava/lang/Object;

    check-cast v3, LQ1/h;

    invoke-virtual {v2, v3}, Lo1/b;->f(LQ1/h;)V

    iput-object v1, v0, LS1/f;->o:LS1/a;

    :cond_19
    iget-object v1, v0, LS1/f;->i:Ljava/lang/String;

    iget-object v2, v0, LS1/f;->m:La2/q;

    iget-object v3, v2, La2/q;->b:Ljava/lang/String;

    iget-object v4, v2, La2/q;->c:Ljava/lang/String;

    iget-object v2, v2, La2/q;->f:Ljava/lang/String;

    const-string v5, "initLayout : Content = "

    const-string v6, " , SpecVersion = "

    invoke-static {v5, v3, v15, v4, v6}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, LS1/f;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, v0, LS1/f;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, v0, LS1/f;->m:La2/q;

    iget-object v4, v4, La2/q;->q:La2/k;

    iget v5, v4, La2/k;->a:I

    iget v4, v4, La2/k;->b:I

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, LS1/f;->m:La2/q;

    iget-object v3, v3, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "#"

    const-string v5, "/"

    if-eqz v3, :cond_1a

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_11

    :cond_1a
    iget-object v3, v0, LS1/f;->m:La2/q;

    iget-object v3, v3, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->h:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v0, LS1/f;->m:La2/q;

    iget-object v3, v3, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_11

    :cond_1b
    iget-object v3, v0, LS1/f;->m:La2/q;

    iget-object v6, v3, La2/q;->a:Ljava/lang/String;

    iget-object v3, v3, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->h:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_11
    iget-boolean v3, v0, LS1/f;->g:Z

    if-eqz v3, :cond_1c

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1c
    iput-object v2, v0, LS1/f;->p:Landroid/widget/FrameLayout;

    iget-object v2, v0, LS1/f;->m:La2/q;

    iget-object v2, v2, La2/q;->q:La2/k;

    iget-object v2, v2, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, v18

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, La2/f;

    iget-object v8, v0, LS1/f;->r:Lw0/m;

    const-string v9, "type"

    if-eqz v8, :cond_21

    new-instance v10, LU1/a;

    iget-object v11, v0, LS1/f;->d:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v10, LU1/a;->d:La2/f;

    iput-object v8, v10, LU1/a;->e:Lw0/m;

    iget-object v8, v0, LS1/f;->i:Ljava/lang/String;

    iget-object v11, v6, La2/f;->a:Ljava/lang/String;

    iget-boolean v12, v6, La2/f;->F:Z

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "initLayout : Container.id="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v8, v11, v13}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v11, v6, La2/f;->e:I

    iget v12, v6, La2/f;->f:I

    invoke-direct {v8, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v11, v6, La2/f;->c:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setX(F)V

    iget v11, v6, La2/f;->d:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setY(F)V

    iget v11, v6, La2/f;->u:F

    invoke-virtual {v10, v11}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v6, La2/f;->h:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1d

    const/4 v8, 0x0

    invoke-virtual {v10, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    :cond_1d
    const/4 v8, 0x0

    iget-object v11, v6, La2/f;->h:Ljava/lang/String;

    invoke-static {v11, v4, v8}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1e

    iget-object v8, v6, La2/f;->h:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    :cond_1e
    iget-object v8, v0, LS1/f;->m:La2/q;

    iget-object v8, v8, La2/q;->a:Ljava/lang/String;

    iget-object v11, v6, La2/f;->h:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_13
    iget-object v8, v6, La2/f;->B:Ll5/a;

    invoke-virtual {v10, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v8, v6, La2/f;->B:Ll5/a;

    if-eqz v8, :cond_1f

    iput-object v10, v8, Ll5/a;->u:Landroid/widget/FrameLayout;

    :cond_1f
    iput-object v10, v6, La2/f;->n:Landroid/view/View;

    iget-boolean v8, v6, La2/f;->F:Z

    if-eqz v8, :cond_20

    iget-object v8, v0, LS1/f;->i:Ljava/lang/String;

    iget-object v11, v6, La2/f;->a:Ljava/lang/String;

    const-string v12, "initLayout : setOnTouchListener "

    invoke-static {v12, v11}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v8, v11, v13}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_20
    invoke-virtual {v6}, La2/f;->b()Z

    move-result v8

    if-eqz v8, :cond_22

    iget-object v8, v0, LS1/f;->o:LS1/a;

    if-eqz v8, :cond_22

    iget-object v11, v6, La2/f;->b:La2/i;

    invoke-static {v11, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v8, LS1/a;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/EnumMap;

    invoke-virtual {v8, v11, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_21
    const/4 v10, 0x0

    :cond_22
    :goto_14
    iget-object v8, v6, La2/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-static {v8, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, La2/f;

    new-instance v12, LU1/b;

    iget-object v13, v0, LS1/f;->d:Landroid/content/Context;

    iget-object v14, v0, LS1/f;->e:Ln1/a;

    invoke-virtual {v14}, Ln1/a;->p()LS2/b;

    move-result-object v14

    invoke-direct {v12, v13}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;)V

    iput-object v14, v12, LU1/b;->g:LS2/b;

    iput-object v11, v12, LU1/b;->h:La2/f;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setDither(Z)V

    :try_start_0
    iget-object v14, v11, La2/f;->k:Ljava/lang/String;

    invoke-static {v14}, Landroid/graphics/BlendMode;->valueOf(Ljava/lang/String;)Landroid/graphics/BlendMode;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_16

    :catch_0
    const/4 v14, 0x0

    :goto_16
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    iput-object v13, v12, LU1/b;->j:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, v12, LU1/b;->k:F

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    iput-object v14, v12, LU1/b;->l:Landroid/graphics/Rect;

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    iget v13, v11, La2/f;->e:I

    move-object/from16 p5, v2

    iget v2, v11, La2/f;->f:I

    invoke-direct {v14, v13, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v2, v11, La2/f;->c:I

    int-to-float v2, v2

    invoke-virtual {v12, v2}, Landroid/view/View;->setX(F)V

    iget v2, v11, La2/f;->d:I

    int-to-float v2, v2

    invoke-virtual {v12, v2}, Landroid/view/View;->setY(F)V

    iget-object v2, v11, La2/f;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v0, LS1/f;->m:La2/q;

    iget-object v2, v2, La2/q;->a:Ljava/lang/String;

    iget-object v13, v6, La2/f;->h:Ljava/lang/String;

    move-object/from16 v19, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, LB3/j;->L(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-static {v1, v2}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/y;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_17

    :cond_23
    move-object/from16 v19, v3

    :cond_24
    :goto_17
    iget-object v2, v11, La2/f;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_18
    move-object/from16 v16, v4

    goto :goto_19

    :cond_25
    const/4 v2, 0x0

    iget-object v3, v11, La2/f;->h:Ljava/lang/String;

    invoke-static {v3, v4, v2}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v2, v11, La2/f;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_18

    :cond_26
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget v3, v0, LS1/f;->f:I

    iget-object v13, v11, La2/f;->h:Ljava/lang/String;

    move-object/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, LB3/j;->L(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-static {v1, v2}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_27
    :goto_19
    invoke-virtual {v12, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, LS1/f;->i:Ljava/lang/String;

    iget-object v3, v11, La2/f;->a:Ljava/lang/String;

    iget-object v4, v11, La2/f;->b:La2/i;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "initLayout : Element.id = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , Element.type = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v13}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v12, v11, La2/f;->n:Landroid/view/View;

    iget-object v2, v11, La2/f;->b:La2/i;

    sget-object v3, La2/i;->e:La2/i;

    if-eq v2, v3, :cond_29

    invoke-virtual {v11}, La2/f;->b()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, LS1/f;->o:LS1/a;

    if-eqz v2, :cond_2a

    iget-object v3, v11, La2/f;->b:La2/i;

    invoke-static {v3, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, LS1/a;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumMap;

    invoke-virtual {v2, v3, v12}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_28
    iget-object v2, v0, LS1/f;->L:Ljava/util/EnumMap;

    iget-object v3, v11, La2/f;->b:La2/i;

    invoke-virtual {v2, v3, v12}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_29
    iget-object v2, v0, LS1/f;->M:Landroid/util/ArrayMap;

    iget-object v3, v11, La2/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    :goto_1a
    invoke-virtual {v12, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, LS1/f;->r:Lw0/m;

    if-eqz v2, :cond_2b

    iget-object v2, v2, Lw0/m;->c:Ljava/lang/Object;

    check-cast v2, Ln1/a;

    if-eqz v2, :cond_2b

    invoke-virtual {v2, v11, v12}, Ln1/a;->d(La2/f;Landroid/view/View;)V

    :cond_2b
    if-eqz v10, :cond_2c

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2c
    move-object/from16 v2, p5

    move-object/from16 v4, v16

    move-object/from16 v3, v19

    goto/16 :goto_15

    :cond_2d
    move-object/from16 p5, v2

    move-object/from16 v19, v3

    move-object/from16 v16, v4

    if-eqz v10, :cond_2e

    iget-object v2, v0, LS1/f;->r:Lw0/m;

    if-eqz v2, :cond_2e

    iget-object v2, v2, Lw0/m;->c:Ljava/lang/Object;

    check-cast v2, Ln1/a;

    if-eqz v2, :cond_2e

    invoke-virtual {v2, v6, v10}, Ln1/a;->d(La2/f;Landroid/view/View;)V

    :cond_2e
    iget-boolean v2, v6, La2/f;->E:Z

    if-eqz v2, :cond_30

    iget-object v2, v0, LS1/f;->o:LS1/a;

    if-eqz v2, :cond_2f

    iput-object v6, v2, LS1/a;->k:Ljava/lang/Object;

    :cond_2f
    if-eqz v10, :cond_30

    if-eqz v2, :cond_30

    iput-object v10, v2, LS1/a;->l:Ljava/lang/Object;

    :cond_30
    iget-object v2, v0, LS1/f;->i:Ljava/lang/String;

    if-eqz v10, :cond_31

    invoke-virtual {v10}, LU1/a;->b()La2/f;

    move-result-object v3

    iget-object v3, v3, La2/f;->a:Ljava/lang/String;

    goto :goto_1b

    :cond_31
    const/4 v3, 0x0

    :goto_1b
    const-string v4, "initLayout : "

    invoke-static {v4, v3}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_32

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v2, p5

    move-object/from16 v18, v7

    move-object/from16 v4, v16

    move-object/from16 v3, v19

    goto/16 :goto_12

    :cond_32
    const-string v0, "contentView"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_33
    sget-object v1, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->I()Ls1/b;

    move-result-object v1

    invoke-static {v1}, Le0/a;->t(Ljava/lang/Object;)V

    iput-object v1, v0, LS1/f;->N:Ls1/b;

    iget-object v1, v0, LS1/f;->d:Landroid/content/Context;

    invoke-static {v1}, LL1/a;->getLidState(Landroid/content/Context;)I

    move-result v1

    sget v2, Lf2/g;->a:I

    if-ne v1, v2, :cond_34

    const/4 v4, 0x1

    goto :goto_1c

    :cond_34
    const/4 v4, 0x0

    :goto_1c
    iput-boolean v4, v0, LS1/f;->y:Z

    iget-object v1, v0, LS1/f;->F:Landroid/os/Handler;

    if-eqz v1, :cond_36

    iget-object v2, v0, LS1/f;->G:LS1/e;

    invoke-static {v1, v2}, LS1/f;->q(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-boolean v1, v0, LS1/f;->g:Z

    if-eqz v1, :cond_35

    iget-object v1, v0, LS1/f;->h:Landroid/os/Bundle;

    if-eqz v1, :cond_35

    const-string v2, "editorBinder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v2, v0, LS1/f;->i:Ljava/lang/String;

    const-string v3, "onCreate: editorBinder present"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v2, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/IPhysicsEditorCallback;

    invoke-static {v1, v2}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->createProxyFromBinder(Landroid/os/IBinder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.editor.sdk.interfaces.physics.callback.IPhysicsEditorCallback"

    invoke-static {v1, v2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/IPhysicsEditorCallback;

    iput-object v1, v0, LS1/f;->P:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/IPhysicsEditorCallback;

    new-instance v2, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    invoke-direct {v2, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;-><init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;)V

    iput-object v2, v0, LS1/f;->D:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    new-instance v0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/OnEditorInterfaceReady$Params;

    invoke-direct {v0, v2}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/OnEditorInterfaceReady$Params;-><init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;)V

    invoke-interface {v1, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/IPhysicsEditorCallback;->onEditorInterfaceReady(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/OnEditorInterfaceReady$Params;)V

    :cond_35
    return-void

    :cond_36
    const-string v0, "workHandler"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static q(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "action"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    iget-object v1, p0, LS1/f;->v:LH1/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCommand: action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " displayState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sget-object v1, LH1/a;->f:LH1/a;

    sget-object v3, LH1/a;->h:LH1/a;

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "samsung.android.wallpaper.doze_time_tick"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean p1, p0, LS1/f;->q:Z

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, LS1/f;->v:LH1/a;

    if-eq p1, v3, :cond_2

    sget-object p2, LH1/a;->e:LH1/a;

    if-ne p1, p2, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "doze_position"

    const-class p2, Landroid/graphics/Point;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, LS1/f;->l()La2/f;

    move-result-object p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p3, p0, LS1/f;->m:La2/q;

    iget-object p3, p3, La2/q;->q:La2/k;

    iget v0, p3, La2/k;->a:I

    div-int/2addr v0, v4

    iget v3, p2, La2/f;->e:I

    div-int/2addr v3, v4

    sub-int/2addr v0, v3

    iget p3, p3, La2/k;->b:I

    div-int/2addr p3, v4

    iget p2, p2, La2/f;->f:I

    div-int/2addr p2, v4

    sub-int/2addr p3, p2

    iget-object v6, p0, LS1/f;->o:LS1/a;

    if-eqz v6, :cond_4

    iget p2, p1, Landroid/graphics/Point;->x:I

    add-int v7, v0, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int v8, p3, p1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v6 .. v11}, LS1/a;->b(IIZJ)V

    :cond_4
    iget-object p1, p0, LS1/f;->v:LH1/a;

    if-eq p1, v1, :cond_e

    iget-object p1, p0, LS1/f;->o:LS1/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, LS1/a;->d()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onDozeTimeTick : "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    const-string v0, "ClockController"

    invoke-static {v0, p2, p3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, LS1/a;->e()V

    iput-boolean v5, p1, LS1/a;->a:Z

    :cond_5
    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, LS1/f;->v(J)V

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "android.wallpaper.goingtosleep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_1

    :cond_6
    iget-boolean p1, p0, LS1/f;->q:Z

    if-eqz p1, :cond_e

    iput-boolean v5, p0, LS1/f;->z:Z

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "samsung.android.wallpaper.pause"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, LS1/f;->n()V

    goto :goto_1

    :sswitch_3
    const-string p1, "samsung.android.wallpaper.resume"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, LS1/f;->o()V

    goto :goto_1

    :sswitch_4
    const-string p1, "android.wallpaper.wakingup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    iget-boolean p1, p0, LS1/f;->q:Z

    if-eqz p1, :cond_e

    iput-boolean v2, p0, LS1/f;->z:Z

    goto :goto_1

    :sswitch_5
    const-string p3, "android.wallpaper.aodstate"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_1

    :cond_a
    iget-object p2, p0, LS1/f;->v:LH1/a;

    if-ne p2, v1, :cond_e

    iget-boolean p2, p0, LS1/f;->w:Z

    if-nez p2, :cond_b

    iput-boolean v5, p0, LS1/f;->x:Z

    :cond_b
    if-eq p1, v5, :cond_d

    if-eq p1, v4, :cond_c

    goto :goto_1

    :cond_c
    iget-object p1, p0, LS1/f;->i:Ljava/lang/String;

    const-string p2, "need to update aod state agian : AOD_WITH_WALLPAPER"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, LH1/a;->g:LH1/a;

    invoke-virtual {p0, p1}, LS1/f;->e(LH1/a;)V

    goto :goto_1

    :cond_d
    iget-object p1, p0, LS1/f;->i:Ljava/lang/String;

    const-string p2, "need to update aod state agian : AOD_WITHOUT_WALLPAPER"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object p2, p0, LS1/f;->K:LS1/e;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v3}, LS1/f;->e(LH1/a;)V

    :cond_e
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5d68d75a -> :sswitch_5
        -0x4943dbf9 -> :sswitch_4
        0x3cd396ac -> :sswitch_3
        0x5caf0b97 -> :sswitch_2
        0x69401ccd -> :sswitch_1
        0x76913345 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, LS1/f;->j:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public final clear()V
    .locals 8

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "stopFrame"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->k:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-virtual {p0}, LS1/f;->k()V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v2, p0, LS1/f;->H:LS1/e;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v2, p0, LS1/f;->I:LS1/e;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v2, p0, LS1/f;->J:LS1/e;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const-string v3, "contentView"

    if-eqz v0, :cond_11

    move v4, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-eqz v5, :cond_5

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    instance-of v6, v4, LU1/a;

    if-eqz v6, :cond_2

    check-cast v4, LU1/a;

    invoke-virtual {v4}, LU1/a;->b()La2/f;

    move-result-object v6

    invoke-virtual {v6}, La2/f;->a()V

    iget-object v4, v4, LU1/a;->e:Lw0/m;

    if-eqz v4, :cond_1

    new-instance v6, Ln1/a;

    new-instance v7, La2/q;

    invoke-direct {v7}, La2/q;-><init>()V

    invoke-direct {v6, v7}, Ln1/a;-><init>(La2/q;)V

    iput-object v6, v4, Lw0/m;->c:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string p0, "animationController"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_2
    instance-of v6, v4, LU1/b;

    if-eqz v6, :cond_3

    check-cast v4, LU1/b;

    iget-object v6, v4, LU1/b;->h:La2/f;

    invoke-virtual {v6}, La2/f;->a()V

    iget-object v4, v4, LU1/b;->g:LS2/b;

    iget-object v6, v4, LS2/b;->c:Ljava/lang/Object;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    iget-object v6, v4, LS2/b;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/EnumMap;

    invoke-virtual {v6}, Ljava/util/EnumMap;->clear()V

    iget-object v4, v4, LS2/b;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->clear()V

    :cond_3
    :goto_2
    move v4, v5

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_5
    iget-object v0, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, LS1/f;->m:La2/q;

    invoke-virtual {v0}, La2/q;->a()V

    iget-object v0, p0, LS1/f;->r:Lw0/m;

    if-eqz v0, :cond_6

    new-instance v1, Ln1/a;

    new-instance v3, La2/q;

    invoke-direct {v3}, La2/q;-><init>()V

    invoke-direct {v1, v3}, Ln1/a;-><init>(La2/q;)V

    iput-object v1, v0, Lw0/m;->c:Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, LS1/f;->o:LS1/a;

    if-eqz v0, :cond_7

    iget-object v1, v0, LS1/a;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->clear()V

    iget-object v1, v0, LS1/a;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo1/b;->b(Landroid/content/Context;)Lo1/b;

    move-result-object v1

    iget-object v0, v0, LS1/a;->f:Ljava/lang/Object;

    check-cast v0, LQ1/h;

    invoke-virtual {v1, v0}, Lo1/b;->h(LQ1/h;)V

    :cond_7
    iget-boolean v0, p0, LS1/f;->g:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, LS1/f;->D:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->destroy()V

    :cond_8
    iget-object v0, p0, LS1/f;->n:LV1/a;

    if-eqz v0, :cond_f

    iget-object v1, v0, LV1/a;->a:La2/q;

    iget-object v3, v1, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll5/a;

    iget-object v5, v0, LV1/a;->b:Ll5/h;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v4}, Ll5/h;->d(Ll5/a;)V

    goto :goto_3

    :cond_a
    iget-object v3, v0, LV1/a;->a:La2/q;

    iget-object v3, v3, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->l:Ll5/a;

    if-eqz v3, :cond_b

    iget-object v4, v0, LV1/a;->b:Ll5/h;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v3}, Ll5/h;->d(Ll5/a;)V

    :cond_b
    iget-object v3, v1, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/f;

    iget-object v5, v4, La2/f;->B:Ll5/a;

    if-eqz v5, :cond_c

    iget-object v6, v0, LV1/a;->b:Ll5/h;

    if-eqz v6, :cond_d

    invoke-virtual {v6, v5}, Ll5/h;->d(Ll5/a;)V

    :cond_d
    iput-object v2, v4, La2/f;->B:Ll5/a;

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, La2/q;->a()V

    :cond_f
    iput-object v2, p0, LS1/f;->n:LV1/a;

    iput-object v2, p0, LS1/f;->O:LO1/c;

    return-void

    :cond_10
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v2
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Weather is updated."

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->F:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, LS1/f;->G:LS1/e;

    invoke-static {v0, p0}, LS1/f;->q(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p0, "workHandler"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, LS1/f;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LS1/f;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void

    :cond_2
    const-string p0, "contentView"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final doFrame(J)V
    .locals 9

    iget-object p1, p0, LS1/f;->k:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p1, p0, LS1/f;->O:LO1/c;

    sget-object p2, LH1/a;->e:LH1/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LO1/c;->getDisplayState()LH1/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iget-object v0, p0, LS1/f;->m:La2/q;

    iget-boolean v0, v0, La2/q;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    sget-object v0, LH1/a;->h:LH1/a;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, LS1/f;->q:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, LS1/f;->o:LS1/a;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, LS1/a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, LS1/f;->o:LS1/a;

    if-eqz p2, :cond_3

    iput-boolean v1, p2, LS1/a;->a:Z

    :cond_3
    move p2, v1

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, LS1/f;->l:J

    sub-long/2addr v3, v5

    iget-boolean v0, p0, LS1/f;->w:Z

    if-nez v0, :cond_6

    if-nez p2, :cond_6

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v5, p0, LS1/f;->K:LS1/e;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, LS1/f;->x:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, p0, LS1/f;->i:Ljava/lang/String;

    iget-boolean v6, p0, LS1/f;->w:Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doFrame : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LS1/f;->k()V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p1, p0, LS1/f;->k:Landroid/view/Choreographer;

    const-wide/16 v3, 0x8

    invoke-virtual {p1, p0, v3, v4}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    iput-boolean v1, p0, LS1/f;->x:Z

    :goto_4
    iget-boolean p1, p0, LS1/f;->C:Z

    if-eqz p1, :cond_7

    return-void

    :cond_7
    iget-boolean p1, p0, LS1/f;->u:Z

    const-string p2, "contentView"

    if-nez p1, :cond_10

    iget-object p1, p0, LS1/f;->n:LV1/a;

    if-eqz p1, :cond_8

    iget-object p1, p1, LV1/a;->b:Ll5/h;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ll5/h;->h()V

    :cond_8
    iget-object p1, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_5
    if-ge v1, p1, :cond_10

    iget-object v0, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ll5/a;

    if-eqz v4, :cond_9

    check-cast v3, Ll5/a;

    goto :goto_6

    :cond_9
    move-object v3, v2

    :goto_6
    if-eqz v3, :cond_d

    iget-object v4, p0, LS1/f;->n:LV1/a;

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    iget-object v7, v3, Ll5/a;->c:Lk5/h;

    if-eqz v4, :cond_a

    iget-object v8, v7, Lk5/h;->d:Lk5/i;

    iget v8, v8, Lk5/i;->d:F

    iget v4, v4, LV1/a;->c:F

    mul-float/2addr v8, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v8, v4

    goto :goto_7

    :cond_a
    move v8, v6

    :goto_7
    invoke-virtual {v0, v8}, Landroid/view/View;->setX(F)V

    iget-object v4, p0, LS1/f;->n:LV1/a;

    if-eqz v4, :cond_b

    iget-object v7, v7, Lk5/h;->d:Lk5/i;

    iget v7, v7, Lk5/i;->e:F

    iget v4, v4, LV1/a;->c:F

    mul-float/2addr v7, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v7, v4

    goto :goto_8

    :cond_b
    move v7, v6

    :goto_8
    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    iget-object v4, p0, LS1/f;->n:LV1/a;

    if-eqz v4, :cond_c

    iget-object v3, v3, Ll5/a;->d:Lk5/f;

    iget v3, v3, Lk5/f;->h:F

    const v4, 0x4048f5c3    # 3.14f

    div-float/2addr v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v6, v3, v4

    :cond_c
    invoke-virtual {v0, v6}, Landroid/view/View;->setRotation(F)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    invoke-static {p2}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-static {p2}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_10
    iget-object p1, p0, LS1/f;->j:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object v0, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, LS1/f;->j:Landroid/view/SurfaceHolder;

    if-eqz p0, :cond_12

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_9

    :cond_11
    invoke-static {p2}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_12
    :goto_9
    return-void
.end method

.method public final e(LH1/a;)V
    .locals 12

    iget-boolean v0, p0, LS1/f;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    iget-object v1, p0, LS1/f;->v:LH1/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDisplayStateChanged : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", prevState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->v:LH1/a;

    sget-object v1, LH1/a;->f:LH1/a;

    if-ne v0, p1, :cond_1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v3, p0, LS1/f;->I:LS1/e;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v3, p0, LS1/f;->K:LS1/e;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, LS1/f;->v(J)V

    if-nez p1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v0, LS1/d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9

    const/4 v5, 0x3

    if-eq v0, v5, :cond_7

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    iget-object v1, p0, LS1/f;->v:LH1/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDisplayStateChanged NONE prevState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    iget-object v4, p0, LS1/f;->v:LH1/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleDisplayOn prevState="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->v:LH1/a;

    if-eq v0, v1, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0}, LS1/f;->t(FZ)V

    invoke-virtual {p0}, LS1/f;->l()La2/f;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v4, p0, LS1/f;->o:LS1/a;

    if-eqz v4, :cond_6

    iget v5, v0, La2/f;->c:I

    iget v6, v0, La2/f;->d:I

    iget-object v0, p0, LS1/f;->v:LH1/a;

    sget-object v1, LH1/a;->e:LH1/a;

    if-eq v0, v1, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v2

    :goto_2
    const-wide/16 v8, 0x12c

    invoke-virtual/range {v4 .. v9}, LS1/a;->b(IIZJ)V

    :cond_6
    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v1, p0, LS1/f;->H:LS1/e;

    invoke-static {v0, v1}, LS1/f;->q(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    iget-object v1, p0, LS1/f;->v:LH1/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleDisplayOff prevState="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LS1/f;->k()V

    invoke-virtual {p0, v3, v2, v2}, LS1/f;->r(ZZZ)V

    invoke-virtual {p0}, LS1/f;->l()La2/f;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, LS1/f;->m:La2/q;

    iget-object v1, v1, La2/q;->q:La2/k;

    iget v3, v1, La2/k;->a:I

    div-int/2addr v3, v4

    iget v5, v0, La2/f;->e:I

    div-int/2addr v5, v4

    sub-int v7, v3, v5

    iget v1, v1, La2/k;->b:I

    div-int/2addr v1, v4

    iget v0, v0, La2/f;->f:I

    div-int/2addr v0, v4

    sub-int v8, v1, v0

    iget-object v6, p0, LS1/f;->o:LS1/a;

    if-eqz v6, :cond_8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v6 .. v11}, LS1/a;->b(IIZJ)V

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, LS1/f;->t(FZ)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v3}, LS1/f;->m(Z)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v2}, LS1/f;->m(Z)V

    :cond_b
    :goto_3
    if-eqz p1, :cond_c

    iput-object p1, p0, LS1/f;->v:LH1/a;

    :cond_c
    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g(Z)V
    .locals 5

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    iget-object v1, p0, LS1/f;->v:LH1/a;

    iget-boolean v2, p0, LS1/f;->B:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onVisibilityChanged : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, LS1/f;->w:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, LS1/f;->M:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, LS1/f;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LS1/f;->M:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU1/b;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, LU1/b;->c(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LS1/f;->g:Z

    if-nez v0, :cond_1

    iget-object v1, p0, LS1/f;->v:LH1/a;

    sget-object v3, LH1/a;->f:LH1/a;

    if-eq v1, v3, :cond_1

    iget-boolean v1, p0, LS1/f;->y:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LS1/f;->p()V

    return-void

    :cond_1
    if-eqz p1, :cond_5

    iget-boolean p1, p0, LS1/f;->B:Z

    if-nez p1, :cond_3

    iget-object p1, p0, LS1/f;->F:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object v0, p0, LS1/f;->G:LS1/e;

    invoke-static {p1, v0}, LS1/f;->q(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v0, p0, LS1/f;->H:LS1/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v0, p0, LS1/f;->H:LS1/e;

    invoke-static {p1, v0}, LS1/f;->q(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const-string p0, "workHandler"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    if-eqz v0, :cond_4

    iput-boolean v2, p0, LS1/f;->B:Z

    invoke-virtual {p0}, LS1/f;->w()V

    :cond_4
    :goto_1
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, LS1/f;->v(J)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, LS1/f;->k()V

    iget-boolean p1, p0, LS1/f;->q:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, LS1/f;->g:Z

    if-nez p1, :cond_6

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v2, p1}, LS1/f;->r(ZZZ)V

    :cond_6
    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object p0, p0, LS1/f;->K:LS1/e;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method

.method public final getWallpaperInfo()Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;
    .locals 10

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getWallpaperInfo"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;

    iget-object p0, p0, LS1/f;->m:La2/q;

    iget-object v4, p0, La2/q;->b:Ljava/lang/String;

    iget-object v5, p0, La2/q;->d:Ljava/lang/String;

    iget-object v6, p0, La2/q;->i:Ljava/lang/String;

    iget-object v1, p0, La2/q;->q:La2/k;

    iget-object v7, v1, La2/k;->h:Ljava/lang/String;

    iget-boolean p0, p0, La2/q;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final h(II)V
    .locals 10

    iget-object v0, p0, LS1/f;->d:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {v0, v1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, LS1/f;->d:Landroid/content/Context;

    iget v3, p0, LS1/f;->f:I

    invoke-static {v2, v3}, LK/I;->E(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, LS1/f;->i:Ljava/lang/String;

    iget-boolean v4, p0, LS1/f;->w:Z

    iget-boolean v5, p0, LS1/f;->y:Z

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const-string v6, "onSurfaceChanged : "

    const-string v7, " , "

    const-string v8, ", isVisible="

    invoke-static {p1, v6, p2, v7, v8}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isFolded="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", displayRotation="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", display="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->n:LV1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LV1/a;->e(II)V

    :cond_0
    iget-object v0, p0, LS1/f;->n:LV1/a;

    if-eqz v0, :cond_a

    iget-object v0, v0, LV1/a;->g:Landroid/graphics/PointF;

    if-eqz v0, :cond_a

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, LS1/f;->i:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adjustLayoutByScale : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, LS1/f;->m:La2/q;

    iget-object v4, v4, La2/q;->q:La2/k;

    iget-object v4, v4, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/f;

    iget-object v6, v5, La2/f;->n:Landroid/view/View;

    if-eqz v6, :cond_2

    iget v7, v5, La2/f;->c:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    :cond_2
    if-eqz v6, :cond_3

    iget v7, v5, La2/f;->d:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-virtual {v6, v7}, Landroid/view/View;->setY(F)V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_4

    iget v8, v5, La2/f;->e:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v7, v5, La2/f;->f:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    iget-object v5, v5, La2/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/f;

    iget-object v7, v6, La2/f;->n:Landroid/view/View;

    if-eqz v7, :cond_7

    iget v8, v6, La2/f;->c:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    :cond_7
    if-eqz v7, :cond_8

    iget v8, v6, La2/f;->d:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_9

    iget v9, v6, La2/f;->e:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v9, v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_9
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_6

    iget v6, v6, La2/f;->f:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_a
    iget-object v0, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const-string v4, "contentView"

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2, v2, p1, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    invoke-virtual {p0, v2, v2, v1}, LS1/f;->r(ZZZ)V

    iget-boolean p1, p0, LS1/f;->w:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, LS1/f;->y:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0, v1}, LS1/f;->g(Z)V

    :cond_b
    return-void

    :cond_c
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_d
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v3
.end method

.method public final i()Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "InterruptedException: "

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LF3/s;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, LS1/f;->E:Landroid/os/Handler;

    new-instance v4, LS1/b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v1, v5}, LS1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x7d0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, LS1/f;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v3}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    iget-object p0, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    move p0, v5

    :goto_1
    iget-object v1, v2, LF3/s;->d:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCurrentThumbnail: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " , "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v2, LF3/s;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public final j(FF)V
    .locals 1

    iget-boolean v0, p0, LS1/f;->t:Z

    if-eqz v0, :cond_1

    neg-float p1, p1

    iget-boolean v0, p0, LS1/f;->y:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LS1/f;->w:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LS1/f;->g:Z

    if-nez v0, :cond_0

    neg-float p1, p1

    :cond_0
    iget-object p0, p0, LS1/f;->n:LV1/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2, p1}, LV1/a;->d(FF)V

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v1, p0, LS1/f;->H:LS1/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, LS1/f;->A:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "freezeLayout"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->r:Lw0/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw0/m;->t()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LS1/f;->A:Z

    iput-boolean v1, p0, LS1/f;->s:Z

    iput-boolean v1, p0, LS1/f;->t:Z

    iput-boolean v0, p0, LS1/f;->u:Z

    iget-object v0, p0, LS1/f;->n:LV1/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, LV1/a;->d(FF)V

    :cond_1
    iget-object v0, p0, LS1/f;->L:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU1/b;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, LU1/b;->c(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, LS1/f;->o:LS1/a;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, LS1/a;->e()V

    :cond_3
    return-void
.end method

.method public final l()La2/f;
    .locals 2

    iget-object v0, p0, LS1/f;->m:La2/q;

    iget-boolean v0, v0, La2/q;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, LS1/f;->o:LS1/a;

    if-eqz p0, :cond_0

    iget-object v0, p0, LS1/a;->k:Ljava/lang/Object;

    check-cast v0, La2/f;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    iget-object p0, p0, LS1/a;->k:Ljava/lang/Object;

    check-cast p0, La2/f;

    if-eqz p0, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method public final m(Z)V
    .locals 10

    iget-object v0, p0, LS1/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_tap_to_show_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LS1/f;->v:LH1/a;

    sget-object v3, LH1/a;->e:LH1/a;

    if-eq v0, v3, :cond_1

    sget-object v3, LH1/a;->d:LH1/a;

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, LS1/f;->k()V

    invoke-virtual {p0}, LS1/f;->l()La2/f;

    move-result-object v3

    if-eqz p1, :cond_3

    invoke-virtual {p0, v2, v1, v0}, LS1/f;->r(ZZZ)V

    if-eqz v3, :cond_5

    iget-object v4, p0, LS1/f;->o:LS1/a;

    if-eqz v4, :cond_2

    iget v5, v3, La2/f;->c:I

    iget v6, v3, La2/f;->d:I

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, LS1/a;->b(IIZJ)V

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1}, LS1/f;->t(FZ)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, LS1/f;->m:La2/q;

    iget-boolean p1, p1, La2/q;->h:Z

    invoke-virtual {p0, v2, p1, v0}, LS1/f;->r(ZZZ)V

    if-eqz v3, :cond_5

    iget-object p1, p0, LS1/f;->m:La2/q;

    iget-object p1, p1, La2/q;->q:La2/k;

    iget v1, p1, La2/k;->a:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v3, La2/f;->e:I

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    iget p1, p1, La2/k;->b:I

    div-int/lit8 p1, p1, 0x2

    iget v1, v3, La2/f;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int v6, p1, v1

    iget-object v4, p0, LS1/f;->o:LS1/a;

    if-eqz v4, :cond_4

    const-wide/16 v8, 0x1f4

    move v7, v0

    invoke-virtual/range {v4 .. v9}, LS1/a;->b(IIZJ)V

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, LS1/f;->t(FZ)V

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object p0, p0, LS1/f;->K:LS1/e;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final n()V
    .locals 7

    iget-boolean v0, p0, LS1/f;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LS1/f;->v:LH1/a;

    sget-object v1, LH1/a;->f:LH1/a;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, LS1/f;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LS1/f;->y:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, LS1/f;->k()V

    invoke-virtual {p0}, LS1/f;->l()La2/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, LS1/f;->o:LS1/a;

    if-eqz v1, :cond_1

    iget v2, v0, La2/f;->c:I

    iget v3, v0, La2/f;->d:I

    const/4 v4, 0x1

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, LS1/a;->b(IIZJ)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, LS1/f;->r(ZZZ)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v2, p0, LS1/f;->K:LS1/e;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v2, p0, LS1/f;->K:LS1/e;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, LS1/f;->B:Z

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LS1/f;->B:Z

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v1, p0, LS1/f;->K:LS1/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v1, p0, LS1/f;->H:LS1/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LS1/f;->v:LH1/a;

    sget-object v1, LH1/a;->f:LH1/a;

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LS1/f;->t(FZ)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v1, p0, LS1/f;->H:LS1/e;

    invoke-static {v0, v1}, LS1/f;->q(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object v0, p0, LS1/f;->k:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LS1/f;->l:J

    :cond_0
    return-void
.end method

.method public final onFoldStateChanged(Z)V
    .locals 5

    iput-boolean p1, p0, LS1/f;->y:Z

    iget-boolean v0, p0, LS1/f;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    iget-object v1, p0, LS1/f;->m:La2/q;

    iget-boolean v1, v1, La2/q;->g:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFoldStateChanged: isFolded = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " preload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->n:LV1/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, LV1/a;->c(Z)V

    :cond_1
    if-nez p1, :cond_3

    iget-object p1, p0, LS1/f;->m:La2/q;

    iget-boolean p1, p1, La2/q;->g:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LS1/f;->k()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v0, p0, LS1/f;->I:LS1/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v0, p0, LS1/f;->I:LS1/e;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v0, p0, LS1/f;->K:LS1/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v0, p0, LS1/f;->K:LS1/e;

    const-wide/32 v3, 0xea60

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v0, p0, LS1/f;->J:LS1/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object p0, p0, LS1/f;->J:LS1/e;

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v0, p0, LS1/f;->H:LS1/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v0, p0, LS1/f;->K:LS1/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v0, p0, LS1/f;->I:LS1/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, LS1/f;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "aod_mode"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, LS1/f;->w()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object p0, p0, LS1/f;->K:LS1/e;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, LS1/f;->A:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    instance-of v0, p1, LU1/a;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, LU1/a;

    invoke-virtual {v0}, LU1/a;->b()La2/f;

    move-result-object v3

    iget-object v3, v3, La2/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v3, :cond_8

    invoke-virtual {v0}, LU1/a;->b()La2/f;

    move-result-object v3

    iget-object v3, v3, La2/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La2/a;

    iget-object v8, v7, La2/a;->a:Ljava/lang/String;

    const-string v9, "touch"

    invoke-static {v8, v9}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v2, v7, La2/a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ll5/a;

    if-eqz p1, :cond_1

    move-object v5, p0

    check-cast v5, Ll5/a;

    :cond_1
    if-eqz v5, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v6

    add-float/2addr p1, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sub-float/2addr v0, p0

    mul-float p0, p1, p1

    mul-float p2, v0, v0

    add-float/2addr p2, p0

    sget-object p0, Lk5/c;->d:[F

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v2

    double-to-float p0, v2

    const/high16 p2, 0x34000000

    cmpg-float p2, p0, p2

    if-gez p2, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p0

    mul-float/2addr p1, p2

    mul-float/2addr v0, p2

    :goto_0
    iget p0, v7, La2/a;->c:F

    mul-float/2addr p1, p0

    mul-float/2addr v0, p0

    iget p0, v5, Ll5/a;->x:I

    if-eq p0, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ll5/a;->d()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v5, v1}, Ll5/a;->f(Z)V

    :cond_4
    iget-object p0, v5, Ll5/a;->g:Lk5/i;

    iget p2, p0, Lk5/i;->d:F

    add-float/2addr p2, p1

    iput p2, p0, Lk5/i;->d:F

    iget p1, p0, Lk5/i;->e:F

    add-float/2addr p1, v0

    iput p1, p0, Lk5/i;->e:F

    :goto_1
    iget p0, v7, La2/a;->d:F

    invoke-virtual {v5, p0}, Ll5/a;->b(F)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, LS1/f;->m:La2/q;

    iget-object p0, p0, La2/q;->q:La2/k;

    iget-object p0, p0, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/f;

    iget-object v2, v0, La2/f;->a:Ljava/lang/String;

    iget-object v3, v7, La2/a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v0, La2/f;->n:Landroid/view/View;

    const-string v2, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.suitcase.legacy.layout.ContainerLayout"

    invoke-static {v0, v2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LU1/a;

    invoke-virtual {v0, p1, p2}, LU1/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_7
    :goto_3
    return v1

    :cond_8
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Ll5/a;

    if-eqz v3, :cond_9

    move-object v5, p1

    check-cast v5, Ll5/a;

    :cond_9
    if-eqz v5, :cond_c

    iget-object p0, p0, LS1/f;->n:LV1/a;

    if-eqz p0, :cond_c

    new-instance p0, Lk5/i;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    add-float/2addr v3, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-direct {p0, v3, v0}, Lk5/i;-><init>(FF)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "applyForce : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Physics"

    invoke-static {v0, p1, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lk5/i;->d:F

    const/high16 p2, 0x43af0000    # 350.0f

    mul-float/2addr p1, p2

    iget v0, p0, Lk5/i;->e:F

    mul-float/2addr v0, p2

    iget p2, v5, Ll5/a;->x:I

    if-eq p2, v4, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Ll5/a;->d()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {v5, v1}, Ll5/a;->f(Z)V

    :cond_b
    iget-object p2, v5, Ll5/a;->g:Lk5/i;

    iget v1, p2, Lk5/i;->d:F

    add-float/2addr v1, p1

    iput v1, p2, Lk5/i;->d:F

    iget p1, p2, Lk5/i;->e:F

    add-float/2addr p1, v0

    iput p1, p2, Lk5/i;->e:F

    :goto_4
    iget p0, p0, Lk5/i;->d:F

    const/high16 p1, 0x43480000    # 200.0f

    mul-float/2addr p0, p1

    invoke-virtual {v5, p0}, Ll5/a;->b(F)V

    :cond_c
    return v2

    :cond_d
    iget-boolean v0, p0, LS1/f;->g:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, LS1/f;->B:Z

    if-eqz v0, :cond_11

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    instance-of v0, p1, LU1/b;

    if-eqz v0, :cond_f

    new-instance p2, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetFocusEmojiGroup$Params;

    check-cast p1, LU1/b;

    iget-object v0, p1, LU1/b;->h:La2/f;

    iget v0, v0, La2/f;->i:I

    invoke-direct {p2, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetFocusEmojiGroup$Params;-><init>(I)V

    invoke-virtual {p0, p2}, LS1/f;->setFocusEmojiGroup(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetFocusEmojiGroup$Params;)V

    iget-object p2, p0, LS1/f;->e:Ln1/a;

    iget-object v0, p1, LU1/b;->h:La2/f;

    iget v0, v0, La2/f;->i:I

    invoke-virtual {p2, v0}, Ln1/a;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    iget-object p2, p2, Ln1/a;->b:Ljava/lang/Object;

    check-cast p2, La2/q;

    iget-object p2, p2, La2/q;->k:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La2/o;

    if-eqz p2, :cond_e

    iget-object p2, p2, La2/o;->b:Ljava/lang/String;

    goto :goto_5

    :cond_e
    const-string p2, ""

    :goto_5
    iget-object p1, p1, LU1/b;->h:La2/f;

    iget p1, p1, La2/f;->i:I

    invoke-virtual {p0, p1, p2}, LS1/f;->s(ILjava/lang/String;)V

    return v1

    :cond_f
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v2

    aget v6, v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    aget v3, v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v3

    invoke-direct {v4, v5, v6, v7, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    const/4 p1, -0x1

    const-string p2, "background"

    invoke-virtual {p0, p1, p2}, LS1/f;->s(ILjava/lang/String;)V

    return v1

    :cond_11
    return v2
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, LS1/f;->j:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, LS1/f;->j:Landroid/view/SurfaceHolder;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const-string p0, "contentView"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final r(ZZZ)V
    .locals 6

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetPosition : ignorePhysics="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", exceptClock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needEffect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, LS1/f;->u:Z

    iget-object p1, p0, LS1/f;->n:LV1/a;

    const-string v0, "next(...)"

    const-string v1, "iterator(...)"

    if-eqz p1, :cond_2

    iget-object v2, p1, LV1/a;->a:La2/q;

    iget-object v2, v2, La2/q;->q:La2/k;

    iget-object v2, v2, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, La2/f;

    iget-boolean v4, v3, La2/f;->p:Z

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    iget-boolean v4, v3, La2/f;->E:Z

    if-nez v4, :cond_0

    :cond_1
    iget v4, v3, La2/f;->c:I

    iget v5, v3, La2/f;->d:I

    invoke-virtual {p1, v3, v4, v5}, LV1/a;->b(La2/f;II)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget-object p0, p0, LS1/f;->r:Lw0/m;

    if-eqz p0, :cond_a

    iget-object p1, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast p1, Ln1/a;

    iget-object p1, p1, Ln1/a;->b:Ljava/lang/Object;

    check-cast p1, La2/q;

    iget-object p1, p1, La2/q;->j:Landroid/util/ArrayMap;

    const-string p2, "aod_transition_started"

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, La2/f;

    invoke-virtual {p0, p2, p3}, Lw0/m;->h(Ljava/lang/String;La2/f;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, LS1/f;->m:La2/q;

    iget-object p1, p1, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, La2/f;

    iget-boolean v0, p3, La2/f;->E:Z

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    :cond_5
    iget-object v0, p3, La2/f;->n:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v2, p3, La2/f;->c:I

    int-to-float v2, v2

    iget-object v3, p0, LS1/f;->n:LV1/a;

    if-eqz v3, :cond_6

    iget-object v3, v3, LV1/a;->g:Landroid/graphics/PointF;

    goto :goto_3

    :cond_6
    move-object v3, v1

    :goto_3
    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    :cond_7
    iget-object v0, p3, La2/f;->n:Landroid/view/View;

    if-eqz v0, :cond_9

    iget v2, p3, La2/f;->d:I

    int-to-float v2, v2

    iget-object v3, p0, LS1/f;->n:LV1/a;

    if-eqz v3, :cond_8

    iget-object v1, v3, LV1/a;->g:Landroid/graphics/PointF;

    :cond_8
    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    :cond_9
    iget-object v0, p3, La2/f;->n:Landroid/view/View;

    if-eqz v0, :cond_4

    iget p3, p3, La2/f;->u:F

    invoke-virtual {v0, p3}, Landroid/view/View;->setRotation(F)V

    goto :goto_2

    :cond_a
    return-void
.end method

.method public final s(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendEmojiGroupFocused: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LS1/f;->P:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/IPhysicsEditorCallback;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/OnEmojiGroupFocused$Params;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/OnEmojiGroupFocused$Params;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/IPhysicsEditorCallback;->onEmojiGroupFocused(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/callback/OnEmojiGroupFocused$Params;)V

    :cond_0
    return-void
.end method

.method public final save(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;)Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Result;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "params"

    invoke-static {v2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, LS1/f;->i:Ljava/lang/String;

    iget v3, v2, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;->which:I

    iget-wide v4, v2, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;->saveId:J

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "save: which = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", id = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, LS1/f;->u(Z)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v5, v1, LS1/f;->E:Landroid/os/Handler;

    new-instance v6, LA0/b;

    const/16 v7, 0x8

    invoke-direct {v6, v1, v7, v0}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v5, 0xbb8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, LS1/f;->i:Ljava/lang/String;

    const-string v5, "save: failed to reset position"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, LS1/f;->i()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v0, v1, LS1/f;->m:La2/q;

    iget-object v0, v0, La2/q;->q:La2/k;

    iget v6, v0, La2/k;->a:I

    iget v0, v0, La2/k;->b:I

    const-string v7, "createBitmap(...)"

    if-nez v5, :cond_1

    iget-object v3, v1, LS1/f;->i:Ljava/lang/String;

    const-string v5, "scaleAndCenterCrop: empty bitmap"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v8}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-lez v6, :cond_3

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v10, v6

    int-to-float v8, v8

    div-float/2addr v10, v8

    int-to-float v11, v0

    int-to-float v9, v9

    div-float/2addr v11, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float/2addr v8, v10

    invoke-static {v8}, Lw0/f;->H(F)I

    move-result v8

    mul-float/2addr v9, v10

    invoke-static {v9}, Lw0/f;->H(F)I

    move-result v9

    sub-int v10, v8, v6

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Lw0/f;->H(F)I

    move-result v10

    sub-int v12, v9, v0

    int-to-float v12, v12

    div-float/2addr v12, v11

    invoke-static {v12}, Lw0/f;->H(F)I

    move-result v11

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int v12, v8, v10

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v12, v9, v11

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    :try_start_0
    invoke-static {v5, v8, v9, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v8, "createScaledBitmap(...)"

    invoke-static {v3, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v10, v11, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, v1, LS1/f;->i:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "scaleAndCenterCrop: exception = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v6}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const-string v3, "makeCacheThumbnail: failed to compress bitmap. e = "

    iget-object v0, v1, LS1/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/17"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v8, v1, LS1/f;->i:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "makeCacheThumbnail: failed to make directory. e = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    const-string v0, "/thumbnail.jpg"

    invoke-static {v6, v0}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, LS1/f;->i:Ljava/lang/String;

    const-string v8, "makeCacheThumbnail: "

    invoke-static {v8, v6}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lf2/j;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v8, v1, LS1/f;->i:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "makeCacheThumbnail: failed to delete file. e = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x64

    const/4 v9, 0x0

    :try_start_3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v0, v6, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    invoke-static {v8, v9}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v8, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catchall_2
    move-exception v0

    goto/16 :goto_1b

    :catch_3
    move-exception v0

    :try_start_6
    iget-object v10, v1, LS1/f;->i:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v3, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_12

    goto :goto_3

    :goto_4
    iget-object v0, v1, LS1/f;->d:Landroid/content/Context;

    const-string v3, "physics_thumbnail.jpg"

    invoke-static {v0, v5, v3, v4}, Le0/a;->Y(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, LS1/f;->m:La2/q;

    iget-object v3, v3, La2/q;->k:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/o;

    iget-object v8, v8, La2/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    iget-object v3, v1, LS1/f;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/preview"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, v1, LS1/f;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/interactive"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_9

    array-length v12, v11

    move v13, v4

    :goto_6
    if-ge v13, v12, :cond_9

    aget-object v14, v11, v13

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v6, "getName(...)"

    invoke-static {v15, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "."

    invoke-static {v15, v6}, LV4/m;->L0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "thumbnail.jpg"

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    :cond_8
    add-int/lit8 v13, v13, 0x1

    const/16 v6, 0x64

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v1, LS1/f;->e:Ln1/a;

    invoke-virtual {v11}, Ln1/a;->p()LS2/b;

    move-result-object v11

    invoke-virtual {v11, v6}, LS2/b;->i(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v11

    if-eqz v11, :cond_a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    invoke-virtual {v11, v4, v4, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_8
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5a

    invoke-virtual {v6, v12, v13, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {v11, v9}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    invoke-static {v11, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_b
    iget-object v0, v1, LS1/f;->m:La2/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    const-string v7, "newSerializer(...)"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v11, "UTF-8"

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v10, "\n"

    invoke-interface {v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, ""

    const-string v12, "wallpaper"

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v13, v0, La2/q;->g:Z

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    const-string v14, "preload"

    invoke-interface {v6, v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "contentName"

    iget-object v14, v0, La2/q;->b:Ljava/lang/String;

    invoke-interface {v6, v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "contentVersion"

    iget-object v14, v0, La2/q;->c:Ljava/lang/String;

    invoke-interface {v6, v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "templateName"

    iget-object v14, v0, La2/q;->d:Ljava/lang/String;

    invoke-interface {v6, v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "templateVersion"

    iget-object v14, v0, La2/q;->e:Ljava/lang/String;

    invoke-interface {v6, v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "specVersion"

    iget-object v14, v0, La2/q;->f:Ljava/lang/String;

    invoke-interface {v6, v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "editType"

    iget-object v14, v0, La2/q;->i:Ljava/lang/String;

    invoke-interface {v6, v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "\n    "

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "resources"

    invoke-interface {v6, v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v15, v0, La2/q;->k:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string v9, "\n            "

    const-string v4, "id"

    const-string v2, "\n        "

    if-eqz v16, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    check-cast v15, La2/o;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v16, v8

    const-string v8, "imageArray"

    invoke-interface {v6, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v18, v5

    iget-object v5, v15, La2/o;->a:Ljava/lang/String;

    invoke-interface {v6, v11, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "imageId"

    iget-object v5, v15, La2/o;->b:Ljava/lang/String;

    invoke-interface {v6, v11, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v15, La2/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v15, "item"

    invoke-interface {v6, v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v19, v4

    const-string v4, "name"

    invoke-interface {v6, v11, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v19

    goto :goto_9

    :cond_c
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, p1

    move-object/from16 v8, v16

    move-object/from16 v15, v17

    move-object/from16 v5, v18

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto :goto_8

    :cond_d
    move-object/from16 v18, v5

    move-object/from16 v16, v8

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "animations"

    invoke-interface {v6, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v0, La2/q;->l:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La2/d;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v14, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    move-object/from16 v17, v8

    const-string v8, "duration"

    if-eqz v15, :cond_f

    iget-object v15, v14, La2/d;->b:Ljava/lang/String;

    const-string v1, "aod_transition"

    invoke-static {v15, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "viewProperty"

    invoke-interface {v6, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v15, v14, La2/d;->b:Ljava/lang/String;

    invoke-interface {v6, v11, v4, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v14, v14, La2/d;->c:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v11, v8, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    move-object/from16 v19, v3

    goto :goto_b

    :cond_f
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "frame"

    invoke-interface {v6, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v15, v14, La2/d;->b:Ljava/lang/String;

    invoke-interface {v6, v11, v4, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v15, v14, La2/d;->e:Ljava/util/ArrayList;

    move-object/from16 v19, v3

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, La2/b;

    iget v15, v15, La2/b;->b:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v11, v8, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v14, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/b;

    iget-object v3, v8, La2/b;->a:Ljava/lang/String;

    const-string v8, "resId"

    invoke-interface {v6, v11, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v14, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "frameCount"

    invoke-interface {v6, v11, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v14, La2/d;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "startPosition"

    invoke-interface {v6, v11, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_b
    move-object/from16 v1, p0

    move-object/from16 v8, v17

    move-object/from16 v3, v19

    goto/16 :goto_a

    :cond_10
    move-object/from16 v19, v3

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "modular"

    invoke-interface {v6, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v0, La2/q;->s:LA1/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "layoutArray"

    invoke-interface {v6, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v4, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v3, LA1/e;->d:Ljava/lang/Object;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/l;

    invoke-virtual {v8, v6}, La2/l;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_c

    :cond_11
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "joints"

    invoke-interface {v6, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v0, La2/q;->p:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/j;

    invoke-virtual {v8, v6}, La2/j;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_d

    :cond_12
    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "layout"

    invoke-interface {v6, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v0, La2/q;->q:La2/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "world"

    const-string v8, "type"

    invoke-interface {v6, v11, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v0, La2/k;->a:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v14, "width"

    invoke-interface {v6, v11, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v0, La2/k;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "height"

    invoke-interface {v6, v11, v15, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v0, La2/k;->f:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v7

    const-string v7, "pixelPerMeters"

    invoke-interface {v6, v11, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v0, La2/k;->c:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v7, "gravityX"

    invoke-interface {v6, v11, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v0, La2/k;->d:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v7, "gravityY"

    invoke-interface {v6, v11, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v0, La2/k;->e:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v7, "gravityWeight"

    invoke-interface {v6, v11, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v0, La2/k;->g:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v7, "scale"

    invoke-interface {v6, v11, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "event"

    move-object/from16 v20, v12

    iget-object v12, v0, La2/k;->k:Ljava/lang/String;

    invoke-interface {v6, v11, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v0, La2/k;->h:Ljava/lang/String;

    const-string v12, "background"

    invoke-interface {v6, v11, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v0, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/f;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v21, v0

    const-string v0, "container"

    invoke-interface {v6, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v22, v10

    iget-object v10, v5, La2/f;->a:Ljava/lang/String;

    invoke-interface {v6, v11, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v10, v5, La2/f;->p:Z

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v23, v3

    const-string v3, "usePhysicsEngine"

    invoke-interface {v6, v11, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v5, La2/f;->q:Ljava/lang/String;

    invoke-interface {v6, v11, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v5, La2/f;->r:Ljava/lang/String;

    invoke-interface {v6, v11, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v5, La2/f;->s:La2/e;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "shape"

    invoke-interface {v6, v11, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->v:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v10, "friction"

    invoke-interface {v6, v11, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->w:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v10, "restitution"

    invoke-interface {v6, v11, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->x:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v10, "density"

    invoke-interface {v6, v11, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->y:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v10, "textSize"

    invoke-interface {v6, v11, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v10, "x"

    invoke-interface {v6, v11, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v1

    const-string v1, "y"

    invoke-interface {v6, v11, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->u:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v13

    const-string v13, "rotation"

    invoke-interface {v6, v11, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->e:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v11, v14, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v11, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->t:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v11, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "categoryBits"

    iget-object v13, v5, La2/f;->z:Ljava/lang/String;

    invoke-interface {v6, v11, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "maskBits"

    iget-object v13, v5, La2/f;->A:Ljava/lang/String;

    invoke-interface {v6, v11, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v3, v5, La2/f;->E:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v13, "aodClock"

    invoke-interface {v6, v11, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v3, v5, La2/f;->F:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v13, "touchable"

    invoke-interface {v6, v11, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v5, La2/f;->h:Ljava/lang/String;

    invoke-interface {v6, v11, v12, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v3, v5, La2/f;->G:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v13, "fixedRotation"

    invoke-interface {v6, v11, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v5, La2/f;->o:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-static {v13}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v27, v3

    move-object/from16 v3, v26

    check-cast v3, La2/h;

    invoke-virtual {v3, v6}, La2/h;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    move-object/from16 v3, v27

    goto :goto_f

    :cond_14
    iget-object v3, v5, La2/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/f;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "element"

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v26, v3

    iget-object v3, v5, La2/f;->a:Ljava/lang/String;

    invoke-interface {v6, v11, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v5, La2/f;->b:La2/i;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v11, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v11, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v11, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->e:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v11, v14, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v5, La2/f;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v11, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "src"

    move-object/from16 v27, v1

    iget-object v1, v5, La2/f;->g:Ljava/lang/String;

    invoke-interface {v6, v11, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, v5, La2/f;->h:Ljava/lang/String;

    invoke-interface {v6, v11, v12, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v1, v5, La2/f;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "groupId"

    invoke-interface {v6, v11, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "tintColor"

    iget-object v3, v5, La2/f;->j:Ljava/lang/String;

    invoke-interface {v6, v11, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "flip"

    iget-object v3, v5, La2/f;->l:Ljava/lang/String;

    invoke-interface {v6, v11, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "blendMode"

    iget-object v3, v5, La2/f;->k:Ljava/lang/String;

    invoke-interface {v6, v11, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, v5, La2/f;->o:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v5, "iterator(...)"

    invoke-static {v3, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v28, v1

    const-string v1, "next(...)"

    invoke-static {v5, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, La2/h;

    invoke-virtual {v5, v6}, La2/h;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    move-object/from16 v1, v28

    goto :goto_11

    :cond_16
    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v3, v26

    move-object/from16 v1, v27

    goto/16 :goto_10

    :cond_17
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v21

    move-object/from16 v10, v22

    move-object/from16 v3, v23

    move-object/from16 v1, v24

    move-object/from16 v13, v25

    goto/16 :goto_e

    :cond_18
    move-object/from16 v23, v3

    move-object/from16 v22, v10

    move-object v0, v13

    invoke-interface {v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v23

    invoke-interface {v6, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v20

    invoke-interface {v6, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "wallpaper.xml"

    move-object/from16 v3, v19

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_19
    sget-object v2, LV4/a;->a:Ljava/nio/charset/Charset;

    const-string v4, "charset"

    invoke-static {v2, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_a
    invoke-static {v4, v0, v2}, LB3/j;->O(Ljava/io/FileOutputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_10

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v1, "saveThumbnail: failed to compress bitmap e = "

    move-object/from16 v2, p0

    iget-object v0, v2, LS1/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/preview/thumbnail.jpg"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :try_start_b
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v5, v18

    const/16 v6, 0x64

    invoke-virtual {v5, v0, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    const/4 v1, 0x0

    :goto_12
    invoke-static {v4, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catchall_7
    move-exception v0

    goto/16 :goto_1a

    :catch_4
    move-exception v0

    :try_start_e
    iget-object v2, v2, LS1/f;->i:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    const/4 v1, 0x0

    goto :goto_12

    :goto_13
    const-string v0, "/interactive.zip"

    const-string v1, "filePath"

    invoke-static {v3, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "savePath"

    move-object/from16 v2, v16

    invoke-static {v2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "zip: filePath = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", savePath = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "PackageUtils"

    invoke-static {v6, v1, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1b

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "zip: folder is not exist"

    invoke-static {v6, v3, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :cond_1b
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "zip: delete old zip file"

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v4}, Lf2/j;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_14

    :catch_5
    move-exception v0

    goto/16 :goto_18

    :cond_1c
    :goto_14
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1d
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    if-eqz v1, :cond_1f

    :try_start_11
    sget-object v0, LB3/i;->d:LB3/i;

    new-instance v4, LB3/h;

    invoke-direct {v4, v1, v0}, LB3/h;-><init>(Ljava/io/File;LB3/i;)V

    new-instance v0, LB3/f;

    invoke-direct {v0, v4}, LB3/f;-><init>(LB3/h;)V

    :cond_1e
    :goto_15
    invoke-virtual {v0}, LB3/f;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v0}, LB3/f;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static {v4, v1}, LB3/j;->N(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-direct {v7, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    invoke-static {v5, v2}, Lw0/f;->m(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    const/4 v4, 0x0

    :try_start_13
    invoke-static {v5, v4}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_15

    :catchall_8
    move-exception v0

    move-object v1, v0

    goto :goto_16

    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :catchall_a
    move-exception v0

    move-object v3, v0

    :try_start_15
    invoke-static {v5, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :cond_1f
    const/4 v1, 0x0

    goto :goto_17

    :goto_16
    :try_start_16
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :catchall_b
    move-exception v0

    move-object v3, v0

    :try_start_17
    invoke-static {v2, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :goto_17
    invoke-static {v2, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/high16 v0, 0x10000000

    invoke-static {v3, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    goto :goto_19

    :goto_18
    const-string v1, "zip: "

    invoke-static {v1, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x0

    :goto_19
    new-instance v0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Result;

    move-object/from16 v1, p1

    iget-wide v1, v1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;->saveId:J

    invoke-direct {v0, v1, v2, v9}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Result;-><init>(JLandroid/os/ParcelFileDescriptor;)V

    return-object v0

    :catchall_c
    move-exception v0

    move-object v1, v0

    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    :catchall_d
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :goto_1a
    :try_start_19
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_e
    move-exception v0

    move-object v1, v0

    :try_start_1a
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    :catchall_f
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catchall_10
    move-exception v0

    move-object v1, v0

    :try_start_1b
    throw v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    :catchall_11
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catchall_12
    move-exception v0

    move-object v1, v0

    :try_start_1c
    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    :catchall_13
    move-exception v0

    move-object v2, v0

    invoke-static {v8, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :goto_1b
    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    const/4 v1, 0x0

    invoke-static {v8, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_14
    move-exception v0

    move-object v1, v0

    :try_start_1e
    throw v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    :catchall_15
    move-exception v0

    move-object v2, v0

    invoke-static {v8, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final setEditMode(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetEditMode$Params;)V
    .locals 4

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetEditMode$Params;->isEditMode:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEditMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    new-instance v1, LA0/b;

    const/16 v2, 0xa

    invoke-direct {v1, p1, v2, p0}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setFocusEmojiGroup(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetFocusEmojiGroup$Params;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SimpleGroupIdParams;->groupId:I

    const-string v2, "setFocusEmojiGroup: "

    invoke-static {v1, v2}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    new-instance v1, LA0/b;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2, p0}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final t(FZ)V
    .locals 3

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setContainersAlpha : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LS1/f;->l()La2/f;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, LS1/f;->m:La2/q;

    iget-object p0, p0, La2/q;->q:La2/k;

    iget-object p0, p0, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/f;

    iget-boolean v1, v0, La2/f;->E:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, v0, La2/f;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v1, v0, La2/f;->n:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    iget-object v0, v0, La2/f;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final u(Z)V
    .locals 4

    iget-object p0, p0, LS1/f;->m:La2/q;

    iget-object p0, p0, La2/q;->o:Landroid/util/ArrayMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/f;

    iget-object v1, v1, La2/f;->n:Landroid/view/View;

    const-string v2, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.suitcase.legacy.layout.ElementView"

    invoke-static {v1, v2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LU1/b;

    iput-boolean p1, v1, LU1/b;->n:Z

    iget-object v2, v1, LU1/b;->j:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    iget-boolean v3, v1, LU1/b;->m:Z

    if-nez v3, :cond_1

    const/16 v1, 0x66

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v1, LU1/b;->m:Z

    const/16 v1, 0xff

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateColorBackground(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateColorBackground$Params;)V
    .locals 5

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateColorBackground$Params;->bgColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateColorBackground: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateColorBackground$Params;->bgColor:I

    iget-object v0, p0, LS1/f;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, LS1/f;->m:La2/q;

    iget-object v0, v0, La2/q;->q:La2/k;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toHexString(...)"

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toUpperCase(...)"

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, La2/k;->h:Ljava/lang/String;

    invoke-virtual {p0}, LS1/f;->p()V

    goto :goto_1

    :cond_1
    const-string p0, "contentView"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateEmoji(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;)V
    .locals 6

    const-string v0, "params"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    iget-object v2, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->emojiId:Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->frameCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateEmoji: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " group "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " frames"

    invoke-static {v4, v3, v1}, Li4/b;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    new-instance v1, LA0/b;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2, p0}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final v(J)V
    .locals 3

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const-string v1, "startFrame : "

    invoke-static {v1, p1, p2}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v1, p0, LS1/f;->K:LS1/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LS1/f;->k:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, LS1/f;->k:Landroid/view/Choreographer;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, LS1/f;->l:J

    return-void
.end method

.method public final w()V
    .locals 4

    iget-boolean v0, p0, LS1/f;->A:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unfreezeLayout"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->r:Lw0/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw0/m;->i()V

    :cond_0
    iput-boolean v1, p0, LS1/f;->A:Z

    iget-object v0, p0, LS1/f;->m:La2/q;

    iget-object v0, v0, La2/q;->q:La2/k;

    iget-object v0, v0, La2/k;->k:Ljava/lang/String;

    const-string v2, "touch"

    invoke-static {v0, v2}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LS1/f;->s:Z

    iget-object v0, p0, LS1/f;->m:La2/q;

    iget-object v0, v0, La2/q;->q:La2/k;

    iget-object v0, v0, La2/k;->k:Ljava/lang/String;

    const-string v2, "tilt"

    invoke-static {v0, v2}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LS1/f;->t:Z

    iget-object v0, p0, LS1/f;->n:LV1/a;

    if-eqz v0, :cond_1

    iget-object v2, p0, LS1/f;->m:La2/q;

    iget-object v2, v2, La2/q;->q:La2/k;

    iget v3, v2, La2/k;->c:F

    iget v2, v2, La2/k;->d:F

    invoke-virtual {v0, v3, v2}, LV1/a;->d(FF)V

    :cond_1
    iput-boolean v1, p0, LS1/f;->u:Z

    :cond_2
    return-void
.end method
