.class public final LX3/Q;
.super LC4/p;
.source "SourceFile"


# instance fields
.field public final b:LU3/x;

.field public final c:Ls4/c;


# direct methods
.method public constructor <init>(LU3/x;Ls4/c;)V
    .locals 1

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX3/Q;->b:LU3/x;

    iput-object p2, p0, LX3/Q;->c:Ls4/c;

    return-void
.end method


# virtual methods
.method public final e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 7

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LC4/f;->h:I

    invoke-virtual {p1, v0}, LC4/f;->a(I)Z

    move-result v0

    sget-object v1, Lr3/r;->d:Lr3/r;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, LX3/Q;->c:Ls4/c;

    invoke-virtual {v0}, Ls4/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, LC4/c;->a:LC4/c;

    iget-object p1, p1, LC4/f;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, LX3/Q;->b:LU3/x;

    invoke-interface {p0, v0, p2}, LU3/x;->d(Ls4/c;LE3/b;)Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls4/c;

    invoke-virtual {v2}, Ls4/c;->f()Ls4/f;

    move-result-object v2

    const-string v3, "subFqName.shortName()"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v2}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Ls4/f;->e:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v2

    invoke-interface {p0, v2}, LU3/x;->v(Ls4/c;)LU3/G;

    move-result-object v2

    check-cast v2, LX3/z;

    iget-object v3, v2, LX3/z;->i:LI4/i;

    sget-object v5, LX3/z;->k:[LL3/l;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v3, v5}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    invoke-static {v1, v4}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public final f()Ljava/util/Set;
    .locals 0

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subpackages of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LX3/Q;->c:Ls4/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LX3/Q;->b:LU3/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
