.class public final LV3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/h;


# instance fields
.field public final synthetic d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    iput p1, p0, LV3/i;->d:I

    iput-object p2, p0, LV3/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ls4/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LV3/i;->d:I

    const-string v0, "fqNameToMatch"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV3/i;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([LV3/h;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LV3/i;->d:I

    .line 2
    invoke-static {p1}, Lr3/h;->u0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LV3/i;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ls4/c;)LV3/b;
    .locals 2

    iget v0, p0, LV3/i;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LV3/i;->e:Ljava/lang/Object;

    check-cast p0, Ls4/c;

    invoke-virtual {p1, p0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lk4/a;->a:Lk4/a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LV3/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object p0

    new-instance v0, LU3/D;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LU3/D;-><init>(Ls4/c;I)V

    invoke-static {p0, v0}, LU4/j;->g0(LU4/i;LE3/b;)LU4/f;

    move-result-object p0

    new-instance p1, LB3/f;

    invoke-direct {p1, p0}, LB3/f;-><init>(LU4/f;)V

    invoke-virtual {p1}, LB3/f;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, LB3/f;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, LV3/b;

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, LR3/f;->y(LV3/h;Ls4/c;)LV3/b;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ls4/c;)Z
    .locals 1

    iget v0, p0, LV3/i;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, LR3/f;->O(LV3/h;Ls4/c;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LV3/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object p0

    iget-object p0, p0, LU4/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV3/h;

    invoke-interface {v0, p1}, LV3/h;->e(Ls4/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_1
    invoke-static {p0, p1}, LR3/f;->O(LV3/h;Ls4/c;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, LV3/i;->d:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 v0, 0x1

    iget-object p0, p0, LV3/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV3/h;

    invoke-interface {v1}, LV3/h;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0

    :pswitch_1
    iget-object p0, p0, LV3/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget v0, p0, LV3/i;->d:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lr3/q;->d:Lr3/q;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LV3/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object p0

    sget-object v0, LV3/k;->d:LV3/k;

    new-instance v1, LU4/g;

    sget-object v2, LU4/o;->l:LU4/o;

    invoke-direct {v1, p0, v0, v2}, LU4/g;-><init>(LU4/i;LE3/b;LE3/b;)V

    new-instance p0, LB3/f;

    invoke-direct {p0, v1}, LB3/f;-><init>(LU4/g;)V

    return-object p0

    :pswitch_1
    iget-object p0, p0, LV3/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LV3/i;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LV3/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
