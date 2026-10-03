.class public abstract LP4/j;
.super LK/I;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v0, LP4/e;

    sget-object v1, LP4/k;->i:Ls4/f;

    sget-object v2, LP4/g;->e:LP4/g;

    new-instance v3, LP4/p;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LP4/p;-><init>(I)V

    filled-new-array {v2, v3}, [LP4/a;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v1, LP4/e;

    sget-object v3, LP4/k;->j:Ls4/f;

    new-instance v4, LP4/p;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, LP4/p;-><init>(I)V

    filled-new-array {v2, v4}, [LP4/a;

    move-result-object v4

    sget-object v6, LP4/d;->h:LP4/d;

    invoke-direct {v1, v3, v4, v6}, LP4/e;-><init>(Ls4/f;[LP4/a;LE3/b;)V

    new-instance v3, LP4/e;

    sget-object v4, LP4/k;->a:Ls4/f;

    sget-object v6, LP4/f;->c:LP4/f;

    new-instance v7, LP4/p;

    invoke-direct {v7, v5}, LP4/p;-><init>(I)V

    sget-object v8, LP4/f;->b:LP4/f;

    filled-new-array {v2, v6, v7, v8}, [LP4/a;

    move-result-object v7

    invoke-direct {v3, v4, v7}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v4, LP4/e;

    sget-object v7, LP4/k;->b:Ls4/f;

    new-instance v9, LP4/p;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, LP4/p;-><init>(I)V

    filled-new-array {v2, v6, v9, v8}, [LP4/a;

    move-result-object v9

    invoke-direct {v4, v7, v9}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v7, LP4/e;

    sget-object v9, LP4/k;->c:Ls4/f;

    new-instance v10, LP4/p;

    invoke-direct {v10}, LP4/p;-><init>()V

    filled-new-array {v2, v6, v10, v8}, [LP4/a;

    move-result-object v8

    invoke-direct {v7, v9, v8}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v8, LP4/e;

    sget-object v9, LP4/k;->g:Ls4/f;

    filled-new-array {v2}, [LP4/a;

    move-result-object v10

    invoke-direct {v8, v9, v10}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v9, LP4/e;

    sget-object v10, LP4/k;->f:Ls4/f;

    sget-object v11, LP4/q;->e:LP4/q;

    sget-object v12, LP4/l;->c:LP4/l;

    filled-new-array {v2, v11, v6, v12}, [LP4/a;

    move-result-object v13

    invoke-direct {v9, v10, v13}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v10, LP4/e;

    sget-object v13, LP4/k;->h:Ls4/f;

    sget-object v14, LP4/q;->d:LP4/q;

    filled-new-array {v2, v14}, [LP4/a;

    move-result-object v15

    invoke-direct {v10, v13, v15}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v13, LP4/e;

    sget-object v15, LP4/k;->k:Ls4/f;

    filled-new-array {v2, v14}, [LP4/a;

    move-result-object v5

    invoke-direct {v13, v15, v5}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v15, LP4/e;

    sget-object v5, LP4/k;->l:Ls4/f;

    filled-new-array {v2, v14, v12}, [LP4/a;

    move-result-object v12

    invoke-direct {v15, v5, v12}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v12, LP4/e;

    sget-object v5, LP4/k;->p:Ls4/f;

    move-object/from16 v17, v15

    filled-new-array {v2, v11, v6}, [LP4/a;

    move-result-object v15

    invoke-direct {v12, v5, v15}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v15, LP4/e;

    sget-object v5, LP4/k;->d:Ls4/f;

    sget-object v18, LP4/g;->d:LP4/g;

    move-object/from16 v19, v12

    filled-new-array/range {v18 .. v18}, [LP4/a;

    move-result-object v12

    move-object/from16 v18, v13

    sget-object v13, LP4/d;->i:LP4/d;

    invoke-direct {v15, v5, v12, v13}, LP4/e;-><init>(Ls4/f;[LP4/a;LE3/b;)V

    new-instance v12, LP4/e;

    sget-object v5, LP4/k;->e:Ls4/f;

    sget-object v13, LP4/m;->c:LP4/m;

    filled-new-array {v2, v13, v11, v6}, [LP4/a;

    move-result-object v13

    invoke-direct {v12, v5, v13}, LP4/e;-><init>(Ls4/f;[LP4/a;)V

    new-instance v13, LP4/e;

    sget-object v5, LP4/k;->r:Ljava/util/Set;

    move-object/from16 v20, v12

    filled-new-array {v2, v11, v6}, [LP4/a;

    move-result-object v12

    invoke-direct {v13, v5, v12}, LP4/e;-><init>(Ljava/util/Set;[LP4/a;)V

    new-instance v12, LP4/e;

    sget-object v5, LP4/k;->q:Ljava/util/Set;

    move-object/from16 v21, v13

    filled-new-array {v2, v14}, [LP4/a;

    move-result-object v13

    invoke-direct {v12, v5, v13}, LP4/e;-><init>(Ljava/util/Set;[LP4/a;)V

    new-instance v13, LP4/e;

    sget-object v5, LP4/k;->n:Ls4/f;

    move-object/from16 v22, v12

    sget-object v12, LP4/k;->o:Ls4/f;

    filled-new-array {v5, v12}, [Ls4/f;

    move-result-object v5

    invoke-static {v5}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    filled-new-array {v2}, [LP4/a;

    move-result-object v12

    move-object/from16 v23, v15

    sget-object v15, LP4/d;->j:LP4/d;

    invoke-direct {v13, v5, v12, v15}, LP4/e;-><init>(Ljava/util/Collection;[LP4/a;LE3/b;)V

    new-instance v15, LP4/e;

    sget-object v5, LP4/k;->s:Ljava/util/Set;

    sget-object v12, LP4/n;->c:LP4/n;

    filled-new-array {v2, v12, v11, v6}, [LP4/a;

    move-result-object v6

    invoke-direct {v15, v5, v6}, LP4/e;-><init>(Ljava/util/Set;[LP4/a;)V

    new-instance v30, LP4/e;

    sget-object v5, LP4/k;->m:LV4/l;

    filled-new-array {v2, v14}, [LP4/a;

    move-result-object v2

    sget-object v28, LP4/d;->f:LP4/d;

    const-string v6, "regex"

    invoke-static {v5, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, [LP4/a;

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v30

    move-object/from16 v26, v5

    invoke-direct/range {v24 .. v29}, LP4/e;-><init>(Ls4/f;LV4/l;Ljava/util/Collection;LE3/b;[LP4/a;)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object/from16 v8, v18

    move-object/from16 v9, v17

    move-object/from16 v10, v19

    move-object/from16 v11, v23

    move-object/from16 v14, v22

    move-object/from16 v12, v20

    move-object/from16 v16, v13

    move-object/from16 v13, v21

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v30

    filled-new-array/range {v0 .. v17}, [LP4/e;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LP4/j;->a:Ljava/util/List;

    return-void
.end method
