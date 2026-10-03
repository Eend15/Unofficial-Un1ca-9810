.class public final LO3/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL3/m;


# static fields
.field public static final synthetic d:[LL3/l;


# instance fields
.field public final a:LO3/k0;

.field public final b:LO3/k0;

.field public final c:LJ4/C;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LO3/g0;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "classifier"

    const-string v5, "getClassifier()Lkotlin/reflect/KClassifier;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v4, "arguments"

    const-string v5, "getArguments()Ljava/util/List;"

    invoke-direct {v3, v2, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, LO3/g0;->d:[LL3/l;

    return-void
.end method

.method public constructor <init>(LJ4/C;LE3/a;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/g0;->c:LJ4/C;

    instance-of p1, p2, LO3/k0;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    check-cast p1, LO3/k0;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0, p2}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iput-object p1, p0, LO3/g0;->a:LO3/k0;

    new-instance p1, LC4/g;

    const/16 v1, 0x16

    invoke-direct {p1, v1, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p1}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object p1

    iput-object p1, p0, LO3/g0;->b:LO3/k0;

    new-instance p1, LF4/C;

    const/4 v1, 0x6

    invoke-direct {p1, p0, v1, p2}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0, p1}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    return-void
.end method


# virtual methods
.method public final a(LJ4/C;)LL3/c;
    .locals 3

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v1, v0, LU3/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast v0, LU3/e;

    invoke-static {v0}, LO3/r0;->g(LU3/e;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lr3/j;->L0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ4/P;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LJ4/P;->b()LJ4/C;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, LO3/g0;->a(LJ4/C;)LL3/c;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p0, LO3/v;

    invoke-static {p1}, LK/I;->K(LL3/c;)LL3/b;

    move-result-object p1

    invoke-static {p1}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, LO3/v;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_0
    new-instance p1, LD3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot determine classifier for array element type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, LO3/v;

    invoke-direct {p0, v0}, LO3/v;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_2
    invoke-static {p1}, LJ4/Z;->e(LJ4/C;)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, LO3/v;

    sget-object p1, La4/b;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_3

    move-object v0, p1

    :cond_3
    invoke-direct {p0, v0}, LO3/v;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_4
    new-instance p0, LO3/v;

    invoke-direct {p0, v0}, LO3/v;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_5
    return-object v2

    :cond_6
    instance-of p0, v0, LU3/O;

    if-eqz p0, :cond_7

    new-instance p0, LO3/h0;

    check-cast v0, LU3/O;

    invoke-direct {p0, v2, v0}, LO3/h0;-><init>(LO3/i0;LU3/O;)V

    return-object p0

    :cond_7
    instance-of p0, v0, LH4/v;

    if-nez p0, :cond_8

    return-object v2

    :cond_8
    new-instance p0, LD3/a;

    const-string p1, "An operation is not implemented: Type alias classifiers are not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LO3/g0;

    if-eqz v0, :cond_0

    check-cast p1, LO3/g0;

    iget-object p1, p1, LO3/g0;->c:LJ4/C;

    iget-object p0, p0, LO3/g0;->c:LJ4/C;

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

    iget-object p0, p0, LO3/g0;->c:LJ4/C;

    invoke-virtual {p0}, LJ4/C;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LO3/p0;->a:Lu4/g;

    iget-object p0, p0, LO3/g0;->c:LJ4/C;

    invoke-static {p0}, LO3/p0;->d(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
