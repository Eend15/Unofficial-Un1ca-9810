.class public final LC4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/o;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LC4/o;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC4/k;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LC4/k;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LI4/o;LE3/a;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LC4/k;->b:I

    const-string v0, "storageManager"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, LC4/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, LC4/g;-><init>(ILjava/lang/Object;)V

    check-cast p1, LI4/l;

    .line 5
    new-instance p2, LI4/i;

    .line 6
    invoke-direct {p2, p1, v0}, LI4/h;-><init>(LI4/l;LE3/a;)V

    .line 7
    iput-object p2, p0, LC4/k;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, LC4/k;->l()LC4/o;

    move-result-object p0

    invoke-interface {p0}, LC4/o;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, LC4/k;->l()LC4/o;

    move-result-object p0

    invoke-interface {p0}, LC4/o;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ls4/f;Lc4/b;)LU3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LC4/k;->l()LC4/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, LC4/q;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object p0

    return-object p0
.end method

.method public d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    iget v0, p0, LC4/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, LC4/k;->k(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LC4/k;->k(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    sget-object p1, LC4/l;->h:LC4/l;

    invoke-static {p0, p1}, Lv4/p;->m(Ljava/util/Collection;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 2

    iget v0, p0, LC4/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, LC4/k;->i(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LC4/k;->i(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LU3/j;

    instance-of v1, v1, LU3/a;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, LC4/l;->f:LC4/l;

    invoke-static {p1, p0}, Lv4/p;->m(Ljava/util/Collection;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, p2}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, LC4/k;->l()LC4/o;

    move-result-object p0

    invoke-interface {p0}, LC4/o;->f()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public g(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    iget v0, p0, LC4/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, LC4/k;->j(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LC4/k;->j(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    sget-object p1, LC4/l;->g:LC4/l;

    invoke-static {p0, p1}, Lv4/p;->m(Ljava/util/Collection;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()LC4/o;
    .locals 1

    invoke-virtual {p0}, LC4/k;->l()LC4/o;

    move-result-object v0

    instance-of v0, v0, LC4/k;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LC4/k;->l()LC4/o;

    move-result-object p0

    check-cast p0, LC4/k;

    invoke-virtual {p0}, LC4/k;->h()LC4/o;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LC4/k;->l()LC4/o;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final i(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LC4/k;->l()LC4/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, LC4/q;->e(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LC4/k;->l()LC4/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final k(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LC4/k;->l()LC4/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final l()LC4/o;
    .locals 1

    iget v0, p0, LC4/k;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LC4/k;->c:Ljava/lang/Object;

    check-cast p0, LC4/o;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LC4/k;->c:Ljava/lang/Object;

    check-cast p0, LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC4/o;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
