.class public abstract La4/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/d;


# virtual methods
.method public a(Ls4/c;)La4/c;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lj4/b;->p()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, La4/c;

    iget-object v1, v1, La4/c;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v1}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v1

    invoke-static {v1}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v1

    invoke-virtual {v1}, Ls4/b;->b()Ls4/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, La4/c;

    return-object v0
.end method

.method public abstract d()Ljava/lang/reflect/Type;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, La4/B;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La4/B;->d()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p1, La4/B;

    invoke-virtual {p1}, La4/B;->d()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, La4/B;->d()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La4/B;->d()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
