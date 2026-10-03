.class public final LF4/q;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LF4/u;

.field public final synthetic f:Lt4/m;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(LF4/u;Lt4/m;II)V
    .locals 0

    iput p4, p0, LF4/q;->d:I

    iput-object p1, p0, LF4/q;->e:LF4/u;

    iput-object p2, p0, LF4/q;->f:Lt4/m;

    iput p3, p0, LF4/q;->g:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LF4/q;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LF4/q;->e:LF4/u;

    iget-object v1, v0, LF4/u;->a:LF4/k;

    iget-object v1, v1, LF4/k;->c:LU3/j;

    invoke-virtual {v0, v1}, LF4/u;->a(LU3/j;)LF4/x;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, LF4/u;->a:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->e:LF4/b;

    iget-object v2, p0, LF4/q;->f:Lt4/m;

    iget p0, p0, LF4/q;->g:I

    invoke-interface {v0, v1, v2, p0}, LF4/b;->c(LF4/x;Lt4/m;I)Ljava/util/List;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lr3/r;->d:Lr3/r;

    :goto_1
    return-object p0

    :pswitch_0
    iget-object v0, p0, LF4/q;->e:LF4/u;

    iget-object v1, v0, LF4/u;->a:LF4/k;

    iget-object v1, v1, LF4/k;->c:LU3/j;

    invoke-virtual {v0, v1}, LF4/u;->a(LU3/j;)LF4/x;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, v0, LF4/u;->a:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->e:LF4/b;

    iget-object v2, p0, LF4/q;->f:Lt4/m;

    iget p0, p0, LF4/q;->g:I

    invoke-interface {v0, v1, v2, p0}, LF4/b;->g(LF4/x;Lt4/m;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    sget-object p0, Lr3/r;->d:Lr3/r;

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
