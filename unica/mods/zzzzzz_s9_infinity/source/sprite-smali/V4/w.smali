.class public final LV4/w;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, LV4/w;->d:I

    iput-object p1, p0, LV4/w;->e:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LV4/w;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, LA4/c;->h:LA4/c;

    invoke-virtual {p1, p0}, Lk4/r;->b(LA4/c;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_0
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, LA4/c;->h:LA4/c;

    invoke-virtual {p1, p0}, Lk4/r;->b(LA4/c;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_1
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->a:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_2
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    sget-object v1, Lk4/k;->c:Lk4/e;

    filled-new-array {v0, v1}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_3
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->c:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_4
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    sget-object v1, Lk4/k;->c:Lk4/e;

    filled-new-array {v0, v1}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_5
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0, v0, v0, v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_6
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, LA4/c;->h:LA4/c;

    invoke-virtual {p1, p0}, Lk4/r;->b(LA4/c;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_7
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object v0, Lk4/k;->a:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_8
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object v0, Lk4/k;->a:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_9
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0, v0, v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_a
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0, v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_b
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0, v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_c
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0, v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_d
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0, v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, LA4/c;->h:LA4/c;

    invoke-virtual {p1, p0}, Lk4/r;->b(LA4/c;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_e
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_f
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_10
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_11
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v1

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_12
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_13
    check-cast p1, Lk4/r;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0, v0}, [Lk4/e;

    move-result-object v0

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lk4/r;->a(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_14
    check-cast p1, LK3/c;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LV4/w;->e:Ljava/lang/String;

    invoke-static {p0, p1}, LV4/m;->H0(Ljava/lang/CharSequence;LK3/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
