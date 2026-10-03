.class public final Lv0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/b;
.implements Lo0/c;


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public final d:Lo0/n;

.field public final e:Ln1/a;

.field public final f:Ljava/lang/Object;

.field public g:Lw0/j;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashSet;

.field public final k:Ln1/a;

.field public l:Landroidx/work/impl/foreground/SystemForegroundService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lv0/a;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv0/a;->f:Ljava/lang/Object;

    invoke-static {p1}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object p1

    iput-object p1, p0, Lv0/a;->d:Lo0/n;

    iget-object v0, p1, Lo0/n;->g:Ln1/a;

    iput-object v0, p0, Lv0/a;->e:Ln1/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lv0/a;->g:Lw0/j;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lv0/a;->h:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lv0/a;->j:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv0/a;->i:Ljava/util/HashMap;

    new-instance v0, Ln1/a;

    iget-object v1, p1, Lo0/n;->m:Lw0/i;

    invoke-direct {v0, v1, p0}, Ln1/a;-><init>(Lw0/i;Ls0/b;)V

    iput-object v0, p0, Lv0/a;->k:Ln1/a;

    iget-object p1, p1, Lo0/n;->i:Lo0/e;

    invoke-virtual {p1, p0}, Lo0/e;->a(Lo0/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/p;

    iget-object v1, v0, Lw0/p;->a:Ljava/lang/String;

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    const-string v3, "Constraints unmet for WorkSpec "

    invoke-static {v3, v1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lv0/a;->m:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v0

    iget-object v1, p0, Lv0/a;->d:Lo0/n;

    iget-object v2, v1, Lo0/n;->g:Ln1/a;

    new-instance v3, Lx0/n;

    new-instance v4, Lo0/i;

    invoke-direct {v4, v0}, Lo0/i;-><init>(Lw0/j;)V

    const/4 v0, 0x1

    invoke-direct {v3, v1, v4, v0}, Lx0/n;-><init>(Lo0/n;Lo0/i;Z)V

    invoke-virtual {v2, v3}, Ln1/a;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lw0/j;Z)V
    .locals 7

    iget-object p2, p0, Lv0/a;->f:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lv0/a;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lv0/a;->j:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lv0/a;->k:Ln1/a;

    iget-object v1, p0, Lv0/a;->j:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ln1/a;->y(Ljava/util/Collection;)V

    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lv0/a;->h:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln0/h;

    iget-object v0, p0, Lv0/a;->g:Lw0/j;

    invoke-virtual {p1, v0}, Lw0/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv0/a;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lv0/a;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/j;

    iput-object v0, p0, Lv0/a;->g:Lw0/j;

    iget-object v0, p0, Lv0/a;->l:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/h;

    iget-object v1, p0, Lv0/a;->l:Landroidx/work/impl/foreground/SystemForegroundService;

    iget v2, v0, Ln0/h;->a:I

    iget v3, v0, Ln0/h;->b:I

    iget-object v4, v0, Ln0/h;->c:Landroid/app/Notification;

    iget-object v5, v1, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v6, Lv0/b;

    invoke-direct {v6, v1, v2, v4, v3}, Lv0/b;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lv0/a;->l:Landroidx/work/impl/foreground/SystemForegroundService;

    iget v0, v0, Ln0/h;->a:I

    iget-object v2, v1, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v3, LH/b;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v1}, LH/b;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p0, p0, Lv0/a;->l:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz p2, :cond_4

    if-eqz p0, :cond_4

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    sget-object v1, Lv0/a;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing Notification (id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Ln0/h;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", workSpecId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notificationType: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Ln0/h;->b:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p2, Ln0/h;->a:I

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v0, LH/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, p0}, LH/b;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_GENERATION"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lw0/j;

    invoke-direct {v5, v3, v4}, Lw0/j;-><init>(Ljava/lang/String;I)V

    const-string v4, "KEY_NOTIFICATION"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Notifying with (id:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", workSpecId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notificationType :"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-static {v6, v2, v3}, Li4/b;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lv0/a;->m:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v3, p0, Lv0/a;->l:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz v3, :cond_2

    new-instance v3, Ln0/h;

    invoke-direct {v3, v0, p1, v2}, Ln0/h;-><init>(ILandroid/app/Notification;I)V

    iget-object v4, p0, Lv0/a;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lv0/a;->g:Lw0/j;

    if-nez v3, :cond_0

    iput-object v5, p0, Lv0/a;->g:Lw0/j;

    iget-object p0, p0, Lv0/a;->l:Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v3, Lv0/b;

    invoke-direct {v3, p0, v0, p1, v2}, Lv0/b;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lv0/a;->l:Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v5, v3, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v6, LK0/a;

    const/4 v7, 0x5

    invoke-direct {v6, v3, v0, p1, v7}, LK0/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/h;

    iget v0, v0, Ln0/h;->b:I

    or-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lv0/a;->g:Lw0/j;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/h;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lv0/a;->l:Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v0, p1, Ln0/h;->c:Landroid/app/Notification;

    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v3, Lv0/b;

    iget p1, p1, Ln0/h;->a:I

    invoke-direct {v3, p0, p1, v0, v1}, Lv0/b;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lv0/a;->l:Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v0, p0, Lv0/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv0/a;->k:Ln1/a;

    invoke-virtual {v1}, Ln1/a;->z()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lv0/a;->d:Lo0/n;

    iget-object v0, v0, Lo0/n;->i:Lo0/e;

    invoke-virtual {v0, p0}, Lo0/e;->e(Lo0/c;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
