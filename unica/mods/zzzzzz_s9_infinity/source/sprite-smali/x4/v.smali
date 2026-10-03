.class public final Lx4/v;
.super Lx4/m;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx4/v;->b:I

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lx4/v;->b:I

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lx4/v;->b:I

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lx4/v;->b:I

    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(LU3/x;)LJ4/C;
    .locals 0

    iget p0, p0, Lx4/v;->b:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "module"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LR3/o;->S:Ls4/b;

    invoke-static {p1, p0}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "Unsigned type UShort not found"

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    :cond_1
    return-object p0

    :pswitch_0
    const-string p0, "module"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LR3/o;->U:Ls4/b;

    invoke-static {p1, p0}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_3

    const-string p0, "Unsigned type ULong not found"

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    :cond_3
    return-object p0

    :pswitch_1
    const-string p0, "module"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LR3/o;->T:Ls4/b;

    invoke-static {p1, p0}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_5

    const-string p0, "Unsigned type UInt not found"

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    :cond_5
    return-object p0

    :pswitch_2
    const-string p0, "module"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LR3/o;->R:Ls4/b;

    invoke-static {p1, p0}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object p0

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_3

    :cond_6
    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    :goto_3
    if-nez p0, :cond_7

    const-string p0, "Unsigned type UByte not found"

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    :cond_7
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lx4/v;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".toUShort()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".toULong()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".toUInt()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".toUByte()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
