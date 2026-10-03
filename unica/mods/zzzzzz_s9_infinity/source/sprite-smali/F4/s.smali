.class public final LF4/s;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LF4/s;->d:I

    iput-object p1, p0, LF4/s;->e:Ljava/lang/Object;

    iput-object p2, p0, LF4/s;->f:Ljava/lang/Object;

    iput-object p3, p0, LF4/s;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LF4/s;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LF4/s;->g:Ljava/lang/Object;

    check-cast v0, LH4/r;

    iget-object v0, v0, LH4/r;->b:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->p:Lt4/i;

    iget-object v1, p0, LF4/s;->f:Ljava/lang/Object;

    check-cast v1, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, LF4/s;->e:Ljava/lang/Object;

    check-cast p0, Lt4/c;

    invoke-virtual {p0, v1, v0}, Lt4/c;->b(Ljava/io/ByteArrayInputStream;Lt4/i;)Lt4/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LF4/s;->e:Ljava/lang/Object;

    check-cast v0, LF4/u;

    iget-object v1, v0, LF4/u;->a:LF4/k;

    iget-object v1, v1, LF4/k;->c:LU3/j;

    invoke-virtual {v0, v1}, LF4/u;->a(LU3/j;)LF4/x;

    move-result-object v1

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v0, v0, LF4/u;->a:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->e:LF4/b;

    iget-object v2, p0, LF4/s;->g:Ljava/lang/Object;

    check-cast v2, LH4/t;

    invoke-virtual {v2}, LX3/L;->k()LJ4/C;

    move-result-object v2

    const-string v3, "property.returnType"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF4/s;->f:Ljava/lang/Object;

    check-cast p0, Ln4/G;

    invoke-interface {v0, v1, p0, v2}, LF4/b;->k(LF4/x;Ln4/G;LJ4/C;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx4/g;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
