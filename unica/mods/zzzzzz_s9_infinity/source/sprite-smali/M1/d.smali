.class public final LM1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:I = 0x14


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LM1/d;->a:Ljava/lang/Object;

    new-instance v0, LM1/b;

    invoke-direct {v0, p0}, LM1/b;-><init>(LM1/d;)V

    iput-object v0, p0, LM1/d;->c:Ljava/lang/Object;

    iput-object p1, p0, LM1/d;->b:Ljava/lang/Object;

    :try_start_0
    const-string v1, "android.hardware.devicestate.DeviceStateManager"

    invoke-static {v1}, LK/I;->y(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, LM1/d;->d:Ljava/lang/Object;

    const-string v1, "android.hardware.devicestate.DeviceStateManager$DeviceStateCallback"

    invoke-static {v1}, LK/I;->y(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, LM1/d;->e:Ljava/lang/Object;

    iget-object v2, p0, LM1/d;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LM1/d;->f:Ljava/lang/Object;

    iget-object p1, p0, LM1/d;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iget-object v1, p0, LM1/d;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LM1/d;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "init: e = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DevicesStateMonitor"

    invoke-static {v0, p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lh5/j;Lh5/h;LK/l;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v5, v3, LK/l;->b:Ljava/lang/Object;

    check-cast v5, Lh5/f;

    iget-object v6, v3, LK/l;->c:Ljava/lang/Object;

    check-cast v6, Lh5/f;

    iget-object v7, v3, LK/l;->d:Ljava/lang/Object;

    check-cast v7, Lk5/h;

    iget-object v8, v3, LK/l;->e:Ljava/io/Serializable;

    check-cast v8, Lk5/h;

    iget-object v9, v0, LM1/d;->a:Ljava/lang/Object;

    check-cast v9, Lh5/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v2, Lh5/h;->b:I

    iput v10, v9, Lh5/g;->e:I

    const/4 v11, 0x0

    :goto_0
    iget v12, v9, Lh5/g;->e:I

    iget-object v13, v2, Lh5/h;->d:[I

    iget-object v14, v2, Lh5/h;->c:[I

    iget-object v15, v9, Lh5/g;->d:[Lh5/i;

    const/4 v10, 0x0

    if-ge v11, v12, :cond_0

    aget-object v12, v15, v11

    aget v14, v14, v11

    iput v14, v12, Lh5/i;->e:I

    aget v13, v13, v11

    iput v13, v12, Lh5/i;->f:I

    iget-object v15, v5, Lh5/f;->a:[Lk5/i;

    aget-object v14, v15, v14

    iget-object v15, v6, Lh5/f;->a:[Lk5/i;

    aget-object v13, v15, v13

    iget-object v15, v12, Lh5/i;->a:Lk5/i;

    invoke-static {v7, v14, v15}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget-object v14, v12, Lh5/i;->b:Lk5/i;

    invoke-static {v8, v13, v14}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget-object v13, v12, Lh5/i;->c:Lk5/i;

    iget v4, v14, Lk5/i;->d:F

    iput v4, v13, Lk5/i;->d:F

    iget v4, v14, Lk5/i;->e:F

    iput v4, v13, Lk5/i;->e:F

    invoke-virtual {v13, v15}, Lk5/i;->m(Lk5/i;)V

    iput v10, v12, Lh5/i;->d:F

    const/4 v4, 0x1

    add-int/2addr v11, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    const/high16 v11, 0x34000000

    const/high16 v10, 0x3f000000    # 0.5f

    if-le v12, v4, :cond_2

    iget v4, v2, Lh5/h;->a:F

    invoke-virtual {v9}, Lh5/g;->b()F

    move-result v12

    mul-float v16, v4, v10

    cmpg-float v16, v12, v16

    if-ltz v16, :cond_1

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v4, v4, v16

    cmpg-float v4, v4, v12

    if-ltz v4, :cond_1

    cmpg-float v4, v12, v11

    if-gez v4, :cond_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    iput v4, v9, Lh5/g;->e:I

    :goto_2
    iget v12, v9, Lh5/g;->e:I

    if-nez v12, :cond_3

    aget-object v12, v15, v4

    iput v4, v12, Lh5/i;->e:I

    iput v4, v12, Lh5/i;->f:I

    iget-object v10, v5, Lh5/f;->a:[Lk5/i;

    aget-object v10, v10, v4

    iget-object v11, v6, Lh5/f;->a:[Lk5/i;

    aget-object v11, v11, v4

    iget-object v4, v12, Lh5/i;->a:Lk5/i;

    invoke-static {v7, v10, v4}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget-object v10, v12, Lh5/i;->b:Lk5/i;

    invoke-static {v8, v11, v10}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget-object v11, v12, Lh5/i;->c:Lk5/i;

    iget v12, v10, Lk5/i;->d:F

    iput v12, v11, Lk5/i;->d:F

    iget v10, v10, Lk5/i;->e:F

    iput v10, v11, Lk5/i;->e:F

    invoke-virtual {v11, v4}, Lk5/i;->m(Lk5/i;)V

    const/4 v4, 0x1

    iput v4, v9, Lh5/g;->e:I

    :cond_3
    iget-object v4, v0, LM1/d;->d:Ljava/lang/Object;

    check-cast v4, Lk5/i;

    invoke-virtual {v9, v4}, Lh5/g;->a(Lk5/i;)V

    const/4 v10, 0x0

    :goto_3
    sget v11, LM1/d;->h:I

    iget-object v12, v0, LM1/d;->f:Ljava/lang/Object;

    check-cast v12, Lk5/i;

    iget-object v3, v9, Lh5/g;->c:Lh5/i;

    move-object/from16 v17, v13

    iget-object v13, v9, Lh5/g;->b:Lh5/i;

    move-object/from16 v18, v14

    iget-object v14, v9, Lh5/g;->a:Lh5/i;

    if-ge v10, v11, :cond_19

    iget v11, v9, Lh5/g;->e:I

    const/4 v2, 0x0

    :goto_4
    iget-object v1, v0, LM1/d;->c:Ljava/lang/Object;

    check-cast v1, [I

    move/from16 v19, v10

    iget-object v10, v0, LM1/d;->b:Ljava/lang/Object;

    check-cast v10, [I

    if-ge v2, v11, :cond_4

    move/from16 v20, v11

    aget-object v11, v15, v2

    move-object/from16 v21, v6

    iget v6, v11, Lh5/i;->e:I

    aput v6, v10, v2

    iget v6, v11, Lh5/i;->f:I

    aput v6, v1, v2

    const/4 v6, 0x1

    add-int/2addr v2, v6

    move/from16 v10, v19

    move/from16 v11, v20

    move-object/from16 v6, v21

    goto :goto_4

    :cond_4
    move-object/from16 v21, v6

    move/from16 v20, v11

    const/4 v6, 0x1

    iget v2, v9, Lh5/g;->e:I

    iget-object v11, v9, Lh5/g;->f:Lk5/i;

    if-eq v2, v6, :cond_5

    const/4 v6, 0x2

    if-eq v2, v6, :cond_f

    const/4 v6, 0x3

    if-eq v2, v6, :cond_6

    :cond_5
    move-object/from16 v22, v1

    move-object/from16 v25, v5

    move-object/from16 v28, v7

    move-object/from16 v24, v8

    move-object/from16 v23, v10

    move-object/from16 v26, v12

    move-object/from16 v29, v15

    goto/16 :goto_6

    :cond_6
    iget-object v2, v14, Lh5/i;->c:Lk5/i;

    iget-object v6, v9, Lh5/g;->m:Lk5/i;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v22, v1

    iget v1, v2, Lk5/i;->d:F

    iput v1, v6, Lk5/i;->d:F

    iget v1, v2, Lk5/i;->e:F

    iput v1, v6, Lk5/i;->e:F

    iget-object v1, v13, Lh5/i;->c:Lk5/i;

    iget-object v2, v9, Lh5/g;->n:Lk5/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v10

    iget v10, v1, Lk5/i;->d:F

    iput v10, v2, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v2, Lk5/i;->e:F

    iget-object v1, v3, Lh5/i;->c:Lk5/i;

    iget-object v10, v9, Lh5/g;->o:Lk5/i;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v24, v8

    iget v8, v1, Lk5/i;->d:F

    iput v8, v10, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v10, Lk5/i;->e:F

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v2, Lk5/i;->d:F

    iput v1, v11, Lk5/i;->d:F

    iget v1, v2, Lk5/i;->e:F

    iput v1, v11, Lk5/i;->e:F

    invoke-virtual {v11, v6}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v6, v11}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v1

    invoke-static {v2, v11}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v8

    neg-float v1, v1

    move-object/from16 v25, v5

    iget-object v5, v9, Lh5/g;->k:Lk5/i;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v26, v12

    iget v12, v10, Lk5/i;->d:F

    iput v12, v5, Lk5/i;->d:F

    iget v12, v10, Lk5/i;->e:F

    iput v12, v5, Lk5/i;->e:F

    invoke-virtual {v5, v6}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v6, v5}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v12

    invoke-static {v10, v5}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v27

    neg-float v12, v12

    move-object/from16 v28, v7

    iget-object v7, v9, Lh5/g;->l:Lk5/i;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v29, v15

    iget v15, v10, Lk5/i;->d:F

    iput v15, v7, Lk5/i;->d:F

    iget v15, v10, Lk5/i;->e:F

    iput v15, v7, Lk5/i;->e:F

    invoke-virtual {v7, v2}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v2, v7}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v15

    invoke-static {v10, v7}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v7

    neg-float v15, v15

    invoke-static {v11, v5}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v5

    invoke-static {v2, v10}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v30

    mul-float v30, v30, v5

    invoke-static {v10, v6}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v10

    mul-float/2addr v10, v5

    invoke-static {v6, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v2

    mul-float/2addr v2, v5

    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    if-gtz v6, :cond_7

    cmpg-float v6, v12, v5

    if-gtz v6, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v14, Lh5/i;->d:F

    const/4 v1, 0x1

    iput v1, v9, Lh5/g;->e:I

    goto/16 :goto_6

    :cond_7
    cmpl-float v6, v8, v5

    if-lez v6, :cond_9

    cmpl-float v6, v1, v5

    if-lez v6, :cond_9

    cmpg-float v6, v2, v5

    if-gtz v6, :cond_8

    add-float v2, v8, v1

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v2, v5, v2

    mul-float/2addr v8, v2

    iput v8, v14, Lh5/i;->d:F

    mul-float/2addr v1, v2

    iput v1, v13, Lh5/i;->d:F

    const/4 v1, 0x2

    iput v1, v9, Lh5/g;->e:I

    goto/16 :goto_6

    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    move v1, v5

    :goto_5
    cmpl-float v5, v27, v1

    if-lez v5, :cond_b

    cmpl-float v5, v12, v1

    if-lez v5, :cond_b

    cmpg-float v5, v10, v1

    if-gtz v5, :cond_a

    add-float v1, v27, v12

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    mul-float v2, v27, v1

    iput v2, v14, Lh5/i;->d:F

    mul-float/2addr v12, v1

    iput v12, v3, Lh5/i;->d:F

    const/4 v1, 0x2

    iput v1, v9, Lh5/g;->e:I

    invoke-virtual {v13, v3}, Lh5/i;->a(Lh5/i;)V

    goto/16 :goto_6

    :cond_a
    const/4 v1, 0x0

    :cond_b
    cmpg-float v5, v8, v1

    if-gtz v5, :cond_c

    cmpg-float v5, v15, v1

    if-gtz v5, :cond_c

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v13, Lh5/i;->d:F

    const/4 v6, 0x1

    iput v6, v9, Lh5/g;->e:I

    invoke-virtual {v14, v13}, Lh5/i;->a(Lh5/i;)V

    goto/16 :goto_6

    :cond_c
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    cmpg-float v8, v27, v1

    if-gtz v8, :cond_d

    cmpg-float v8, v7, v1

    if-gtz v8, :cond_d

    iput v5, v3, Lh5/i;->d:F

    iput v6, v9, Lh5/g;->e:I

    invoke-virtual {v14, v3}, Lh5/i;->a(Lh5/i;)V

    goto/16 :goto_6

    :cond_d
    cmpl-float v5, v7, v1

    if-lez v5, :cond_e

    cmpl-float v5, v15, v1

    if-lez v5, :cond_e

    cmpg-float v5, v30, v1

    if-gtz v5, :cond_e

    add-float v1, v7, v15

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    mul-float/2addr v7, v1

    iput v7, v13, Lh5/i;->d:F

    mul-float/2addr v15, v1

    iput v15, v3, Lh5/i;->d:F

    const/4 v1, 0x2

    iput v1, v9, Lh5/g;->e:I

    invoke-virtual {v14, v3}, Lh5/i;->a(Lh5/i;)V

    goto :goto_6

    :cond_e
    add-float v1, v30, v10

    add-float/2addr v1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v1, v5, v1

    mul-float v5, v30, v1

    iput v5, v14, Lh5/i;->d:F

    mul-float/2addr v10, v1

    iput v10, v13, Lh5/i;->d:F

    mul-float/2addr v2, v1

    iput v2, v3, Lh5/i;->d:F

    const/4 v1, 0x3

    iput v1, v9, Lh5/g;->e:I

    goto :goto_6

    :cond_f
    move-object/from16 v22, v1

    move-object/from16 v25, v5

    move-object/from16 v28, v7

    move-object/from16 v24, v8

    move-object/from16 v23, v10

    move-object/from16 v26, v12

    move-object/from16 v29, v15

    iget-object v1, v14, Lh5/i;->c:Lk5/i;

    iget-object v2, v13, Lh5/i;->c:Lk5/i;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v2, Lk5/i;->d:F

    iput v5, v11, Lk5/i;->d:F

    iget v5, v2, Lk5/i;->e:F

    iput v5, v11, Lk5/i;->e:F

    invoke-virtual {v11, v1}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v1, v11}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v1

    neg-float v1, v1

    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    if-gtz v6, :cond_10

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v14, Lh5/i;->d:F

    const/4 v7, 0x1

    iput v7, v9, Lh5/g;->e:I

    goto :goto_6

    :cond_10
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-static {v2, v11}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v2

    cmpg-float v8, v2, v5

    if-gtz v8, :cond_11

    iput v6, v13, Lh5/i;->d:F

    iput v7, v9, Lh5/g;->e:I

    invoke-virtual {v14, v13}, Lh5/i;->a(Lh5/i;)V

    goto :goto_6

    :cond_11
    add-float v5, v2, v1

    div-float v5, v6, v5

    mul-float/2addr v2, v5

    iput v2, v14, Lh5/i;->d:F

    mul-float/2addr v1, v5

    iput v1, v13, Lh5/i;->d:F

    const/4 v1, 0x2

    iput v1, v9, Lh5/g;->e:I

    :goto_6
    iget v1, v9, Lh5/g;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    :goto_7
    move-object/from16 v2, v21

    move-object/from16 v5, v25

    move-object/from16 v12, v26

    goto/16 :goto_a

    :cond_12
    invoke-virtual {v9, v4}, Lh5/g;->a(Lk5/i;)V

    iget v1, v9, Lh5/g;->e:I

    iget-object v2, v0, LM1/d;->e:Ljava/lang/Object;

    check-cast v2, Lk5/i;

    const/4 v5, 0x1

    if-eq v1, v5, :cond_15

    const/4 v5, 0x2

    if-eq v1, v5, :cond_13

    invoke-virtual {v2}, Lk5/i;->l()V

    goto :goto_8

    :cond_13
    iget-object v1, v13, Lh5/i;->c:Lk5/i;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v1, Lk5/i;->d:F

    iput v5, v11, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v11, Lk5/i;->e:F

    iget-object v1, v14, Lh5/i;->c:Lk5/i;

    invoke-virtual {v11, v1}, Lk5/i;->m(Lk5/i;)V

    iget-object v1, v14, Lh5/i;->c:Lk5/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v1, Lk5/i;->d:F

    iput v5, v2, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v2, Lk5/i;->e:F

    invoke-virtual {v2}, Lk5/i;->i()V

    invoke-static {v11, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_14

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v11, v2}, Lk5/i;->e(FLk5/i;Lk5/i;)V

    goto :goto_8

    :cond_14
    const/high16 v1, 0x3f800000    # 1.0f

    iget v5, v11, Lk5/i;->e:F

    mul-float/2addr v1, v5

    iput v1, v2, Lk5/i;->d:F

    const/high16 v1, -0x40800000    # -1.0f

    iget v5, v11, Lk5/i;->d:F

    mul-float/2addr v1, v5

    iput v1, v2, Lk5/i;->e:F

    goto :goto_8

    :cond_15
    iget-object v1, v14, Lh5/i;->c:Lk5/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v1, Lk5/i;->d:F

    iput v5, v2, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v2, Lk5/i;->e:F

    invoke-virtual {v2}, Lk5/i;->i()V

    :goto_8
    iget v1, v2, Lk5/i;->d:F

    mul-float/2addr v1, v1

    iget v5, v2, Lk5/i;->e:F

    mul-float/2addr v5, v5

    add-float/2addr v5, v1

    const/high16 v1, 0x28800000

    cmpg-float v1, v5, v1

    if-gez v1, :cond_16

    goto :goto_7

    :cond_16
    iget v1, v9, Lh5/g;->e:I

    aget-object v1, v29, v1

    move-object/from16 v7, v28

    iget-object v5, v7, Lk5/h;->e:Lk5/d;

    invoke-virtual {v2}, Lk5/i;->i()V

    move-object/from16 v12, v26

    invoke-static {v5, v2, v12}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    move-object/from16 v5, v25

    invoke-virtual {v5, v12}, Lh5/f;->a(Lk5/i;)I

    move-result v6

    iput v6, v1, Lh5/i;->e:I

    iget-object v8, v5, Lh5/f;->a:[Lk5/i;

    aget-object v6, v8, v6

    iget-object v8, v1, Lh5/i;->a:Lk5/i;

    invoke-static {v7, v6, v8}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    move-object/from16 v6, v24

    iget-object v10, v6, Lk5/h;->e:Lk5/d;

    invoke-virtual {v2}, Lk5/i;->i()V

    invoke-static {v10, v2, v12}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    move-object/from16 v2, v21

    invoke-virtual {v2, v12}, Lh5/f;->a(Lk5/i;)I

    move-result v10

    iput v10, v1, Lh5/i;->f:I

    iget-object v11, v2, Lh5/f;->a:[Lk5/i;

    aget-object v10, v11, v10

    iget-object v11, v1, Lh5/i;->b:Lk5/i;

    invoke-static {v6, v10, v11}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget-object v10, v1, Lh5/i;->c:Lk5/i;

    iget v15, v11, Lk5/i;->d:F

    iput v15, v10, Lk5/i;->d:F

    iget v11, v11, Lk5/i;->e:F

    iput v11, v10, Lk5/i;->e:F

    invoke-virtual {v10, v8}, Lk5/i;->m(Lk5/i;)V

    const/4 v8, 0x1

    add-int/lit8 v10, v19, 0x1

    move/from16 v8, v20

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v8, :cond_18

    iget v15, v1, Lh5/i;->e:I

    move-object/from16 v20, v4

    aget v4, v23, v11

    if-ne v15, v4, :cond_17

    iget v4, v1, Lh5/i;->f:I

    aget v15, v22, v11

    if-ne v4, v15, :cond_17

    goto :goto_b

    :cond_17
    const/4 v4, 0x1

    add-int/2addr v11, v4

    move-object/from16 v4, v20

    goto :goto_9

    :cond_18
    move-object/from16 v20, v4

    const/4 v4, 0x1

    iget v1, v9, Lh5/g;->e:I

    add-int/2addr v1, v4

    iput v1, v9, Lh5/g;->e:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v8, v6

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v4, v20

    move-object/from16 v15, v29

    move-object v6, v2

    move-object/from16 v2, p2

    goto/16 :goto_3

    :cond_19
    move-object v2, v6

    move/from16 v19, v10

    move-object/from16 v29, v15

    :goto_a
    move/from16 v10, v19

    :goto_b
    sget v1, LM1/d;->h:I

    sget-object v4, Lk5/c;->d:[F

    if-le v1, v10, :cond_1a

    move v10, v1

    :cond_1a
    sput v10, LM1/d;->h:I

    move-object/from16 v1, p1

    iget-object v4, v1, Lh5/j;->a:Lk5/i;

    iget v6, v9, Lh5/g;->e:I

    iget-object v7, v1, Lh5/j;->b:Lk5/i;

    if-eqz v6, :cond_1e

    const/4 v8, 0x1

    if-eq v6, v8, :cond_1d

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1c

    const/4 v8, 0x3

    if-eq v6, v8, :cond_1b

    goto/16 :goto_c

    :cond_1b
    iget-object v6, v14, Lh5/i;->a:Lk5/i;

    iget v8, v6, Lk5/i;->d:F

    iput v8, v4, Lk5/i;->d:F

    iget v6, v6, Lk5/i;->e:F

    iput v6, v4, Lk5/i;->e:F

    iget v6, v14, Lh5/i;->d:F

    invoke-virtual {v4, v6}, Lk5/i;->h(F)V

    iget-object v6, v13, Lh5/i;->a:Lk5/i;

    iget-object v8, v9, Lh5/g;->i:Lk5/i;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v6, Lk5/i;->d:F

    iput v10, v8, Lk5/i;->d:F

    iget v6, v6, Lk5/i;->e:F

    iput v6, v8, Lk5/i;->e:F

    iget v6, v13, Lh5/i;->d:F

    invoke-virtual {v8, v6}, Lk5/i;->h(F)V

    iget-object v6, v3, Lh5/i;->a:Lk5/i;

    iget-object v10, v9, Lh5/g;->j:Lk5/i;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v6, Lk5/i;->d:F

    iput v11, v10, Lk5/i;->d:F

    iget v6, v6, Lk5/i;->e:F

    iput v6, v10, Lk5/i;->e:F

    iget v3, v3, Lh5/i;->d:F

    invoke-virtual {v10, v3}, Lk5/i;->h(F)V

    invoke-virtual {v4, v8}, Lk5/i;->b(Lk5/i;)V

    invoke-virtual {v4, v10}, Lk5/i;->b(Lk5/i;)V

    iget v3, v4, Lk5/i;->d:F

    iput v3, v7, Lk5/i;->d:F

    iget v3, v4, Lk5/i;->e:F

    iput v3, v7, Lk5/i;->e:F

    goto :goto_c

    :cond_1c
    iget-object v3, v14, Lh5/i;->a:Lk5/i;

    iget-object v6, v9, Lh5/g;->g:Lk5/i;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v3, Lk5/i;->d:F

    iput v8, v6, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v6, Lk5/i;->e:F

    iget v3, v14, Lh5/i;->d:F

    invoke-virtual {v6, v3}, Lk5/i;->h(F)V

    iget-object v3, v13, Lh5/i;->a:Lk5/i;

    iget v8, v3, Lk5/i;->d:F

    iput v8, v4, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v4, Lk5/i;->e:F

    iget v3, v13, Lh5/i;->d:F

    invoke-virtual {v4, v3}, Lk5/i;->h(F)V

    invoke-virtual {v4, v6}, Lk5/i;->b(Lk5/i;)V

    iget-object v3, v14, Lh5/i;->b:Lk5/i;

    iget v4, v3, Lk5/i;->d:F

    iput v4, v6, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v6, Lk5/i;->e:F

    iget v3, v14, Lh5/i;->d:F

    invoke-virtual {v6, v3}, Lk5/i;->h(F)V

    iget-object v3, v13, Lh5/i;->b:Lk5/i;

    iget v4, v3, Lk5/i;->d:F

    iput v4, v7, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v7, Lk5/i;->e:F

    iget v3, v13, Lh5/i;->d:F

    invoke-virtual {v7, v3}, Lk5/i;->h(F)V

    invoke-virtual {v7, v6}, Lk5/i;->b(Lk5/i;)V

    goto :goto_c

    :cond_1d
    iget-object v3, v14, Lh5/i;->a:Lk5/i;

    iget v6, v3, Lk5/i;->d:F

    iput v6, v4, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v4, Lk5/i;->e:F

    iget-object v3, v14, Lh5/i;->b:Lk5/i;

    iget v4, v3, Lk5/i;->d:F

    iput v4, v7, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v7, Lk5/i;->e:F

    :cond_1e
    :goto_c
    iget-object v3, v1, Lh5/j;->a:Lk5/i;

    invoke-static {v3, v7}, Lk5/c;->P(Lk5/i;Lk5/i;)F

    move-result v4

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v10

    double-to-float v4, v10

    iput v4, v1, Lh5/j;->c:F

    invoke-virtual {v9}, Lh5/g;->b()F

    move-result v4

    move-object/from16 v6, p2

    iput v4, v6, Lh5/h;->a:F

    iget v4, v9, Lh5/g;->e:I

    iput v4, v6, Lh5/h;->b:I

    const/4 v10, 0x0

    :goto_d
    iget v4, v9, Lh5/g;->e:I

    if-ge v10, v4, :cond_1f

    aget-object v4, v29, v10

    iget v6, v4, Lh5/i;->e:I

    aput v6, v18, v10

    iget v4, v4, Lh5/i;->f:I

    aput v4, v17, v10

    const/4 v4, 0x1

    add-int/2addr v10, v4

    goto :goto_d

    :cond_1f
    move-object/from16 v6, p3

    iget-boolean v4, v6, LK/l;->a:Z

    if-eqz v4, :cond_21

    iget v4, v5, Lh5/f;->c:F

    iget v2, v2, Lh5/f;->c:F

    iget v5, v1, Lh5/j;->c:F

    add-float v6, v4, v2

    cmpl-float v8, v5, v6

    if-lez v8, :cond_20

    const/high16 v8, 0x34000000

    cmpl-float v8, v5, v8

    if-lez v8, :cond_20

    sub-float/2addr v5, v6

    iput v5, v1, Lh5/j;->c:F

    iget-object v0, v0, LM1/d;->g:Ljava/lang/Object;

    check-cast v0, Lk5/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v7, Lk5/i;->d:F

    iput v1, v0, Lk5/i;->d:F

    iget v1, v7, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    invoke-virtual {v0, v3}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v0}, Lk5/i;->j()F

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lk5/i;->d:F

    iput v1, v12, Lk5/i;->d:F

    iget v1, v0, Lk5/i;->e:F

    iput v1, v12, Lk5/i;->e:F

    invoke-virtual {v12, v4}, Lk5/i;->h(F)V

    invoke-virtual {v3, v12}, Lk5/i;->b(Lk5/i;)V

    iget v1, v0, Lk5/i;->d:F

    iput v1, v12, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, v12, Lk5/i;->e:F

    invoke-virtual {v12, v2}, Lk5/i;->h(F)V

    invoke-virtual {v7, v12}, Lk5/i;->m(Lk5/i;)V

    goto :goto_e

    :cond_20
    invoke-virtual {v3, v7}, Lk5/i;->b(Lk5/i;)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v3, v0}, Lk5/i;->h(F)V

    iget v0, v3, Lk5/i;->d:F

    iput v0, v7, Lk5/i;->d:F

    iget v0, v3, Lk5/i;->e:F

    iput v0, v7, Lk5/i;->e:F

    const/4 v0, 0x0

    iput v0, v1, Lh5/j;->c:F

    :cond_21
    :goto_e
    return-void
.end method

.method public b()V
    .locals 7

    iget-object v0, p0, LM1/d;->b:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p0, LM1/d;->a:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, p0, LM1/d;->d:Ljava/lang/Object;

    check-cast v2, [F

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object v0, p0, LM1/d;->g:Ljava/lang/Object;

    check-cast v0, Lw0/i;

    iget-object v0, v0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v1, p0, LM1/d;->e:Ljava/lang/Object;

    check-cast v1, [F

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x81

    if-eq v0, v3, :cond_2

    const/16 v6, 0x82

    if-eq v0, v4, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    invoke-static {v2, v3, v4, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :cond_0
    invoke-static {v2, v6, v3, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :cond_1
    invoke-static {v2, v5, v6, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :cond_2
    invoke-static {v2, v4, v5, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    :goto_0
    iget-object v0, p0, LM1/d;->c:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget v1, v0, v3

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v1, v2

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object p0, p0, LM1/d;->f:Ljava/lang/Object;

    check-cast p0, [F

    aput v1, p0, v3

    aget v0, v0, v4

    div-float/2addr v0, v2

    const/high16 v1, -0x40000000    # -2.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v6, v0

    goto :goto_1

    :cond_3
    add-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float v6, v0, v5

    :goto_1
    aput v6, p0, v4

    return-void
.end method

.method public c(LM1/c;)V
    .locals 5

    if-eqz p1, :cond_4

    iget-object v0, p0, LM1/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "DevicesStateMonitor"

    if-eqz v1, :cond_3

    iget-object v1, p0, LM1/d;->f:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, LM1/d;->g:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LM1/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    const-class v3, Ljava/util/concurrent/Executor;

    iget-object v4, p0, LM1/d;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "registerCallback"

    invoke-static {v1, v4, v3}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "registerListenerInternal: method not found"

    invoke-static {v2, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v3, p0, LM1/d;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, LM1/d;->f:Ljava/lang/Object;

    iget-object p0, p0, LM1/d;->g:Ljava/lang/Object;

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, v1, p0}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "registerListenerInternal: e = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "registerListenerInternal: mDeviceStateManagerInstance = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LM1/d;->f:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "registerListener: listener = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public d(LM1/c;)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, LM1/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterListener: listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DevicesStateMonitor"

    invoke-static {v1, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LM1/d;->f:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object p1, p0, LM1/d;->g:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LM1/d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    iget-object v0, p0, LM1/d;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v2, "unregisterCallback"

    invoke-static {p1, v2, v0}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "unregisterCallback method not found"

    invoke-static {v1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, LM1/d;->f:Ljava/lang/Object;

    iget-object p0, p0, LM1/d;->g:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "unregisterListener: Manager or Listener is null"

    invoke-static {v1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
