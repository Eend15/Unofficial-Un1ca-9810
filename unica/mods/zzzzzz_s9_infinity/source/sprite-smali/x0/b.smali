.class public final Lx0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Lw0/e;

.field public final synthetic e:I

.field public final synthetic f:Lo0/n;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo0/n;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lx0/b;->e:I

    iput-object p1, p0, Lx0/b;->f:Lo0/n;

    iput-object p2, p0, Lx0/b;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lw0/e;

    invoke-direct {p1}, Lw0/e;-><init>()V

    iput-object p1, p0, Lx0/b;->d:Lw0/e;

    return-void
.end method

.method public static a(Lo0/n;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Lw0/c;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lw0/q;->i(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Lw0/q;->q(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v3}, Lw0/c;->E(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo0/n;->i:Lo0/e;

    const-string v1, "Processor cancelling "

    iget-object v2, v0, Lo0/e;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v3

    sget-object v4, Lo0/e;->p:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lo0/e;->m:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lo0/e;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/r;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v1, :cond_3

    iget-object v1, v0, Lo0/e;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/r;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    iget-object v4, v0, Lo0/e;->k:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1}, Lo0/e;->b(Ljava/lang/String;Lo0/r;)Z

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lo0/e;->g()V

    :cond_5
    iget-object p0, p0, Lo0/n;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/g;

    invoke-interface {v0, p1}, Lo0/g;->cancel(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    return-void

    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget v0, p0, Lx0/b;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lx0/b;->f:Lo0/n;

    iget-object v1, v0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    iget-object p0, p0, Lx0/b;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lx0/b;->a(Lo0/n;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    iget-object p0, v0, Lo0/n;->e:Ln0/c;

    iget-object v1, v0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Lo0/n;->h:Ljava/util/List;

    invoke-static {p0, v1, v0}, Lo0/h;->a(Ln0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lx0/b;->f:Lo0/n;

    iget-object v1, v0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_1
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v2

    iget-object p0, p0, Lx0/b;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Lw0/q;->j(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lx0/b;->a(Lo0/n;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    :pswitch_1
    iget-object v0, p0, Lx0/b;->f:Lo0/n;

    iget-object v1, v0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_2
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v2

    iget-object p0, p0, Lx0/b;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Lw0/q;->k(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lx0/b;->a(Lo0/n;Ljava/lang/String;)V

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    iget-object p0, v0, Lo0/n;->e:Ln0/c;

    iget-object v1, v0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Lo0/n;->h:Ljava/util/List;

    invoke-static {p0, v1, v0}, Lo0/h;->a(Ln0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :goto_3
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lx0/b;->d:Lw0/e;

    :try_start_0
    invoke-virtual {p0}, Lx0/b;->b()V

    sget-object p0, Ln0/u;->b:Ln0/t;

    invoke-virtual {v0, p0}, Lw0/e;->v0(Lj0/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ln0/r;

    invoke-direct {v1, p0}, Ln0/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lw0/e;->v0(Lj0/s;)V

    :goto_0
    return-void
.end method
