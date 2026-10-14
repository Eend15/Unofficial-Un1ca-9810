.class public final LO3/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL3/n;


# static fields
.field public static final synthetic g:[LL3/l;


# instance fields
.field public final d:LO3/k0;

.field public final e:LO3/i0;

.field public final f:LU3/O;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LO3/h0;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v3, "upperBounds"

    const-string v4, "getUpperBounds()Ljava/util/List;"

    invoke-direct {v0, v2, v3, v4}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    filled-new-array {v0}, [LL3/l;

    move-result-object v0

    sput-object v0, LO3/h0;->g:[LL3/l;

    return-void
.end method

.method public constructor <init>(LO3/i0;LU3/O;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LO3/h0;->f:LU3/O;

    new-instance v0, LC4/g;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object v0

    iput-object v0, p0, LO3/h0;->d:LO3/k0;

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {p2}, LU3/j;->g()LU3/j;

    move-result-object p1

    const-string p2, "descriptor.containingDeclaration"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, LU3/e;

    if-eqz p2, :cond_1

    check-cast p1, LU3/e;

    invoke-static {p1}, LO3/h0;->d(LU3/e;)LO3/v;

    move-result-object p1

    goto :goto_4

    :cond_1
    instance-of p2, p1, LU3/b;

    if-eqz p2, :cond_a

    move-object p2, p1

    check-cast p2, LU3/b;

    invoke-interface {p2}, LU3/j;->g()LU3/j;

    move-result-object p2

    const-string v0, "declaration.containingDeclaration"

    invoke-static {p2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, LU3/e;

    if-eqz v0, :cond_2

    check-cast p2, LU3/e;

    invoke-static {p2}, LO3/h0;->d(LU3/e;)LO3/v;

    move-result-object p2

    goto :goto_3

    :cond_2
    instance-of p2, p1, LH4/n;

    if-nez p2, :cond_3

    move-object p2, v1

    goto :goto_0

    :cond_3
    move-object p2, p1

    :goto_0
    check-cast p2, LH4/n;

    if-eqz p2, :cond_9

    invoke-interface {p2}, LH4/n;->u()LH4/m;

    move-result-object v0

    instance-of v2, v0, Ll4/e;

    if-nez v2, :cond_4

    move-object v0, v1

    :cond_4
    check-cast v0, Ll4/e;

    if-eqz v0, :cond_5

    iget-object v0, v0, Ll4/e;->f:LZ3/c;

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    instance-of v2, v0, LZ3/c;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_8

    iget-object v0, v1, LZ3/c;->a:Ljava/lang/Class;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lw0/f;->A(Ljava/lang/Class;)LL3/b;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, LO3/v;

    :goto_3
    new-instance v0, LA1/e;

    invoke-direct {v0, p2}, LA1/e;-><init>(LO3/z;)V

    sget-object p2, Lq3/m;->a:Lq3/m;

    invoke-interface {p1, v0, p2}, LU3/j;->L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    const-string p2, "when (val declaration = \u2026 $declaration\")\n        }"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LO3/i0;

    :goto_5
    iput-object p1, p0, LO3/h0;->e:LO3/i0;

    return-void

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, LD3/a;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Container of deserialized member is not resolved: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, LD3/a;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Non-class callable descriptor must be deserialized: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, LD3/a;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown type parameter container: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(LU3/e;)LO3/v;
    .locals 3

    invoke-static {p0}, LO3/r0;->g(LU3/e;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lw0/f;->A(Ljava/lang/Class;)LL3/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, LO3/v;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, LD3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type parameter container is not resolved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, LO3/h0;->f:LU3/O;

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "descriptor.name.asString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LO3/h0;

    if-eqz v0, :cond_0

    check-cast p1, LO3/h0;

    iget-object v0, p1, LO3/h0;->e:LO3/i0;

    iget-object v1, p0, LO3/h0;->e:LO3/i0;

    invoke-static {v1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LO3/h0;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, LO3/h0;->c()Ljava/lang/String;

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

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LO3/h0;->e:LO3/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, LO3/h0;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LO3/h0;->f:LU3/O;

    invoke-interface {v1}, LU3/O;->z()I

    move-result v1

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    sget-object v1, LL3/q;->f:LL3/q;

    goto :goto_0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    sget-object v1, LL3/q;->e:LL3/q;

    goto :goto_0

    :cond_2
    sget-object v1, LL3/q;->d:LL3/q;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, LO3/h0;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
