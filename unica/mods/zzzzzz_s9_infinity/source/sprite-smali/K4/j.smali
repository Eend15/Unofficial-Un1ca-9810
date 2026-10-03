.class public final LK4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw4/b;


# instance fields
.field public final a:LJ4/P;

.field public b:LE3/a;

.field public final c:LK4/j;

.field public final d:LU3/O;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJ4/P;LE3/a;LK4/j;LU3/O;)V
    .locals 1

    const-string v0, "projection"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LK4/j;->a:LJ4/P;

    .line 3
    iput-object p2, p0, LK4/j;->b:LE3/a;

    .line 4
    iput-object p3, p0, LK4/j;->c:LK4/j;

    .line 5
    iput-object p4, p0, LK4/j;->d:LU3/O;

    .line 6
    sget-object p1, Lq3/e;->d:Lq3/e;

    new-instance p2, LC4/g;

    const/16 p3, 0xb

    invoke-direct {p2, p3, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    move-result-object p1

    iput-object p1, p0, LK4/j;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LJ4/P;LH4/d;LK4/j;LU3/O;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v1

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, LK4/j;-><init>(LJ4/P;LE3/a;LK4/j;LU3/O;)V

    return-void
.end method


# virtual methods
.method public final a()LJ4/P;
    .locals 0

    iget-object p0, p0, LK4/j;->a:LJ4/P;

    return-object p0
.end method

.method public final c()LR3/j;
    .locals 1

    iget-object p0, p0, LK4/j;->a:LJ4/P;

    invoke-virtual {p0}, LJ4/P;->b()LJ4/C;

    move-result-object p0

    const-string v0, "projection.type"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LK/I;->v(LJ4/C;)LR3/j;

    move-result-object p0

    return-object p0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()LU3/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, LK4/j;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_6

    check-cast p1, LK4/j;

    iget-object v1, p0, LK4/j;->c:LK4/j;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    iget-object v1, p1, LK4/j;->c:LK4/j;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    if-ne p0, p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    return v0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, LK4/j;->e:Ljava/lang/Object;

    invoke-interface {p0}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    :cond_0
    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LK4/j;->c:LK4/j;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LK4/j;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CapturedType("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LK4/j;->a:LJ4/P;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
