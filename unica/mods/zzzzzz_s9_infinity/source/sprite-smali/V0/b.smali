.class public final LV0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LV0/b;->a:I

    iput-object p2, p0, LV0/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p0, LV0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, LV0/b;->b:Ljava/lang/Object;

    check-cast p0, LF4/F;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, LF4/F;->f:Ljava/lang/Object;

    check-cast v0, Lo1/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lo1/d;->a()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Consumer;

    if-eqz p1, :cond_6

    iget-object p0, p0, LF4/F;->f:Ljava/lang/Object;

    check-cast p0, Lo1/d;

    iget-object v0, p0, Lo1/d;->c:LQ1/i;

    iget-object p0, p0, Lo1/d;->b:Ljava/util/Calendar;

    invoke-virtual {v0, p0}, LQ1/i;->c(Ljava/util/Calendar;)Lo1/a;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    iget-object p0, p0, LF4/F;->f:Ljava/lang/Object;

    check-cast p0, Lo1/d;

    if-eqz p0, :cond_6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lo1/d;->b:Ljava/util/Calendar;

    iget-object p0, p0, Lo1/d;->c:LQ1/i;

    invoke-virtual {p0}, LQ1/i;->e()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, LF4/F;->f:Ljava/lang/Object;

    check-cast p1, Lo1/d;

    if-eqz p1, :cond_6

    iget-object v0, p1, Lo1/d;->c:LQ1/i;

    invoke-virtual {v0}, LQ1/i;->e()V

    invoke-virtual {p1}, Lo1/d;->a()V

    iget-object p1, p0, LF4/F;->d:Ljava/lang/Object;

    check-cast p1, Lo1/b;

    if-eqz p1, :cond_6

    iget-object p0, p0, LF4/F;->f:Ljava/lang/Object;

    check-cast p0, Lo1/d;

    iget-object v0, p0, Lo1/d;->c:LQ1/i;

    iget-object p0, p0, Lo1/d;->b:Ljava/util/Calendar;

    invoke-virtual {v0, p0}, LQ1/i;->c(Ljava/util/Calendar;)Lo1/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo1/b;->a(Lo1/a;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, LF4/F;->f:Ljava/lang/Object;

    check-cast v0, Lo1/d;

    if-eqz v0, :cond_6

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_5

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "time-zone"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, v0, Lo1/d;->b:Ljava/util/Calendar;

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, v0, Lo1/d;->b:Ljava/util/Calendar;

    :cond_5
    :goto_0
    invoke-virtual {v0}, Lo1/d;->a()V

    iget-object p1, p0, LF4/F;->d:Ljava/lang/Object;

    check-cast p1, Lo1/b;

    if-eqz p1, :cond_6

    iget-object p0, p0, LF4/F;->f:Ljava/lang/Object;

    check-cast p0, Lo1/d;

    iget-object v0, p0, Lo1/d;->c:LQ1/i;

    iget-object p0, p0, Lo1/d;->b:Ljava/util/Calendar;

    invoke-virtual {v0, p0}, LQ1/i;->c(Ljava/util/Calendar;)Lo1/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo1/b;->a(Lo1/a;)V

    :cond_6
    :goto_1
    return v1

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    iget-object p0, p0, LV0/b;->b:Ljava/lang/Object;

    check-cast p0, LV0/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_8

    iget-object p0, p0, LV0/c;->a:Ljava/lang/Object;

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
