.class public final synthetic Lq0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lq0/g;


# direct methods
.method public synthetic constructor <init>(Lq0/g;I)V
    .locals 0

    iput p2, p0, Lq0/f;->d:I

    iput-object p1, p0, Lq0/f;->e:Lq0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lq0/f;->d:I

    iget-object p0, p0, Lq0/f;->e:Lq0/g;

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lq0/g;->j:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lq0/g;->j:I

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    sget-object v1, Lq0/g;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAllConstraintsMet for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lq0/g;->f:Lw0/j;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq0/g;->g:Lq0/i;

    iget-object v0, v0, Lq0/i;->g:Lo0/e;

    iget-object v1, p0, Lq0/g;->o:Lo0/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo0/e;->f(Lo0/i;LG4/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq0/g;->g:Lq0/i;

    iget-object v0, v0, Lq0/i;->f:Lx0/w;

    iget-object v1, p0, Lq0/g;->f:Lw0/j;

    const-string v2, "Starting timer for "

    iget-object v3, v0, Lx0/w;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v4

    sget-object v5, Lx0/w;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lx0/w;->a(Lw0/j;)V

    new-instance v2, Lx0/v;

    invoke-direct {v2, v0, v1}, Lx0/v;-><init>(Lx0/w;Lw0/j;)V

    iget-object v4, v0, Lx0/w;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lx0/w;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lx0/w;->a:Landroidx/recyclerview/widget/y;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {p0}, Lq0/g;->d()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    sget-object v1, Lq0/g;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already started work for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lq0/g;->f:Lw0/j;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0}, Lq0/g;->c(Lq0/g;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
