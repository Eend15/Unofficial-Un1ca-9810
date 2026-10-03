.class public abstract La4/v;
.super La4/r;
.source "SourceFile"

# interfaces
.implements La4/f;
.implements La4/y;
.implements Lj4/b;
.implements Lj4/c;


# virtual methods
.method public final a(Ls4/c;)La4/c;
    .locals 0

    invoke-static {p0, p1}, LR3/f;->z(La4/f;Ls4/c;)La4/c;

    move-result-object p0

    return-object p0
.end method

.method public final b()I
    .locals 0

    invoke-virtual {p0}, La4/v;->d()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    return p0
.end method

.method public final c()Ljava/lang/reflect/AnnotatedElement;
    .locals 0

    invoke-virtual {p0}, La4/v;->d()Ljava/lang/reflect/Member;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/AnnotatedElement;

    return-object p0
.end method

.method public abstract d()Ljava/lang/reflect/Member;
.end method

.method public final e()Ls4/f;
    .locals 1

    invoke-virtual {p0}, La4/v;->d()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Ls4/h;->a:Ls4/f;

    const-string v0, "NO_NAME_PROVIDED"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, La4/v;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La4/v;->d()Ljava/lang/reflect/Member;

    move-result-object p0

    check-cast p1, La4/v;

    invoke-virtual {p1}, La4/v;->d()Ljava/lang/reflect/Member;

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

.method public final f([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, La4/v;->d()Ljava/lang/reflect/Member;

    move-result-object v1

    const-string v2, "member"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LR3/f;->a:Lw0/e;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v4, "getParameters"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, La4/b;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v5, "java.lang.reflect.Parameter"

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v5, Lw0/e;

    const-string v6, "getName"

    invoke-virtual {v2, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Lw0/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v5

    goto :goto_0

    :catch_0
    new-instance v2, Lw0/e;

    invoke-direct {v2, v3, v3}, Lw0/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    sput-object v2, LR3/f;->a:Lw0/e;

    :cond_0
    const/4 v4, 0x0

    iget-object v5, v2, Lw0/e;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    :goto_1
    move-object v5, v3

    goto :goto_3

    :cond_1
    iget-object v2, v2, Lw0/e;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    check-cast v1, [Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v1

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v1, v7

    invoke-virtual {v2, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    if-nez v5, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    array-length v2, p1

    sub-int/2addr v1, v2

    :goto_4
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_e

    move v6, v4

    :goto_5
    add-int/lit8 v7, v6, 0x1

    aget-object v8, p1, v6

    const-string v9, "type"

    invoke-static {v8, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v9, v8, Ljava/lang/Class;

    if-eqz v9, :cond_6

    move-object v10, v8

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v8, La4/A;

    invoke-direct {v8, v10}, La4/A;-><init>(Ljava/lang/Class;)V

    goto :goto_8

    :cond_6
    instance-of v10, v8, Ljava/lang/reflect/GenericArrayType;

    if-nez v10, :cond_9

    if-eqz v9, :cond_7

    move-object v9, v8

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_7

    :cond_7
    instance-of v9, v8, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_8

    new-instance v9, La4/E;

    check-cast v8, Ljava/lang/reflect/WildcardType;

    invoke-direct {v9, v8}, La4/E;-><init>(Ljava/lang/reflect/WildcardType;)V

    :goto_6
    move-object v8, v9

    goto :goto_8

    :cond_8
    new-instance v9, La4/p;

    invoke-direct {v9, v8}, La4/p;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_6

    :cond_9
    :goto_7
    new-instance v9, La4/h;

    invoke-direct {v9, v8}, La4/h;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_6

    :goto_8
    if-nez v5, :cond_a

    move-object v9, v3

    goto :goto_9

    :cond_a
    add-int v9, v6, v1

    invoke-static {v9, v5}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_d

    :goto_9
    if-eqz p3, :cond_b

    array-length v10, p1

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v6, v10, :cond_b

    goto :goto_a

    :cond_b
    move v11, v4

    :goto_a
    new-instance v10, La4/D;

    aget-object v6, p2, v6

    invoke-direct {v10, v8, v6, v9, v11}, La4/D;-><init>(La4/B;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v7, v2, :cond_c

    goto :goto_b

    :cond_c
    move v6, v7

    goto :goto_5

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No parameter with index "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (name="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La4/v;->e()Ls4/f;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " type="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") in "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "@ReflectJavaMember"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_b
    return-object v0

    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, La4/v;->d()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final p()Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, LR3/f;->F(La4/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
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

    invoke-virtual {p0}, La4/v;->d()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
