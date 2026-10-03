.class public final LH/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, LH/a;->d:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/a;->f:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LH/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, LH/a;->d:I

    iput-object p1, p0, LH/a;->e:Ljava/lang/Object;

    iput-object p3, p0, LH/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 2
    iput p3, p0, LH/a;->d:I

    iput-object p1, p0, LH/a;->f:Ljava/lang/Object;

    iput-object p2, p0, LH/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, LH/a;->d:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/o;

    iget-object v0, v0, Landroidx/appcompat/app/o;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/o;

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    iget-object v1, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/o;

    iget-object v1, v1, Landroidx/appcompat/app/o;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object p0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/o;

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->a()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :pswitch_0
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, Lv0/a;

    iget-object v0, v0, Lv0/a;->d:Lo0/n;

    iget-object v0, v0, Lo0/n;->i:Lo0/e;

    iget-object v1, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lo0/e;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v3, v0, Lo0/e;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/r;

    if-nez v3, :cond_0

    iget-object v0, v0, Lo0/e;->j:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo0/r;

    goto :goto_0

    :catchall_3
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    iget-object v0, v3, Lo0/r;->g:Lw0/p;

    monitor-exit v2

    goto :goto_1

    :cond_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lw0/p;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v1, Lv0/a;

    iget-object v1, v1, Lv0/a;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v2, Lv0/a;

    iget-object v2, v2, Lv0/a;->i:Ljava/util/HashMap;

    invoke-static {v0}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v2, Lv0/a;

    iget-object v2, v2, Lv0/a;->j:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast p0, Lv0/a;

    iget-object v0, p0, Lv0/a;->k:Ln1/a;

    iget-object p0, p0, Lv0/a;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ln1/a;->y(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_2

    :catchall_4
    move-exception p0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p0

    :cond_2
    :goto_2
    return-void

    :goto_3
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :pswitch_1
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    sget-object v1, Lp0/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling work "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v3, Lw0/p;

    iget-object v4, v3, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast p0, Lp0/a;

    iget-object p0, p0, Lp0/a;->a:Lp0/b;

    filled-new-array {v3}, [Lw0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp0/b;->e([Lw0/p;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast p0, Lo0/r;

    :try_start_7
    iget-object v1, p0, Lo0/r;->s:Ly0/k;

    invoke-virtual {v1}, Ly0/i;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/m;

    if-nez v1, :cond_3

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lo0/r;->u:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lo0/r;->g:Lw0/p;

    iget-object v4, v4, Lw0/p;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " returned a null result. Treating it as a failure."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln0/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_5
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_6

    :cond_3
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    sget-object v3, Lo0/r;->u:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lo0/r;->g:Lw0/p;

    iget-object v5, v5, Lw0/p;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " returned a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lo0/r;->j:Ln0/m;
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lo0/r;->b()V

    goto :goto_7

    :goto_5
    :try_start_8
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    sget-object v3, Lo0/r;->u:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed because it threw an exception/error"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_6
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    sget-object v3, Lo0/r;->u:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was cancelled"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, v2, Ln0/o;->a:I

    const/4 v4, 0x4

    if-gt v2, v4, :cond_4

    invoke-static {v3, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :goto_7
    return-void

    :goto_8
    invoke-virtual {p0}, Lo0/r;->b()V

    throw v0

    :pswitch_3
    const-string v0, "Starting work for "

    iget-object v1, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v1, Lo0/r;

    iget-object v1, v1, Lo0/r;->s:Ly0/k;

    iget-object v1, v1, Ly0/i;->a:Ljava/lang/Object;

    instance-of v1, v1, Ly0/a;

    if-eqz v1, :cond_5

    goto :goto_9

    :cond_5
    :try_start_9
    iget-object v1, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v1, Ly0/k;

    invoke-virtual {v1}, Ly0/i;->get()Ljava/lang/Object;

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lo0/r;->u:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, Lo0/r;

    iget-object v0, v0, Lo0/r;->g:Lw0/p;

    iget-object v0, v0, Lw0/p;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, Lo0/r;

    iget-object v1, v0, Lo0/r;->s:Ly0/k;

    iget-object v0, v0, Lo0/r;->h:Ln0/n;

    invoke-virtual {v0}, Ln0/n;->d()Ly0/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Ly0/k;->l(LZ0/a;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    iget-object p0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast p0, Lo0/r;

    iget-object p0, p0, Lo0/r;->s:Ly0/k;

    invoke-virtual {p0, v0}, Ly0/k;->k(Ljava/lang/Throwable;)Z

    :goto_9
    return-void

    :pswitch_4
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/d;

    iget-object v0, v0, Lcom/google/android/material/textfield/d;->b:Lcom/google/android/material/textfield/p;

    check-cast v0, Lcom/google/android/material/textfield/u;

    iget-object v0, v0, Lcom/google/android/material/textfield/u;->e:Lcom/google/android/material/textfield/k;

    iget-object p0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/d;

    iget-object v0, v0, Lcom/google/android/material/textfield/d;->b:Lcom/google/android/material/textfield/p;

    check-cast v0, Lcom/google/android/material/textfield/o;

    iget-object v0, v0, Lcom/google/android/material/textfield/o;->e:Lcom/google/android/material/textfield/k;

    iget-object p0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast p0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iget-object p0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/k;

    iget-object v1, p0, Lcom/google/android/material/textfield/k;->e:Lcom/google/android/material/textfield/p;

    check-cast v1, Lcom/google/android/material/textfield/o;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/o;->i(Z)V

    iget-object p0, p0, Lcom/google/android/material/textfield/k;->e:Lcom/google/android/material/textfield/p;

    check-cast p0, Lcom/google/android/material/textfield/o;

    iput-boolean v0, p0, Lcom/google/android/material/textfield/o;->l:Z

    return-void

    :pswitch_7
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/d;

    iget-object v1, v0, Lcom/google/android/material/textfield/d;->b:Lcom/google/android/material/textfield/p;

    check-cast v1, Lcom/google/android/material/textfield/g;

    iget-object v1, v1, Lcom/google/android/material/textfield/g;->e:Lcom/google/android/material/textfield/a;

    iget-object p0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p0, 0x1

    iget-object v0, v0, Lcom/google/android/material/textfield/d;->b:Lcom/google/android/material/textfield/p;

    check-cast v0, Lcom/google/android/material/textfield/g;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/g;->e(Z)V

    return-void

    :pswitch_8
    iget-object v0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v0, LW4/e;

    iget-object p0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast p0, LX4/c;

    invoke-virtual {v0, p0}, LW4/e;->r(LW4/q;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LM/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, LM/d;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :pswitch_a
    iget-object v0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v0, LH/h;

    iget-object p0, p0, LH/a;->f:Ljava/lang/Object;

    invoke-virtual {v0, p0}, LH/h;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_b
    iget-object v0, p0, LH/a;->e:Ljava/lang/Object;

    check-cast v0, LA1/e;

    iget-object v0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, LB/c;

    if-eqz v0, :cond_7

    iget-object p0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, LB/c;->e(Landroid/graphics/Typeface;)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
