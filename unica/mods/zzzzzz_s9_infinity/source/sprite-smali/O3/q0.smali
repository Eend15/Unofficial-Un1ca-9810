.class public abstract LO3/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls4/c;

    const-string v1, "java.lang.Void"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    sput-object v0, LO3/q0;->a:Ls4/b;

    return-void
.end method

.method public static a(LU3/s;)LO3/h;
    .locals 4

    new-instance v0, LO3/h;

    new-instance v1, Lr4/e;

    invoke-static {p0}, La4/x;->y(LU3/s;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, p0, LX3/M;

    const-string v3, "descriptor.propertyIfAccessor.name.asString()"

    if-eqz v2, :cond_1

    invoke-static {p0}, Lz4/e;->k(LU3/b;)LU3/b;

    move-result-object v2

    check-cast v2, LX3/p;

    invoke-virtual {v2}, LX3/p;->r()Ls4/f;

    move-result-object v2

    invoke-virtual {v2}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ld4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    instance-of v2, p0, LX3/N;

    if-eqz v2, :cond_2

    invoke-static {p0}, Lz4/e;->k(LU3/b;)LU3/b;

    move-result-object v2

    check-cast v2, LX3/p;

    invoke-virtual {v2}, LX3/p;->r()Ls4/f;

    move-result-object v2

    invoke-virtual {v2}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ld4/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, p0

    check-cast v2, LX3/p;

    invoke-virtual {v2}, LX3/p;->r()Ls4/f;

    move-result-object v2

    invoke-virtual {v2}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "descriptor.name.asString()"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lr4/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, LO3/h;-><init>(Lr4/e;)V

    return-object v0
.end method

.method public static b(LX3/L;)LO3/n0;
    .locals 7

    const-string v0, "possiblyOverriddenProperty"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lv4/f;->t(LU3/b;)LU3/b;

    move-result-object p0

    check-cast p0, LX3/L;

    invoke-virtual {p0}, LX3/L;->I0()LX3/L;

    move-result-object v1

    const-string p0, "DescriptorUtils.unwrapFa\u2026rriddenProperty).original"

    invoke-static {v1, p0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, v1, LH4/t;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object p0, v1

    check-cast p0, LH4/t;

    sget-object v2, Lq4/j;->d:Lt4/o;

    const-string v3, "JvmProtoBuf.propertySignature"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, LH4/t;->B:Ln4/G;

    invoke-static {v3, v2}, Lj0/s;->x(Lt4/m;Lt4/o;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lq4/d;

    if-eqz v4, :cond_a

    new-instance v6, LO3/k;

    iget-object v5, p0, LH4/t;->C:Lp4/f;

    iget-object p0, p0, LH4/t;->D:LX3/C;

    move-object v0, v6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LO3/k;-><init>(LX3/L;Ln4/G;Lq4/d;Lp4/f;LX3/C;)V

    return-object v6

    :cond_0
    instance-of p0, v1, Lf4/g;

    if-eqz p0, :cond_a

    move-object p0, v1

    check-cast p0, Lf4/g;

    invoke-virtual {p0}, LX3/q;->i()LU3/L;

    move-result-object p0

    instance-of v2, p0, LZ3/g;

    if-nez v2, :cond_1

    move-object p0, v0

    :cond_1
    check-cast p0, LZ3/g;

    if-eqz p0, :cond_2

    iget-object p0, p0, LZ3/g;->d:La4/r;

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    instance-of v2, p0, La4/t;

    if-eqz v2, :cond_3

    new-instance v0, LO3/i;

    check-cast p0, La4/t;

    iget-object p0, p0, La4/t;->a:Ljava/lang/reflect/Field;

    invoke-direct {v0, p0}, LO3/i;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3

    :cond_3
    instance-of v2, p0, La4/w;

    if-eqz v2, :cond_9

    new-instance v2, LO3/j;

    check-cast p0, La4/w;

    iget-object p0, p0, La4/w;->a:Ljava/lang/reflect/Method;

    iget-object v1, v1, LX3/L;->y:LX3/N;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, LX3/q;->i()LU3/L;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    instance-of v3, v1, LZ3/g;

    if-nez v3, :cond_5

    move-object v1, v0

    :cond_5
    check-cast v1, LZ3/g;

    if-eqz v1, :cond_6

    iget-object v1, v1, LZ3/g;->d:La4/r;

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    instance-of v3, v1, La4/w;

    if-nez v3, :cond_7

    move-object v1, v0

    :cond_7
    check-cast v1, La4/w;

    if-eqz v1, :cond_8

    iget-object v0, v1, La4/w;->a:Ljava/lang/reflect/Method;

    :cond_8
    invoke-direct {v2, p0, v0}, LO3/j;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_9
    new-instance v0, LD3/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect resolution sequence for Java field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (source = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object p0, v1, LX3/L;->x:LX3/M;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, LO3/q0;->a(LU3/s;)LO3/h;

    move-result-object p0

    iget-object v1, v1, LX3/L;->y:LX3/N;

    if-eqz v1, :cond_b

    invoke-static {v1}, LO3/q0;->a(LU3/s;)LO3/h;

    move-result-object v0

    :cond_b
    new-instance v1, LO3/l;

    invoke-direct {v1, p0, v0}, LO3/l;-><init>(LO3/h;LO3/h;)V

    return-object v1
.end method

.method public static c(LU3/s;)LO3/n0;
    .locals 6

    const-string v0, "possiblySubstitutedFunction"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lv4/f;->t(LU3/b;)LU3/b;

    move-result-object v0

    check-cast v0, LU3/s;

    invoke-interface {v0}, LU3/s;->a()LU3/s;

    move-result-object v0

    const-string v1, "DescriptorUtils.unwrapFa\u2026titutedFunction).original"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, LH4/b;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, LH4/b;

    invoke-interface {v1}, LH4/n;->g0()Lt4/b;

    move-result-object v2

    instance-of v3, v2, Ln4/y;

    if-eqz v3, :cond_0

    sget-object v3, Lr4/h;->a:Lt4/i;

    move-object v3, v2

    check-cast v3, Ln4/y;

    invoke-interface {v1}, LH4/n;->t0()Lp4/f;

    move-result-object v4

    invoke-interface {v1}, LH4/n;->W()LX3/C;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lr4/h;->c(Ln4/y;Lp4/f;LX3/C;)Lr4/e;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance p0, LO3/h;

    invoke-direct {p0, v3}, LO3/h;-><init>(Lr4/e;)V

    return-object p0

    :cond_0
    instance-of v3, v2, Ln4/l;

    if-eqz v3, :cond_2

    sget-object v3, Lr4/h;->a:Lt4/i;

    check-cast v2, Ln4/l;

    invoke-interface {v1}, LH4/n;->t0()Lp4/f;

    move-result-object v3

    invoke-interface {v1}, LH4/n;->W()LX3/C;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lr4/h;->a(Ln4/l;Lp4/f;LX3/C;)Lr4/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object p0

    const-string v0, "possiblySubstitutedFunction.containingDeclaration"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lv4/j;->b(LU3/j;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, LO3/h;

    invoke-direct {p0, v1}, LO3/h;-><init>(Lr4/e;)V

    goto :goto_0

    :cond_1
    new-instance p0, LO3/g;

    invoke-direct {p0, v1}, LO3/g;-><init>(Lr4/e;)V

    :goto_0
    return-object p0

    :cond_2
    invoke-static {v0}, LO3/q0;->a(LU3/s;)LO3/h;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p0, v0, Lf4/f;

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    move-object p0, v0

    check-cast p0, Lf4/f;

    invoke-virtual {p0}, LX3/q;->i()LU3/L;

    move-result-object p0

    instance-of v2, p0, LZ3/g;

    if-nez v2, :cond_4

    move-object p0, v1

    :cond_4
    check-cast p0, LZ3/g;

    if-eqz p0, :cond_5

    iget-object p0, p0, LZ3/g;->d:La4/r;

    goto :goto_1

    :cond_5
    move-object p0, v1

    :goto_1
    instance-of v2, p0, La4/w;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, p0

    :goto_2
    check-cast v1, La4/w;

    if-eqz v1, :cond_7

    iget-object p0, v1, La4/w;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_7

    new-instance v0, LO3/f;

    invoke-direct {v0, p0}, LO3/f;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    :cond_7
    new-instance p0, LD3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect resolution sequence for Java method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    instance-of p0, v0, Lf4/b;

    const/16 v2, 0x29

    const-string v3, " ("

    if-eqz p0, :cond_d

    move-object p0, v0

    check-cast p0, Lf4/b;

    invoke-virtual {p0}, LX3/q;->i()LU3/L;

    move-result-object p0

    instance-of v4, p0, LZ3/g;

    if-nez v4, :cond_9

    move-object p0, v1

    :cond_9
    check-cast p0, LZ3/g;

    if-eqz p0, :cond_a

    iget-object v1, p0, LZ3/g;->d:La4/r;

    :cond_a
    instance-of p0, v1, La4/q;

    if-eqz p0, :cond_b

    new-instance p0, LO3/e;

    check-cast v1, La4/q;

    iget-object v0, v1, La4/q;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v0}, LO3/e;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_3

    :cond_b
    instance-of p0, v1, La4/n;

    if-eqz p0, :cond_c

    move-object p0, v1

    check-cast p0, La4/n;

    iget-object v4, p0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isAnnotation()Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v0, LO3/d;

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-direct {v0, p0}, LO3/d;-><init>(Ljava/lang/Class;)V

    move-object p0, v0

    :goto_3
    return-object p0

    :cond_c
    new-instance p0, LD3/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Incorrect resolution sequence for Java constructor "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    move-object p0, v0

    check-cast p0, LX3/p;

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object v1

    sget-object v4, LR3/p;->b:Ls4/f;

    invoke-virtual {v1, v4}, Ls4/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v0}, Lv4/p;->l(LU3/s;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object v1

    sget-object v4, LR3/p;->a:Ls4/f;

    invoke-virtual {v1, v4}, Ls4/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lv4/p;->l(LU3/s;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    sget-object v1, LT3/a;->e:Ls4/f;

    invoke-static {p0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-interface {v0}, LU3/a;->n0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_10

    :goto_4
    invoke-static {v0}, LO3/q0;->a(LU3/s;)LO3/h;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, LD3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unknown origin of "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method
