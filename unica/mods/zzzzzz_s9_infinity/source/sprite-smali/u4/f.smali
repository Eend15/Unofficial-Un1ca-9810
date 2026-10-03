.class public final Lu4/f;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lu4/g;


# direct methods
.method public synthetic constructor <init>(Lu4/g;I)V
    .locals 0

    iput p2, p0, Lu4/f;->d:I

    iput-object p1, p0, Lu4/f;->e:Lu4/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lu4/f;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LJ4/C;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu4/f;->e:Lu4/g;

    invoke-virtual {p0, p1}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lx4/g;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu4/f;->e:Lu4/g;

    invoke-virtual {p0, p1}, Lu4/g;->A(Lx4/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LJ4/P;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LJ4/P;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "*"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LJ4/P;->b()LJ4/C;

    move-result-object v0

    const-string v1, "it.type"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu4/f;->e:Lu4/g;

    invoke-virtual {p0, v0}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, LJ4/P;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LJ4/P;->a()I

    move-result p1

    invoke-static {p1}, LB/a;->A(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
