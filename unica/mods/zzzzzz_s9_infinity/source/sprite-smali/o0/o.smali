.class public final synthetic Lo0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lo0/n;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lw0/e;

.field public final synthetic g:Lo0/q;

.field public final synthetic h:Ln0/w;


# direct methods
.method public synthetic constructor <init>(Lo0/n;Ljava/lang/String;Lw0/e;Lo0/q;Ln0/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/o;->d:Lo0/n;

    iput-object p2, p0, Lo0/o;->e:Ljava/lang/String;

    iput-object p3, p0, Lo0/o;->f:Lw0/e;

    iput-object p4, p0, Lo0/o;->g:Lo0/q;

    iput-object p5, p0, Lo0/o;->h:Ln0/w;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lo0/o;->d:Lo0/n;

    iget-object v2, v0, Lo0/o;->e:Ljava/lang/String;

    iget-object v3, v0, Lo0/o;->f:Lw0/e;

    iget-object v4, v0, Lo0/o;->g:Lo0/q;

    iget-object v0, v0, Lo0/o;->h:Ln0/w;

    iget-object v5, v1, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v5

    invoke-virtual {v5, v2}, Lw0/q;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    new-instance v0, Ln0/r;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Can\'t apply UPDATE policy to the chains of work."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ln0/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v0}, Lw0/e;->v0(Lj0/s;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v6}, Lr3/j;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw0/n;

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lo0/q;->invoke()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    iget-object v7, v6, Lw0/n;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lw0/q;->l(Ljava/lang/String;)Lw0/p;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v0, Ln0/r;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WorkSpec with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", that matches a name \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", wasn\'t found"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ln0/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v0}, Lw0/e;->v0(Lj0/s;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lw0/p;->d()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ln0/r;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ln0/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v0}, Lw0/e;->v0(Lj0/s;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    iget v8, v6, Lw0/n;->b:I

    if-ne v8, v2, :cond_4

    invoke-virtual {v5, v7}, Lw0/q;->d(Ljava/lang/String;)V

    invoke-virtual {v4}, Lo0/q;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v10, v6, Lw0/n;->a:Ljava/lang/String;

    const/16 v17, 0x0

    const/4 v11, 0x0

    iget-object v9, v0, Ln0/z;->b:Lw0/p;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const v18, 0xffffe

    invoke-static/range {v9 .. v18}, Lw0/p;->b(Lw0/p;Ljava/lang/String;ILjava/lang/String;Ln0/g;IJII)Lw0/p;

    move-result-object v23

    :try_start_0
    iget-object v2, v1, Lo0/n;->i:Lo0/e;

    const-string v4, "processor"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    const-string v5, "workDatabase"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Lo0/n;->e:Ln0/c;

    const-string v6, "configuration"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lo0/n;->h:Ljava/util/List;

    const-string v6, "schedulers"

    invoke-static {v1, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Ln0/z;->c:Ljava/util/LinkedHashSet;

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v1

    move-object/from16 v24, v0

    invoke-static/range {v19 .. v24}, Lj0/s;->L(Lo0/e;Landroidx/work/impl/WorkDatabase;Ln0/c;Ljava/util/List;Lw0/p;Ljava/util/LinkedHashSet;)V

    sget-object v0, Ln0/u;->b:Ln0/t;

    invoke-virtual {v3, v0}, Lw0/e;->v0(Lj0/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ln0/r;

    invoke-direct {v1, v0}, Ln0/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v1}, Lw0/e;->v0(Lj0/s;)V

    :goto_0
    return-void
.end method
