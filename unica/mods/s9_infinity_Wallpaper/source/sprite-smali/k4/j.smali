.class public final Lk4/j;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lk4/j;->d:I

    iput-object p1, p0, Lk4/j;->e:Ljava/lang/String;

    iput-object p2, p0, Lk4/j;->f:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lk4/j;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->a:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    iget-object v1, p0, Lk4/j;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    sget-object v1, Lk4/k;->c:Lk4/e;

    filled-new-array {v0, v1}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, Lk4/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_0
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->c:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object v2, p0, Lk4/j;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object v1, Lk4/k;->b:Lk4/e;

    filled-new-array {v1, v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, Lk4/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_1
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object v2, p0, Lk4/j;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object v1, Lk4/k;->c:Lk4/e;

    filled-new-array {v1}, [Lk4/e;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object v3, Lk4/k;->a:Lk4/e;

    filled-new-array {v0, v1, v1, v3}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, Lk4/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v3}, [Lk4/e;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_2
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object v2, p0, Lk4/j;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object v1, Lk4/k;->c:Lk4/e;

    sget-object v3, Lk4/k;->a:Lk4/e;

    filled-new-array {v0, v0, v1, v3}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, Lk4/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v3}, [Lk4/e;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_3
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object v2, p0, Lk4/j;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0, v0, v0}, [Lk4/e;

    move-result-object v1

    iget-object p0, p0, Lk4/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0}, [Lk4/e;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_4
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object v2, p0, Lk4/j;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object v1, Lk4/k;->a:Lk4/e;

    filled-new-array {v0, v0, v1, v1}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, Lk4/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v1}, [Lk4/e;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
