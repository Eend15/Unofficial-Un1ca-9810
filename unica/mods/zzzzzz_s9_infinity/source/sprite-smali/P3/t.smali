.class public final LP3/t;
.super LP3/p;
.source "SourceFile"


# instance fields
.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 1

    iput p2, p0, LP3/t;->g:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "method"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, LP3/p;-><init>(Ljava/lang/reflect/Method;ZI)V

    return-void

    :pswitch_0
    const-string p2, "method"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, LP3/p;-><init>(Ljava/lang/reflect/Method;ZI)V

    return-void

    :pswitch_1
    const-string p2, "method"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, LP3/p;-><init>(Ljava/lang/reflect/Method;ZI)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final m([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LP3/t;->g:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, LK/I;->h(LP3/f;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LP3/p;->c([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, LK/I;->h(LP3/f;[Ljava/lang/Object;)V

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    aget-object v0, p1, v1

    :goto_0
    invoke-virtual {p0, v0}, LP3/u;->b(Ljava/lang/Object;)V

    array-length v0, p1

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    goto :goto_1

    :cond_1
    array-length v0, p1

    invoke-static {p1, v3, v0}, Lr3/h;->i0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1, v2}, LP3/p;->c([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, LK/I;->h(LP3/f;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v2, p1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    goto :goto_2

    :cond_2
    array-length v0, p1

    invoke-static {p1, v3, v0}, Lr3/h;->i0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1, v1}, LP3/p;->c([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
