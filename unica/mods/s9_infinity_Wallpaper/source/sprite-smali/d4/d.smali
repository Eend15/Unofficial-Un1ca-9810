.class public final Ld4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld4/t;

.field public final b:LI4/j;


# direct methods
.method public constructor <init>(LI4/l;Ld4/t;)V
    .locals 2

    const-string v0, "javaTypeEnhancementState"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld4/d;->a:Ld4/t;

    new-instance p2, LH4/k;

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, p0}, LH4/k;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, p2}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p1

    iput-object p1, p0, Ld4/d;->b:LI4/j;

    return-void
.end method

.method public static a(Lx4/g;LE3/c;)Ljava/util/List;
    .locals 5

    instance-of v0, p0, Lx4/b;

    if-eqz v0, :cond_0

    check-cast p0, Lx4/b;

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx4/g;

    invoke-static {v1, p1}, Ld4/d;->a(Lx4/g;LE3/c;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lx4/h;

    if-eqz v0, :cond_3

    invoke-static {}, Ld4/a;->values()[Ld4/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {p1, p0, v3}, LE3/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lr3/k;->e0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget-object v0, Lr3/r;->d:Lr3/r;

    :cond_4
    :goto_3
    return-object v0
.end method


# virtual methods
.method public final b(LV3/b;)Ld4/B;
    .locals 1

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ld4/d;->c(LV3/b;)Ld4/B;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Ld4/d;->a:Ld4/t;

    iget-object p0, p0, Ld4/t;->a:Ld4/v;

    iget-object p0, p0, Ld4/v;->a:Ld4/B;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final c(LV3/b;)Ld4/B;
    .locals 2

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ld4/d;->a:Ld4/t;

    iget-object v0, p0, Ld4/t;->a:Ld4/v;

    iget-object v0, v0, Ld4/v;->c:Ljava/util/Map;

    invoke-interface {p1}, LV3/b;->a()Ls4/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld4/B;

    if-nez v0, :cond_b

    invoke-static {p1}, Lz4/e;->d(LV3/b;)LU3/e;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, LV3/a;->p()LV3/h;

    move-result-object p1

    sget-object v1, Ld4/b;->d:Ls4/c;

    invoke-interface {p1, v1}, LV3/h;->a(Ls4/c;)LV3/b;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, LV3/b;->b()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lr3/j;->u0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx4/g;

    :goto_0
    instance-of v1, p1, Lx4/h;

    if-eqz v1, :cond_2

    check-cast p1, Lx4/h;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Ld4/t;->a:Ld4/v;

    iget-object p0, p0, Ld4/v;->b:Ld4/B;

    if-nez p0, :cond_a

    iget-object p0, p1, Lx4/h;->c:Ls4/f;

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v1, -0x7f610e2e

    if-eq p1, v1, :cond_8

    const v1, -0x6d97ad37

    if-eq p1, v1, :cond_6

    const v1, 0x288a86

    if-eq p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "WARN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Ld4/B;->e:Ld4/B;

    goto :goto_2

    :cond_6
    const-string p1, "STRICT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    sget-object v0, Ld4/B;->f:Ld4/B;

    goto :goto_2

    :cond_8
    const-string p1, "IGNORE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    sget-object v0, Ld4/B;->d:Ld4/B;

    goto :goto_2

    :cond_a
    move-object v0, p0

    :cond_b
    :goto_2
    return-object v0
.end method

.method public final d(LV3/b;)LV3/b;
    .locals 4

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld4/d;->a:Ld4/t;

    iget-object v0, v0, Ld4/t;->a:Ld4/v;

    iget-boolean v0, v0, Ld4/v;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lz4/e;->d(LV3/b;)LU3/e;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Ld4/b;->g:Ljava/util/Set;

    invoke-static {v0}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, LV3/a;->p()LV3/h;

    move-result-object v2

    sget-object v3, Ld4/b;->b:Ls4/c;

    invoke-interface {v2, v3}, LV3/h;->e(Ls4/c;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, LU3/e;->I()I

    move-result p1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Ld4/d;->b:LI4/j;

    invoke-virtual {p0, v0}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, LV3/b;

    :goto_0
    return-object v1

    :cond_4
    :goto_1
    return-object p1
.end method
