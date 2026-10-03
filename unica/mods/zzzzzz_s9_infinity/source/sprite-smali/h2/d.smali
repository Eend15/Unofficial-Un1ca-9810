.class public final Lh2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lh3/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/y;Lh3/b;I)V
    .locals 0

    .line 1
    iput p3, p0, Lh2/d;->a:I

    iput-object p2, p0, Lh2/d;->b:Lh3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh3/b;I)V
    .locals 0

    .line 2
    iput p2, p0, Lh2/d;->a:I

    iput-object p1, p0, Lh2/d;->b:Lh3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lh2/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lh2/d;->b:Lh3/b;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX4/c;

    const-string v0, "mainDispatcher"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LW4/u;->a(Lu3/i;)Lkotlinx/coroutines/internal/c;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lh2/d;->b:Lh3/b;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW4/q;

    const-string v0, "backgroundDispatcher"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LW4/u;->a(Lu3/i;)Lkotlinx/coroutines/internal/c;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lh2/d;->b:Lh3/b;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lr1/a;

    const-string v1, "context"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pref_weather_daemon"

    invoke-direct {v0, p0, v1}, LD4/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lh2/d;->b:Lh3/b;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Li2/b;

    invoke-direct {v0, p0}, Li2/b;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Lh2/d;->b:Lh3/b;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Li2/a;

    invoke-direct {v0, p0}, Li2/a;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_4
    iget-object p0, p0, Lh2/d;->b:Lh3/b;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lh2/c;

    invoke-direct {v0, p0}, Lh2/c;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
