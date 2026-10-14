.class public abstract LO3/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, LO3/j0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)LZ3/f;
    .locals 37

    const-string v0, "$this$getOrCreateModule"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, La4/b;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, LO3/s0;

    invoke-direct {v1, v0}, LO3/s0;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v2, LO3/j0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LZ3/f;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, LI4/l;

    const-string v4, "RuntimeModuleData"

    invoke-direct {v3, v4}, LI4/l;-><init>(Ljava/lang/String;)V

    new-instance v4, LT3/i;

    invoke-direct {v4, v3}, LT3/i;-><init>(LI4/l;)V

    new-instance v15, LX3/D;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<runtime module for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v5

    const/16 v6, 0x38

    invoke-direct {v15, v5, v3, v4, v6}, LX3/D;-><init>(Ls4/f;LI4/l;LR3/j;I)V

    iget-object v5, v3, LI4/l;->a:LI4/n;

    invoke-interface {v5}, LI4/n;->F()V

    :try_start_0
    iget-object v6, v4, LR3/j;->a:LX3/D;

    if-nez v6, :cond_9

    iput-object v15, v4, LR3/j;->a:LX3/D;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, LI4/n;->C()V

    new-instance v5, LR3/m;

    const/4 v6, 0x1

    invoke-direct {v5, v15, v6}, LR3/m;-><init>(LX3/D;I)V

    iput-object v5, v4, LT3/i;->f:LR3/m;

    new-instance v14, LZ3/b;

    invoke-direct {v14, v0}, LZ3/b;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v13, Ll4/c;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v12, Landroidx/recyclerview/widget/y;

    const/4 v5, 0x7

    invoke-direct {v12, v5}, Landroidx/recyclerview/widget/y;-><init>(I)V

    new-instance v11, Lw0/i;

    invoke-direct {v11, v3, v15}, Lw0/i;-><init>(LI4/o;LU3/x;)V

    sget-object v16, Ll4/d;->c:Ll4/d;

    new-instance v10, Ld4/d;

    sget-object v9, Ld4/t;->c:Ld4/t;

    invoke-direct {v10, v3, v9}, Ld4/d;-><init>(LI4/l;Ld4/t;)V

    new-instance v8, Lg4/a;

    new-instance v7, LZ3/b;

    invoke-direct {v7, v0}, LZ3/b;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v0, Le4/h;->c:Le4/h;

    sget-object v28, LZ3/e;->b:LZ3/e;

    sget-object v17, Le4/h;->a:Le4/h;

    new-instance v6, LU0/e;

    sget-object v29, Lr3/r;->d:Lr3/r;

    invoke-direct {v6, v3}, LU0/e;-><init>(LI4/o;)V

    sget-object v18, LZ3/e;->c:LZ3/e;

    sget-object v19, LU3/M;->f:LU3/M;

    sget-object v20, Lc4/a;->a:Lc4/a;

    new-instance v5, LR3/n;

    invoke-direct {v5, v15, v11}, LR3/n;-><init>(LX3/D;Lw0/i;)V

    move-object/from16 p0, v1

    new-instance v1, Ln1/a;

    move-object/from16 v21, v5

    new-instance v5, Lk4/d;

    sget-object v24, Lg4/b;->a:Lg4/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v22, v6

    const-string v6, "javaTypeEnhancementState"

    invoke-static {v9, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v10, v1, Ln1/a;->a:Ljava/lang/Object;

    iput-object v9, v1, Ln1/a;->b:Ljava/lang/Object;

    iput-object v5, v1, Ln1/a;->c:Ljava/lang/Object;

    sget-object v23, Ld4/m;->a:Ld4/m;

    sget-object v5, LK4/l;->b:LK4/k;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v30, LK4/k;->b:LK4/m;

    new-instance v27, LZ3/e;

    invoke-direct/range {v27 .. v27}, Ljava/lang/Object;-><init>()V

    move-object v5, v8

    move-object v6, v3

    move-object/from16 v31, v2

    move-object v2, v8

    move-object v8, v14

    move-object/from16 v26, v9

    move-object v9, v13

    move-object/from16 v25, v10

    move-object v10, v0

    move-object v0, v11

    move-object/from16 v11, v28

    move-object/from16 v32, v12

    move-object/from16 v12, v17

    move-object/from16 v33, v4

    move-object v4, v13

    move-object/from16 v13, v22

    move-object/from16 v34, v0

    move-object v0, v14

    move-object/from16 v14, v18

    move-object/from16 v35, v15

    move-object/from16 v15, v32

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v35

    move-object/from16 v20, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v1

    move-object/from16 v25, v30

    invoke-direct/range {v5 .. v27}, Lg4/a;-><init>(LI4/l;LZ3/b;LZ3/b;Ll4/c;Le4/h;LZ3/e;Le4/h;LU0/e;LZ3/e;Landroidx/recyclerview/widget/y;Ll4/d;LU3/M;Lc4/a;LX3/D;LR3/n;Ld4/d;Ln1/a;Ld4/m;Lg4/b;LK4/m;Ld4/t;LZ3/e;)V

    new-instance v1, Lg4/d;

    invoke-direct {v1, v2}, Lg4/d;-><init>(Lg4/a;)V

    new-instance v8, Lw0/c;

    invoke-direct {v8, v0, v4}, Lw0/c;-><init>(LZ3/b;Ll4/c;)V

    new-instance v9, Landroidx/recyclerview/widget/b;

    move-object/from16 v15, v34

    move-object/from16 v2, v35

    invoke-direct {v9, v2, v15, v3, v0}, Landroidx/recyclerview/widget/b;-><init>(LX3/D;Lw0/i;LI4/l;LZ3/b;)V

    iget-object v5, v2, LX3/D;->g:LR3/j;

    instance-of v6, v5, LT3/i;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    check-cast v5, LT3/i;

    goto :goto_0

    :cond_2
    move-object v5, v7

    :goto_0
    new-instance v14, LF4/i;

    sget-object v12, Ll4/d;->b:Ll4/d;

    if-nez v5, :cond_3

    move-object v6, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, LT3/i;->H()LT3/n;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_4

    sget-object v6, LW3/a;->b:LW3/a;

    :cond_4
    move-object/from16 v16, v6

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, LT3/i;->H()LT3/n;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_6

    sget-object v5, LW3/a;->d:LW3/a;

    move-object/from16 v17, v5

    goto :goto_3

    :cond_6
    move-object/from16 v17, v7

    :goto_3
    sget-object v18, Lr4/h;->a:Lt4/i;

    new-instance v13, LU0/e;

    invoke-direct {v13, v3}, LU0/e;-><init>(LI4/o;)V

    const/high16 v20, 0x40000

    move-object v5, v14

    move-object v6, v3

    move-object v7, v2

    move-object v10, v1

    move-object/from16 v11, v28

    move-object/from16 v19, v13

    move-object/from16 v13, v29

    move-object/from16 v21, v0

    move-object v0, v14

    move-object v14, v15

    move-object/from16 v36, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v30

    invoke-direct/range {v5 .. v20}, LF4/i;-><init>(LI4/o;LU3/x;LF4/e;LF4/b;LU3/F;LF4/n;LF4/o;Ljava/lang/Iterable;Lw0/i;LW3/b;LW3/d;Lt4/i;LK4/m;LU0/e;I)V

    iput-object v0, v4, Ll4/c;->a:LF4/i;

    new-instance v5, LA1/e;

    invoke-direct {v5, v1}, LA1/e;-><init>(Ljava/lang/Object;)V

    move-object/from16 v6, v32

    iput-object v5, v6, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    const-class v5, Lq3/m;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v15, LT3/o;

    new-instance v6, LZ3/b;

    const-string v7, "stdlibClassLoader"

    invoke-static {v5, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v5}, LZ3/b;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual/range {v33 .. v33}, LT3/i;->H()LT3/n;

    move-result-object v14

    invoke-virtual/range {v33 .. v33}, LT3/i;->H()LT3/n;

    move-result-object v13

    new-instance v12, LU0/e;

    invoke-direct {v12, v3}, LU0/e;-><init>(LI4/o;)V

    const-string v5, "additionalClassPartsProvider"

    invoke-static {v14, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "platformDependentDeclarationFilter"

    invoke-static {v13, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v3, v6, v2}, LT3/o;-><init>(LI4/l;LZ3/b;LX3/D;)V

    new-instance v11, LF4/i;

    new-instance v8, LA1/e;

    invoke-direct {v8, v15}, LA1/e;-><init>(Ljava/lang/Object;)V

    new-instance v9, Lw0/c;

    sget-object v5, LG4/a;->m:LG4/a;

    move-object/from16 v10, v36

    invoke-direct {v9, v2, v10, v5}, Lw0/c;-><init>(LU3/x;Lw0/i;LG4/a;)V

    sget-object v16, LF4/n;->a:LF4/j;

    sget-object v17, LF4/j;->c:LF4/j;

    new-instance v6, LS3/a;

    invoke-direct {v6, v3, v2}, LS3/a;-><init>(LI4/l;LX3/D;)V

    new-instance v7, LT3/g;

    invoke-direct {v7, v3, v2}, LT3/g;-><init>(LI4/l;LX3/D;)V

    filled-new-array {v6, v7}, [LW3/c;

    move-result-object v6

    invoke-static {v6}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    iget-object v7, v5, LE4/a;->a:Lt4/i;

    const/high16 v20, 0x40000

    move-object v5, v11

    move-object v6, v3

    move-object v3, v7

    move-object v7, v2

    move-object/from16 v19, v10

    move-object v10, v15

    move-object/from16 v22, v0

    move-object v0, v11

    move-object/from16 v11, v16

    move-object/from16 v23, v12

    move-object/from16 v12, v17

    move-object/from16 v16, v13

    move-object/from16 v13, v18

    move-object/from16 v17, v14

    move-object/from16 v14, v19

    move-object/from16 v24, v4

    move-object v4, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v3

    move-object/from16 v18, v30

    move-object/from16 v19, v23

    invoke-direct/range {v5 .. v20}, LF4/i;-><init>(LI4/o;LU3/x;LF4/e;LF4/b;LU3/F;LF4/n;LF4/o;Ljava/lang/Iterable;Lw0/i;LW3/b;LW3/d;Lt4/i;LK4/m;LU0/e;I)V

    iput-object v0, v4, LT3/o;->c:LF4/i;

    filled-new-array {v2}, [LX3/D;

    move-result-object v0

    invoke-static {v0}, Lr3/h;->u0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, LX3/C;

    invoke-direct {v3, v0}, LX3/C;-><init>(Ljava/util/List;)V

    iput-object v3, v2, LX3/D;->j:LX3/C;

    new-instance v0, LX3/o;

    filled-new-array {v1, v4}, [LU3/F;

    move-result-object v1

    invoke-static {v1}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "CompositeProvider@RuntimeModuleData for "

    invoke-static {v2, v3}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, LX3/o;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, v2, LX3/D;->k:LU3/C;

    new-instance v0, LZ3/f;

    new-instance v1, Lw0/m;

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-direct {v1, v2, v3}, Lw0/m;-><init>(LZ3/b;Ll4/c;)V

    move-object/from16 v2, v22

    invoke-direct {v0, v2, v1}, LZ3/f;-><init>(LF4/i;Lw0/m;)V

    :goto_4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    move-object/from16 v3, v31

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LZ3/f;

    if-eqz v4, :cond_7

    return-object v4

    :cond_7
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 p0, v2

    move-object/from16 v31, v3

    goto :goto_4

    :cond_8
    return-object v0

    :cond_9
    move-object/from16 v33, v4

    move-object v2, v15

    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Built-ins module is already set: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v33

    iget-object v4, v4, LR3/j;->a:LX3/D;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (attempting to reset to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, v3, LI4/l;->b:LI4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {v5}, LI4/n;->C()V

    throw v0
.end method
