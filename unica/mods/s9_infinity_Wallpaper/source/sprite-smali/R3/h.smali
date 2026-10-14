.class public final LR3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LR3/h;->d:I

    iput-object p2, p0, LR3/h;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LR3/h;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LU3/b;

    invoke-interface {p1}, LU3/v;->b()LU3/n;

    move-result-object v0

    invoke-static {v0}, LU3/o;->e(LU3/n;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, LR3/h;->e:Ljava/lang/Object;

    check-cast p0, LU3/e;

    if-eqz p0, :cond_0

    sget-object v0, LU3/o;->l:LU3/M;

    invoke-static {v0, p1, p0}, LU3/o;->c(LU3/M;LU3/b;LU3/j;)LU3/m;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, LU3/o;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LU3/b;

    if-eqz p1, :cond_2

    iget-object p0, p0, LR3/h;->e:Ljava/lang/Object;

    check-cast p0, Le4/a;

    iget-object p0, p0, Le4/a;->b:LF4/n;

    invoke-interface {p0, p1}, LF4/n;->c(LU3/b;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument for @NotNull parameter \'descriptor\' of kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1.invoke must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    check-cast p1, LK4/g;

    iget-object p0, p0, LR3/h;->e:Ljava/lang/Object;

    check-cast p0, LX3/a;

    iget-object v0, p0, LX3/a;->e:LX3/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "descriptor"

    invoke-static {v0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LX3/a;->e:LX3/b;

    iget-object p0, p0, LX3/b;->e:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/G;

    return-object p0

    :pswitch_2
    check-cast p1, Ls4/f;

    iget-object p0, p0, LR3/h;->e:Ljava/lang/Object;

    check-cast p0, LR3/j;

    invoke-virtual {p0}, LR3/j;->k()LX3/D;

    move-result-object p0

    sget-object v0, LR3/p;->j:Ls4/c;

    invoke-virtual {p0, v0}, LX3/D;->v(Ls4/c;)LU3/G;

    move-result-object p0

    check-cast p0, LX3/z;

    iget-object p0, p0, LX3/z;->j:LC4/k;

    if-eqz p0, :cond_5

    sget-object v1, Lc4/b;->d:Lc4/b;

    invoke-virtual {p0, p1, v1}, LC4/k;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object p0

    if-eqz p0, :cond_4

    instance-of v0, p0, LU3/e;

    if-eqz v0, :cond_3

    check-cast p0, LU3/e;

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Must be a class descriptor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Built-in class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_5
    const/16 p0, 0xb

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
