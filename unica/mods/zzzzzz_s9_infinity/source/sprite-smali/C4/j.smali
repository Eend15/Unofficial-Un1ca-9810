.class public final LC4/j;
.super LC4/p;
.source "SourceFile"


# instance fields
.field public final b:LC4/o;


# direct methods
.method public constructor <init>(LC4/o;)V
    .locals 1

    const-string v0, "workerScope"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC4/j;->b:LC4/o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LC4/j;->b:LC4/o;

    invoke-interface {p0}, LC4/o;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LC4/j;->b:LC4/o;

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

    iget-object p0, p0, LC4/j;->b:LC4/o;

    invoke-interface {p0, p1, p2}, LC4/q;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of p2, p0, LU3/e;

    if-eqz p2, :cond_1

    move-object p2, p0

    check-cast p2, LU3/e;

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    if-nez p2, :cond_2

    instance-of p2, p0, LH4/v;

    if-eqz p2, :cond_3

    move-object p1, p0

    check-cast p1, LH4/v;

    goto :goto_1

    :cond_2
    move-object p1, p2

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 2

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LC4/f;->l:I

    iget v1, p1, LC4/f;->b:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, LC4/f;

    iget-object p1, p1, LC4/f;->a:Ljava/util/List;

    invoke-direct {v1, v0, p1}, LC4/f;-><init>(ILjava/util/List;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    sget-object p0, Lr3/r;->d:Lr3/r;

    goto :goto_2

    :cond_1
    iget-object p0, p0, LC4/j;->b:LC4/o;

    invoke-interface {p0, p1, p2}, LC4/q;->e(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, LU3/h;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public final f()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LC4/j;->b:LC4/o;

    invoke-interface {p0}, LC4/o;->f()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Classes from "

    iget-object p0, p0, LC4/j;->b:LC4/o;

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
