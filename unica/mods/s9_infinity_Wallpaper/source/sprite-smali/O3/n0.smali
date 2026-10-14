.class public abstract LO3/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LO3/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LO3/m0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LO3/n0;->d:LO3/m0;

    return-void
.end method

.method public static final a(LO3/W;Z)LP3/f;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, LO3/z;->d:LV4/l;

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object v3

    iget-object v3, v3, LO3/c0;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, LV4/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, LP3/z;->a:LP3/z;

    goto/16 :goto_5

    :cond_0
    new-instance v2, LO3/d0;

    invoke-direct {v2, p0, v1}, LO3/d0;-><init>(LO3/W;I)V

    new-instance v3, LO3/d0;

    invoke-direct {v3, p0, v0}, LO3/d0;-><init>(LO3/W;I)V

    new-instance v4, LO3/e0;

    invoke-direct {v4, p0, p1, v3, v2}, LO3/e0;-><init>(LO3/W;ZLO3/d0;LO3/d0;)V

    sget-object v3, LO3/q0;->a:Ls4/b;

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object v3

    invoke-virtual {v3}, LO3/c0;->i()LX3/L;

    move-result-object v3

    invoke-static {v3}, LO3/q0;->b(LX3/L;)LO3/n0;

    move-result-object v3

    instance-of v5, v3, LO3/k;

    if-eqz v5, :cond_e

    check-cast v3, LO3/k;

    iget-object v5, v3, LO3/k;->h:Lq4/d;

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    iget p1, v5, Lq4/d;->e:I

    const/4 v7, 0x4

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_1

    iget-object p1, v5, Lq4/d;->h:Lq4/c;

    goto :goto_0

    :cond_1
    move-object p1, v6

    goto :goto_0

    :cond_2
    iget p1, v5, Lq4/d;->e:I

    const/16 v7, 0x8

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_1

    iget-object p1, v5, Lq4/d;->i:Lq4/c;

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object v5

    iget-object v5, v5, LO3/c0;->g:LO3/z;

    iget v6, p1, Lq4/c;->f:I

    iget-object v3, v3, LO3/k;->i:Lp4/f;

    invoke-interface {v3, v6}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object v6

    iget p1, p1, Lq4/c;->g:I

    invoke-interface {v3, p1}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, LO3/z;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    :cond_3
    if-nez v6, :cond_8

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p1

    invoke-virtual {p1}, LO3/c0;->i()LX3/L;

    move-result-object p1

    invoke-static {p1}, Lv4/j;->d(LU3/P;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p1

    invoke-virtual {p1}, LO3/c0;->i()LX3/L;

    move-result-object p1

    invoke-virtual {p1}, LX3/L;->b()LU3/n;

    move-result-object p1

    sget-object v0, LU3/o;->d:LU3/n;

    invoke-static {p1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p1

    invoke-virtual {p1}, LO3/c0;->i()LX3/L;

    move-result-object p1

    check-cast p1, LX3/q;

    invoke-virtual {p1}, LX3/q;->g()LU3/j;

    move-result-object p1

    invoke-static {p1}, LK/I;->u0(LU3/j;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object v0

    invoke-virtual {v0}, LO3/c0;->i()LX3/L;

    move-result-object v0

    invoke-static {p1, v0}, LK/I;->P(Ljava/lang/Class;LU3/b;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0}, LO3/W;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, LP3/w;

    invoke-static {p0}, LO3/n0;->d(LO3/W;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p1, v2}, LP3/w;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    new-instance v0, LP3/x;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v2}, LP3/y;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_5
    new-instance p1, LD3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Underlying property of inline class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should have a field"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p1

    iget-object p1, p1, LO3/c0;->e:LO3/l0;

    invoke-virtual {p1}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    if-eqz p1, :cond_7

    invoke-virtual {v4, p1}, LO3/e0;->b(Ljava/lang/reflect/Field;)LP3/u;

    move-result-object v0

    goto/16 :goto_3

    :cond_7
    new-instance p1, LD3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No accessors or field is found for property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, LO3/W;->h()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, LP3/q;

    invoke-static {p0}, LO3/n0;->d(LO3/W;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v6, v0}, LP3/q;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :goto_1
    move-object v0, p1

    goto/16 :goto_3

    :cond_9
    new-instance p1, LP3/t;

    invoke-direct {p1, v6, v1}, LP3/t;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_1

    :cond_a
    invoke-virtual {v2}, LO3/d0;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, LO3/W;->h()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, LP3/r;

    invoke-direct {p1, v6}, LP3/r;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_1

    :cond_b
    new-instance p1, LP3/t;

    invoke-direct {p1, v6, v0}, LP3/t;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, LO3/W;->h()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, LP3/s;

    invoke-static {p0}, LO3/n0;->d(LO3/W;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v6, v0}, LP3/s;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_1

    :cond_d
    new-instance p1, LP3/t;

    const/4 v0, 0x2

    invoke-direct {p1, v6, v0}, LP3/t;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_1

    :cond_e
    instance-of v0, v3, LO3/i;

    if-eqz v0, :cond_f

    check-cast v3, LO3/i;

    iget-object p1, v3, LO3/i;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1}, LO3/e0;->b(Ljava/lang/reflect/Field;)LP3/u;

    move-result-object v0

    goto :goto_3

    :cond_f
    instance-of v0, v3, LO3/j;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_10

    check-cast v3, LO3/j;

    iget-object p1, v3, LO3/j;->e:Ljava/lang/reflect/Method;

    goto :goto_2

    :cond_10
    check-cast v3, LO3/j;

    iget-object p1, v3, LO3/j;->f:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_12

    :goto_2
    invoke-virtual {p0}, LO3/W;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, LP3/q;

    invoke-static {p0}, LO3/n0;->d(LO3/W;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p1, v2}, LP3/q;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_3

    :cond_11
    new-instance v0, LP3/t;

    invoke-direct {v0, p1, v1}, LP3/t;-><init>(Ljava/lang/reflect/Method;I)V

    :goto_3
    invoke-virtual {p0}, LO3/W;->i()LU3/I;

    move-result-object p0

    invoke-static {v0, p0, v1}, LK/I;->p(LP3/f;LU3/s;Z)LP3/f;

    move-result-object p0

    goto :goto_5

    :cond_12
    new-instance p0, LD3/a;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No source found for setter of Java method property: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, LO3/j;->e:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    instance-of v0, v3, LO3/l;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_14

    check-cast v3, LO3/l;

    iget-object p1, v3, LO3/l;->e:LO3/h;

    goto :goto_4

    :cond_14
    check-cast v3, LO3/l;

    iget-object p1, v3, LO3/l;->f:LO3/h;

    if-eqz p1, :cond_17

    :goto_4
    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object v0

    iget-object v0, v0, LO3/c0;->g:LO3/z;

    iget-object p1, p1, LO3/h;->f:Lr4/e;

    iget-object v2, p1, Lr4/e;->c:Ljava/lang/String;

    iget-object p1, p1, Lr4/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, LO3/z;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    invoke-virtual {p0}, LO3/W;->h()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, LP3/q;

    invoke-static {p0}, LO3/n0;->d(LO3/W;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, LP3/q;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_5

    :cond_15
    new-instance p0, LP3/t;

    invoke-direct {p0, p1, v1}, LP3/t;-><init>(Ljava/lang/reflect/Method;I)V

    :goto_5
    return-object p0

    :cond_16
    new-instance p1, LD3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No accessor found for property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, LD3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No setter found for property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final b(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const-string v1, "parameterTypes"

    invoke-static {v2, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, LO3/c;->k:LO3/c;

    const-string v5, ")"

    const/16 v7, 0x18

    const-string v3, ""

    const-string v4, "("

    invoke-static/range {v2 .. v7}, Lr3/h;->p0([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "returnType"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, La4/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LO3/W;)Ljava/lang/Object;
    .locals 1

    const-string v0, "$this$boundReceiver"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {p0}, LO3/c0;->i()LX3/L;

    move-result-object v0

    iget-object p0, p0, LO3/c0;->j:Ljava/lang/Object;

    invoke-static {p0, v0}, LK/I;->k(Ljava/lang/Object;LU3/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(LU3/b;LE3/a;)LO3/k0;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, LO3/k0;

    invoke-direct {v0, p0, p1}, LO3/k0;-><init>(LU3/b;LE3/a;)V

    return-object v0

    :cond_0
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "initializer"

    aput-object v0, p0, p1

    const/4 p1, 0x1

    const-string v0, "kotlin/reflect/jvm/internal/ReflectProperties"

    aput-object v0, p0, p1

    const/4 p1, 0x2

    const-string v0, "lazySoft"

    aput-object v0, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method
