.class public final Lq0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/b;
.implements Lx0/u;


# static fields
.field public static final p:Ljava/lang/String;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:I

.field public final f:Lw0/j;

.field public final g:Lq0/i;

.field public final h:Ln1/a;

.field public final i:Ljava/lang/Object;

.field public j:I

.field public final k:Landroidx/appcompat/app/o;

.field public final l:LH/o;

.field public m:Landroid/os/PowerManager$WakeLock;

.field public n:Z

.field public final o:Lo0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq0/g;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILq0/i;Lo0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/g;->d:Landroid/content/Context;

    iput p2, p0, Lq0/g;->e:I

    iput-object p3, p0, Lq0/g;->g:Lq0/i;

    iget-object p1, p4, Lo0/i;->a:Lw0/j;

    iput-object p1, p0, Lq0/g;->f:Lw0/j;

    iput-object p4, p0, Lq0/g;->o:Lo0/i;

    iget-object p1, p3, Lq0/i;->h:Lo0/n;

    iget-object p1, p1, Lo0/n;->m:Lw0/i;

    iget-object p2, p3, Lq0/i;->e:Ln1/a;

    iget-object p3, p2, Ln1/a;->a:Ljava/lang/Object;

    check-cast p3, Landroidx/appcompat/app/o;

    iput-object p3, p0, Lq0/g;->k:Landroidx/appcompat/app/o;

    iget-object p2, p2, Ln1/a;->c:Ljava/lang/Object;

    check-cast p2, LH/o;

    iput-object p2, p0, Lq0/g;->l:LH/o;

    new-instance p2, Ln1/a;

    invoke-direct {p2, p1, p0}, Ln1/a;-><init>(Lw0/i;Ls0/b;)V

    iput-object p2, p0, Lq0/g;->h:Ln1/a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq0/g;->n:Z

    iput p1, p0, Lq0/g;->j:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/g;->i:Ljava/lang/Object;

    return-void
.end method

.method public static c(Lq0/g;)V
    .locals 10

    iget-object v0, p0, Lq0/g;->f:Lw0/j;

    iget v1, p0, Lq0/g;->j:I

    iget-object v2, v0, Lw0/j;->a:Ljava/lang/String;

    sget-object v3, Lq0/g;->p:Ljava/lang/String;

    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    iput v4, p0, Lq0/g;->j:I

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Stopping work for WorkSpec "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lq0/g;->d:Landroid/content/Context;

    const-class v5, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ACTION_STOP_WORK"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, v0}, Lq0/c;->d(Landroid/content/Intent;Lw0/j;)V

    new-instance v6, LK0/a;

    iget-object v7, p0, Lq0/g;->g:Lq0/i;

    iget v8, p0, Lq0/g;->e:I

    const/4 v9, 0x4

    invoke-direct {v6, v7, v1, v8, v9}, LK0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iget-object p0, p0, Lq0/g;->l:LH/o;

    invoke-virtual {p0, v6}, LH/o;->execute(Ljava/lang/Runnable;)V

    iget-object v1, v7, Lq0/i;->g:Lo0/e;

    invoke-virtual {v1, v2}, Lo0/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "WorkSpec "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to be rescheduled"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_SCHEDULE_WORK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, v0}, Lq0/c;->d(Landroid/content/Intent;Lw0/j;)V

    new-instance v0, LK0/a;

    const/4 v2, 0x4

    invoke-direct {v0, v7, v1, v8, v2}, LK0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {p0, v0}, LH/o;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processor does not have WorkSpec "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". No need to reschedule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Already stopped work for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/p;

    invoke-static {v0}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v0

    iget-object v1, p0, Lq0/g;->f:Lw0/j;

    invoke-virtual {v0, v1}, Lw0/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lq0/f;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lq0/f;-><init>(Lq0/g;I)V

    iget-object p0, p0, Lq0/g;->k:Landroidx/appcompat/app/o;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 1

    new-instance p1, Lq0/f;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lq0/f;-><init>(Lq0/g;I)V

    iget-object p0, p0, Lq0/g;->k:Landroidx/appcompat/app/o;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 5

    const-string v0, "Releasing wakelock "

    iget-object v1, p0, Lq0/g;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lq0/g;->h:Ln1/a;

    invoke-virtual {v2}, Ln1/a;->z()V

    iget-object v2, p0, Lq0/g;->g:Lq0/i;

    iget-object v2, v2, Lq0/i;->f:Lx0/w;

    iget-object v3, p0, Lq0/g;->f:Lw0/j;

    invoke-virtual {v2, v3}, Lx0/w;->a(Lw0/j;)V

    iget-object v2, p0, Lq0/g;->m:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    sget-object v3, Lq0/g;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lq0/g;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "for WorkSpec "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lq0/g;->f:Lw0/j;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lq0/g;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lq0/g;->f:Lw0/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lw0/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lq0/g;->e:I

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Li4/b;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lq0/g;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Lx0/p;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lq0/g;->m:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Acquiring wakelock "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lq0/g;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "for WorkSpec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lq0/g;->p:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lq0/g;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lq0/g;->g:Lq0/i;

    iget-object v1, v1, Lq0/i;->h:Lo0/n;

    iget-object v1, v1, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw0/q;->l(Ljava/lang/String;)Lw0/p;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lq0/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq0/f;-><init>(Lq0/g;I)V

    iget-object p0, p0, Lq0/g;->k:Landroidx/appcompat/app/o;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lw0/p;->c()Z

    move-result v2

    iput-boolean v2, p0, Lq0/g;->n:Z

    if-nez v2, :cond_1

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No constraints for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq0/g;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lq0/g;->h:Ln1/a;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln1/a;->y(Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method public final f(Z)V
    .locals 7

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onExecuted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lq0/g;->f:Lw0/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lq0/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq0/g;->d()V

    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    iget v1, p0, Lq0/g;->e:I

    iget-object v3, p0, Lq0/g;->g:Lq0/i;

    iget-object v4, p0, Lq0/g;->l:LH/o;

    iget-object v5, p0, Lq0/g;->d:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ACTION_SCHEDULE_WORK"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v2}, Lq0/c;->d(Landroid/content/Intent;Lw0/j;)V

    new-instance v2, LK0/a;

    const/4 v6, 0x4

    invoke-direct {v2, v3, p1, v1, v6}, LK0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v4, v2}, LH/o;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p0, p0, Lq0/g;->n:Z

    if-eqz p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, LK0/a;

    const/4 v0, 0x4

    invoke-direct {p1, v3, p0, v1, v0}, LK0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v4, p1}, LH/o;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
