.class public final LI2/d;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:LI2/e;

.field public final synthetic e:LI2/c;


# direct methods
.method public constructor <init>(LI2/e;LI2/c;Lu3/d;)V
    .locals 0

    iput-object p1, p0, LI2/d;->d:LI2/e;

    iput-object p2, p0, LI2/d;->e:LI2/c;

    invoke-direct {p0, p3}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 1

    new-instance p1, LI2/d;

    iget-object v0, p0, LI2/d;->d:LI2/e;

    iget-object p0, p0, LI2/d;->e:LI2/c;

    invoke-direct {p1, v0, p0, p2}, LI2/d;-><init>(LI2/e;LI2/c;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, LI2/d;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, LI2/d;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, LI2/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lp4/g;->z()V

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    const-string p1, "debug.ai.monitor"

    const-string v0, "0"

    invoke-static {p1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, LI2/d;->e:LI2/c;

    const-string v2, "content://com.sec.salab.voyager.provider/ai"

    const-string v3, "content://issuetracker_provider/ai"

    iget-object p0, p0, LI2/d;->d:LI2/e;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LI2/e;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1, v3, v1}, LI2/e;->b(LI2/e;Landroid/content/Context;Ljava/lang/String;LI2/c;)V

    invoke-virtual {p0}, LI2/e;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1, v2, v1}, LI2/e;->b(LI2/e;Landroid/content/Context;Ljava/lang/String;LI2/c;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LI2/e;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1, v2, v1}, LI2/e;->b(LI2/e;Landroid/content/Context;Ljava/lang/String;LI2/c;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LI2/e;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1, v3, v1}, LI2/e;->b(LI2/e;Landroid/content/Context;Ljava/lang/String;LI2/c;)V

    :goto_0
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
