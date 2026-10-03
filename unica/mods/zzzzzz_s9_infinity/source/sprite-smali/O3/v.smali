.class public final LO3/v;
.super LO3/z;
.source "SourceFile"

# interfaces
.implements LL3/b;
.implements LO3/i0;


# static fields
.field public static final synthetic g:I


# instance fields
.field public final e:LO3/l0;

.field public final f:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "jClass"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/v;->f:Ljava/lang/Class;

    new-instance p1, LC4/g;

    const/16 v0, 0xd

    invoke-direct {p1, v0, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    new-instance v0, LO3/l0;

    invoke-direct {v0, p1}, LO3/l0;-><init>(LE3/a;)V

    iput-object v0, p0, LO3/v;->e:LO3/l0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, LO3/v;->e:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LO3/t;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LO3/t;->n:[LL3/l;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/t;->f:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, LO3/v;->e:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LO3/t;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LO3/t;->n:[LL3/l;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/t;->e:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, LO3/v;->f:Ljava/lang/Class;

    return-object p0
.end method

.method public final e()Ljava/util/Collection;
    .locals 2

    invoke-virtual {p0}, LO3/v;->p()LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->I()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, LU3/e;->I()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LU3/e;->P()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "descriptor.constructors"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LO3/v;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lw0/f;->y(LL3/b;)Ljava/lang/Class;

    move-result-object p0

    check-cast p1, LL3/b;

    invoke-static {p1}, Lw0/f;->y(LL3/b;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Ls4/f;)Ljava/util/Collection;
    .locals 3

    invoke-virtual {p0}, LO3/v;->p()LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/e;->n()LJ4/G;

    move-result-object v0

    invoke-virtual {v0}, LJ4/C;->l0()LC4/o;

    move-result-object v0

    sget-object v1, Lc4/b;->e:Lc4/b;

    invoke-interface {v0, p1, v1}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, LO3/v;->p()LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->U()LC4/o;

    move-result-object p0

    const-string v2, "descriptor.staticScope"

    invoke-static {p0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, v1}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {v0, p0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final g(I)LX3/L;
    .locals 9

    iget-object v0, p0, LO3/v;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultImpls"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lw0/f;->A(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, LO3/v;

    invoke-virtual {p0, p1}, LO3/v;->g(I)LX3/L;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, LO3/v;->p()LU3/e;

    move-result-object v0

    instance-of v1, v0, LH4/l;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, LH4/l;

    if-eqz v0, :cond_3

    sget-object v1, Lq4/j;->j:Lt4/o;

    const-string v3, "JvmProtoBuf.classLocalVariable"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, LH4/l;->h:Ln4/j;

    invoke-static {v3, v1, p1}, Lj0/s;->y(Lt4/m;Lt4/o;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ln4/G;

    if-eqz v4, :cond_3

    iget-object p1, v0, LH4/l;->o:LF4/k;

    iget-object v5, p1, LF4/k;->b:Lp4/f;

    sget-object v8, LO3/u;->l:LO3/u;

    iget-object v3, p0, LO3/v;->f:Ljava/lang/Class;

    iget-object v7, v0, LH4/l;->i:Lp4/a;

    iget-object v6, p1, LF4/k;->d:LX3/C;

    invoke-static/range {v3 .. v8}, LO3/r0;->c(Ljava/lang/Class;Lt4/m;Lp4/f;LX3/C;Lp4/a;LE3/c;)LU3/a;

    move-result-object p0

    move-object v2, p0

    check-cast v2, LX3/L;

    :cond_3
    return-object v2
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, Lw0/f;->y(LL3/b;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final j(Ls4/f;)Ljava/util/Collection;
    .locals 3

    invoke-virtual {p0}, LO3/v;->p()LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/e;->n()LJ4/G;

    move-result-object v0

    invoke-virtual {v0}, LJ4/C;->l0()LC4/o;

    move-result-object v0

    sget-object v1, Lc4/b;->e:Lc4/b;

    invoke-interface {v0, p1, v1}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, LO3/v;->p()LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->U()LC4/o;

    move-result-object p0

    const-string v2, "descriptor.staticScope"

    invoke-static {p0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, v1}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {v0, p0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ls4/b;
    .locals 2

    sget-object v0, LO3/q0;->a:Ls4/b;

    iget-object p0, p0, LO3/v;->f:Ljava/lang/Class;

    const-string v0, "klass"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "klass.componentType"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LA4/c;->b(Ljava/lang/String;)LA4/c;

    move-result-object p0

    invoke-virtual {p0}, LA4/c;->d()LR3/l;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    new-instance p0, Ls4/b;

    sget-object v0, LR3/p;->j:Ls4/c;

    iget-object v1, v1, LR3/l;->e:Ls4/f;

    invoke-direct {p0, v0, v1}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    goto :goto_0

    :cond_1
    sget-object p0, LR3/o;->g:Ls4/e;

    invoke-virtual {p0}, Ls4/e;->g()Ls4/c;

    move-result-object p0

    invoke-static {p0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, LO3/q0;->a:Ls4/b;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LA4/c;->b(Ljava/lang/String;)LA4/c;

    move-result-object v0

    invoke-virtual {v0}, LA4/c;->d()LR3/l;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    new-instance p0, Ls4/b;

    sget-object v0, LR3/p;->j:Ls4/c;

    iget-object v1, v1, LR3/l;->d:Ls4/f;

    invoke-direct {p0, v0, v1}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    goto :goto_0

    :cond_5
    invoke-static {p0}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object p0

    iget-boolean v0, p0, Ls4/b;->c:Z

    if-nez v0, :cond_6

    sget-object v0, LT3/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ls4/b;->b()Ls4/c;

    move-result-object v0

    sget-object v1, LT3/d;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ls4/c;->i()Ls4/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls4/b;

    if-eqz v0, :cond_6

    move-object p0, v0

    :cond_6
    :goto_0
    return-object p0
.end method

.method public final p()LU3/e;
    .locals 0

    iget-object p0, p0, LO3/v;->e:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LO3/t;

    invoke-virtual {p0}, LO3/t;->a()LU3/e;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/v;->o()Ls4/b;

    move-result-object p0

    invoke-virtual {p0}, Ls4/b;->g()Ls4/c;

    move-result-object v1

    const-string v2, "classId.packageFqName"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ls4/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Ls4/b;->h()Ls4/c;

    move-result-object p0

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x2e

    const/16 v3, 0x24

    invoke-static {p0, v2, v3}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
