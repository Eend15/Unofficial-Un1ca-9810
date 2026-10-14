.class public final LG4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR3/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LI4/o;LU3/x;Ljava/lang/Iterable;LW3/d;LW3/b;Z)LU3/C;
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "storageManager"

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtInsModule"

    invoke-static {v2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDescriptorFactories"

    move-object/from16 v8, p3

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v10, p5

    invoke-static {v10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LR3/p;->n:Ljava/util/Set;

    const-string v3, "packageFqNames"

    invoke-static {v0, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls4/c;

    sget-object v4, LG4/a;->m:LG4/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, LG4/a;->a(Ls4/c;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "p0"

    invoke-static {v4, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LG4/d;->n(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v3, v1, v2, v5}, Lw0/f;->p(Ls4/c;LI4/o;LU3/x;Ljava/io/InputStream;)LG4/c;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource not found in classpath: "

    invoke-static {v4, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v14, LU3/E;

    invoke-direct {v14, v15}, LU3/E;-><init>(Ljava/util/ArrayList;)V

    new-instance v9, Lw0/i;

    invoke-direct {v9, v1, v2}, Lw0/i;-><init>(LI4/o;LU3/x;)V

    new-instance v13, LF4/i;

    new-instance v3, LA1/e;

    invoke-direct {v3, v14}, LA1/e;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lw0/c;

    sget-object v0, LG4/a;->m:LG4/a;

    invoke-direct {v4, v2, v9, v0}, Lw0/c;-><init>(LU3/x;Lw0/i;LG4/a;)V

    sget-object v6, LF4/n;->a:LF4/j;

    sget-object v7, LF4/j;->c:LF4/j;

    new-instance v12, LU0/e;

    invoke-direct {v12, v1}, LU0/e;-><init>(LI4/o;)V

    iget-object v5, v0, LE4/a;->a:Lt4/i;

    const/high16 v16, 0x50000

    const/16 v17, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v18, v5

    move-object v5, v14

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v19, v12

    move-object/from16 v12, v18

    move-object/from16 v20, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v19

    move-object/from16 v18, v15

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, LF4/i;-><init>(LI4/o;LU3/x;LF4/e;LF4/b;LU3/F;LF4/n;LF4/o;Ljava/lang/Iterable;Lw0/i;LW3/b;LW3/d;Lt4/i;LK4/m;LU0/e;I)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG4/c;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, LG4/c;->I0(LF4/i;)V

    goto :goto_1

    :cond_2
    return-object v17
.end method
