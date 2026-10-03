.class public abstract LF4/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LF4/x;->a:I

    const-string v0, "database"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, LF4/x;->b:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LF4/x;->c:Ljava/lang/Object;

    .line 8
    new-instance p1, La0/o;

    invoke-direct {p1, v0, p0}, La0/o;-><init>(ILjava/lang/Object;)V

    .line 9
    new-instance v0, Lq3/j;

    invoke-direct {v0, p1}, Lq3/j;-><init>(LE3/a;)V

    .line 10
    iput-object v0, p0, LF4/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 32

    move-object/from16 v0, p0

    const/4 v1, 0x2

    iput v1, v0, LF4/x;->a:I

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, LF4/x;->b:Ljava/lang/Object;

    .line 13
    new-instance v1, Lw0/p;

    iget-object v2, v0, LF4/x;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "id.toString()"

    invoke-static {v4, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v18, 0x0

    const/16 v28, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const v30, 0xffffa

    const/16 v31, 0x0

    move-object v3, v1

    .line 14
    invoke-direct/range {v3 .. v31}, Lw0/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIIII)V

    .line 15
    iput-object v1, v0, LF4/x;->c:Ljava/lang/Object;

    .line 16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 17
    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x1

    invoke-static {v3}, Lr3/v;->d0(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v1, v2}, Lr3/h;->s0([Ljava/lang/Object;Ljava/util/LinkedHashSet;)V

    .line 18
    iput-object v2, v0, LF4/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp4/f;LX3/C;LU3/L;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LF4/x;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LF4/x;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, LF4/x;->c:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, LF4/x;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lf0/i;
    .locals 3

    iget-object v0, p0, LF4/x;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->a()V

    iget-object v0, p0, LF4/x;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LF4/x;->d:Ljava/lang/Object;

    check-cast p0, Lq3/j;

    invoke-virtual {p0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf0/i;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LF4/x;->d()Lf0/i;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public b()Ln0/z;
    .locals 5

    invoke-virtual {p0}, LF4/x;->c()Ln0/z;

    move-result-object v0

    iget-object v1, p0, LF4/x;->c:Ljava/lang/Object;

    check-cast v1, Lw0/p;

    iget-object v1, v1, Lw0/p;->j:Ln0/e;

    iget-object v2, v1, Ln0/e;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Ln0/e;->d:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Ln0/e;->b:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Ln0/e;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, LF4/x;->c:Ljava/lang/Object;

    check-cast v2, Lw0/p;

    iget-boolean v3, v2, Lw0/p;->q:Z

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    iget-wide v1, v2, Lw0/p;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expedited jobs cannot be delayed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expedited jobs only support network and storage constraints"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, LF4/x;->i(Ljava/util/UUID;)LF4/x;

    return-object v0
.end method

.method public abstract c()Ln0/z;
.end method

.method public d()Lf0/i;
    .locals 1

    invoke-virtual {p0}, LF4/x;->e()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, LF4/x;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->a()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Le0/c;

    move-result-object p0

    invoke-interface {p0}, Le0/c;->O()Lf0/c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lf0/c;->h(Ljava/lang/String;)Lf0/i;

    move-result-object p0

    return-object p0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ls4/c;
.end method

.method public abstract g()LF4/x;
.end method

.method public h(Lf0/i;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LF4/x;->d:Ljava/lang/Object;

    check-cast v0, Lq3/j;

    invoke-virtual {v0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/i;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, LF4/x;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public i(Ljava/util/UUID;)LF4/x;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, LF4/x;->b:Ljava/lang/Object;

    new-instance v14, Lw0/p;

    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "id.toString()"

    invoke-static {v2, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LF4/x;->c:Ljava/lang/Object;

    check-cast v1, Lw0/p;

    const-string v3, "other"

    invoke-static {v1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v1, Lw0/p;->b:I

    iget-object v6, v1, Lw0/p;->d:Ljava/lang/String;

    new-instance v7, Ln0/g;

    iget-object v4, v1, Lw0/p;->e:Ln0/g;

    invoke-direct {v7, v4}, Ln0/g;-><init>(Ln0/g;)V

    new-instance v8, Ln0/g;

    iget-object v4, v1, Lw0/p;->f:Ln0/g;

    invoke-direct {v8, v4}, Ln0/g;-><init>(Ln0/g;)V

    iget-wide v9, v1, Lw0/p;->g:J

    iget-wide v11, v1, Lw0/p;->h:J

    move-wide/from16 v30, v11

    iget-wide v11, v1, Lw0/p;->i:J

    new-instance v32, Ln0/e;

    iget-object v4, v1, Lw0/p;->j:Ln0/e;

    invoke-static {v4, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v33, v11

    iget-wide v11, v4, Ln0/e;->f:J

    move-wide/from16 v35, v9

    iget-wide v9, v4, Ln0/e;->g:J

    iget v3, v4, Ln0/e;->a:I

    iget-boolean v13, v4, Ln0/e;->b:Z

    iget-boolean v15, v4, Ln0/e;->c:Z

    iget-boolean v0, v4, Ln0/e;->d:Z

    move-object/from16 p1, v8

    iget-boolean v8, v4, Ln0/e;->e:Z

    iget-object v4, v4, Ln0/e;->h:Ljava/util/Set;

    move/from16 v18, v15

    move-object/from16 v15, v32

    move/from16 v16, v3

    move/from16 v17, v13

    move/from16 v19, v0

    move/from16 v20, v8

    move-wide/from16 v21, v11

    move-wide/from16 v23, v9

    move-object/from16 v25, v4

    invoke-direct/range {v15 .. v25}, Ln0/e;-><init>(IZZZZJJLjava/util/Set;)V

    iget-wide v3, v1, Lw0/p;->n:J

    move-wide/from16 v19, v3

    iget-boolean v0, v1, Lw0/p;->q:Z

    move/from16 v25, v0

    iget v0, v1, Lw0/p;->r:I

    move/from16 v26, v0

    iget-object v4, v1, Lw0/p;->c:Ljava/lang/String;

    iget v15, v1, Lw0/p;->k:I

    iget v0, v1, Lw0/p;->l:I

    move/from16 v16, v0

    iget-wide v8, v1, Lw0/p;->m:J

    move-wide/from16 v17, v8

    iget-wide v8, v1, Lw0/p;->o:J

    move-wide/from16 v21, v8

    iget-wide v8, v1, Lw0/p;->p:J

    move-wide/from16 v23, v8

    iget v0, v1, Lw0/p;->s:I

    move/from16 v27, v0

    const/high16 v28, 0x80000

    const/16 v29, 0x0

    move-object v1, v14

    move v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, v35

    move-wide/from16 v12, v33

    move-wide/from16 v10, v30

    move-object v0, v14

    move-object/from16 v14, v32

    invoke-direct/range {v1 .. v29}, Lw0/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIIII)V

    move-object/from16 v1, p0

    iput-object v0, v1, LF4/x;->c:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, LF4/x;->g()LF4/x;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LF4/x;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LF4/x;->f()Ls4/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
