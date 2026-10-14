.class public final Lu4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/i;


# static fields
.field public static final c:Lu4/g;

.field public static final d:Lu4/g;


# instance fields
.field public final a:Lu4/k;

.field public final b:Lq3/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lu4/d;->g:Lu4/d;

    invoke-static {v0}, Lp4/g;->Z(LE3/b;)Lu4/g;

    sget-object v0, Lu4/d;->e:Lu4/d;

    invoke-static {v0}, Lp4/g;->Z(LE3/b;)Lu4/g;

    sget-object v0, Lu4/d;->f:Lu4/d;

    invoke-static {v0}, Lp4/g;->Z(LE3/b;)Lu4/g;

    sget-object v0, Lu4/d;->h:Lu4/d;

    invoke-static {v0}, Lp4/g;->Z(LE3/b;)Lu4/g;

    sget-object v0, Lu4/d;->m:Lu4/d;

    invoke-static {v0}, Lp4/g;->Z(LE3/b;)Lu4/g;

    sget-object v0, Lu4/d;->j:Lu4/d;

    invoke-static {v0}, Lp4/g;->Z(LE3/b;)Lu4/g;

    move-result-object v0

    sput-object v0, Lu4/g;->c:Lu4/g;

    sget-object v0, Lu4/d;->k:Lu4/d;

    invoke-static {v0}, Lp4/g;->Z(LE3/b;)Lu4/g;

    sget-object v0, Lu4/d;->n:Lu4/d;

    invoke-static {v0}, Lp4/g;->Z(LE3/b;)Lu4/g;

    sget-object v0, Lu4/d;->i:Lu4/d;

    invoke-static {v0}, Lp4/g;->Z(LE3/b;)Lu4/g;

    move-result-object v0

    sput-object v0, Lu4/g;->d:Lu4/g;

    sget-object v0, Lu4/d;->l:Lu4/d;

    invoke-static {v0}, Lp4/g;->Z(LE3/b;)Lu4/g;

    return-void
.end method

.method public constructor <init>(Lu4/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu4/g;->a:Lu4/k;

    new-instance p1, La0/o;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, La0/o;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lq3/j;

    invoke-direct {v0, p1}, Lq3/j;-><init>(LE3/a;)V

    iput-object v0, p0, Lu4/g;->b:Lq3/j;

    return-void
.end method

.method public static T(Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, p3, v0}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p4}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0, p2}, Lu4/g;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "!"

    invoke-static {p0, p1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g0(LJ4/C;)Z
    .locals 1

    invoke-static {p0}, LR3/f;->P(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/P;

    invoke-virtual {v0}, LJ4/P;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static final l(Lu4/g;LX3/L;Ljava/lang/StringBuilder;)V
    .locals 6

    invoke-virtual {p0}, Lu4/g;->q()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v2, Lu4/k;->U:[LL3/l;

    const/4 v3, 0x5

    aget-object v3, v2, v3

    iget-object v4, v0, Lu4/k;->g:Lu4/j;

    invoke-virtual {v4, v3}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v3

    sget-object v5, Lu4/h;->j:Lu4/h;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p2, p1, v3}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    iget-object v3, p1, LX3/L;->z:LX3/u;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v5, LV3/d;->e:LV3/d;

    invoke-virtual {p0, p2, v3, v5}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    :goto_0
    iget-object v3, p1, LX3/L;->A:LX3/u;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v5, LV3/d;->m:LV3/d;

    invoke-virtual {p0, p2, v3, v5}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    :goto_1
    const/16 v3, 0x1f

    aget-object v2, v2, v3

    iget-object v0, v0, Lu4/k;->F:Lu4/j;

    invoke-virtual {v0, v2}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu4/p;

    sget-object v2, Lu4/p;->e:Lu4/p;

    if-ne v0, v2, :cond_5

    iget-object v0, p1, LX3/L;->x:LX3/M;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, LV3/d;->h:LV3/d;

    invoke-virtual {p0, p2, v0, v2}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    :goto_2
    iget-object v0, p1, LX3/L;->y:LX3/N;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    sget-object v2, LV3/d;->i:LV3/d;

    invoke-virtual {p0, p2, v0, v2}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    invoke-virtual {v0}, LX3/N;->n0()Ljava/util/List;

    move-result-object v0

    const-string v2, "setter.valueParameters"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3/W;

    const-string v2, "it"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LV3/d;->l:LV3/d;

    invoke-virtual {p0, p2, v0, v2}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    :cond_5
    :goto_3
    invoke-virtual {p1}, LX3/L;->b()LU3/n;

    move-result-object v0

    const-string v2, "property.visibility"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lu4/g;->d0(LU3/n;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lu4/h;->q:Lu4/h;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, LU3/P;->N()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v4

    :goto_4
    const-string v2, "const"

    invoke-virtual {p0, p2, v0, v2}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->G(LU3/v;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->I(LU3/b;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->O(LU3/b;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lu4/h;->r:Lu4/h;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p1, LX3/L;->p:Z

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v4

    :goto_5
    const-string v2, "lateinit"

    invoke-virtual {p0, p2, v0, v2}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->F(LU3/b;Ljava/lang/StringBuilder;)V

    :cond_8
    invoke-virtual {p0, p1, p2, v4}, Lu4/g;->a0(LU3/P;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p1}, LX3/L;->q()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2, v0, v1}, Lu4/g;->Z(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->R(LU3/b;Ljava/lang/StringBuilder;)V

    :cond_9
    invoke-virtual {p0, p1, p2, v1}, Lu4/g;->L(LU3/j;Ljava/lang/StringBuilder;Z)V

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, LX3/X;

    invoke-virtual {v0}, LX3/X;->j()LJ4/C;

    move-result-object v0

    const-string v1, "property.type"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lu4/g;->S(LU3/b;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->D(LU3/P;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1}, LX3/L;->q()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lu4/g;->e0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, ""

    const-string v1, "?"

    invoke-static {p1, v1, v0}, LV4/u;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, v1}, LV4/u;->f0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static u(LU3/v;)I
    .locals 6

    instance-of v0, p0, LU3/e;

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    check-cast p0, LU3/e;

    invoke-interface {p0}, LU3/e;->I()I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v0

    instance-of v4, v0, LU3/e;

    if-eqz v4, :cond_2

    check-cast v0, LU3/e;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return v3

    :cond_3
    instance-of v4, p0, LU3/b;

    if-nez v4, :cond_4

    return v3

    :cond_4
    check-cast p0, LU3/b;

    invoke-interface {p0}, LU3/b;->m()Ljava/util/Collection;

    move-result-object v4

    const-string v5, "this.overriddenDescriptors"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x3

    if-nez v4, :cond_5

    invoke-interface {v0}, LU3/e;->e()I

    move-result v4

    if-eq v4, v3, :cond_5

    return v5

    :cond_5
    invoke-interface {v0}, LU3/e;->I()I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-interface {p0}, LU3/v;->b()LU3/n;

    move-result-object v0

    sget-object v2, LU3/o;->a:LU3/n;

    invoke-static {v0, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p0}, LU3/v;->e()I

    move-result p0

    if-ne p0, v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v5

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    return v1
.end method

.method public static synthetic y(Lu4/g;Ljava/lang/StringBuilder;LV3/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    return-void
.end method


# virtual methods
.method public final A(Lx4/g;)Ljava/lang/String;
    .locals 6

    instance-of v0, p1, Lx4/b;

    if-eqz v0, :cond_0

    check-cast p1, Lx4/b;

    iget-object p1, p1, Lx4/g;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Lu4/f;

    const/4 p1, 0x1

    invoke-direct {v4, p0, p1}, Lu4/f;-><init>(Lu4/g;I)V

    const-string v2, "{"

    const-string v3, "}"

    const-string v1, ", "

    const/16 v5, 0x18

    invoke-static/range {v0 .. v5}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lx4/a;

    if-eqz v0, :cond_1

    check-cast p1, Lx4/a;

    iget-object p1, p1, Lx4/g;->a:Ljava/lang/Object;

    check-cast p1, LV3/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lu4/g;->w(LV3/b;LV3/d;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "@"

    invoke-static {p0, p1}, LV4/m;->C0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    instance-of p0, p1, Lx4/q;

    if-eqz p0, :cond_5

    check-cast p1, Lx4/q;

    iget-object p0, p1, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Lx4/p;

    instance-of p1, p0, Lx4/n;

    const-string v0, "::class"

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lx4/n;

    iget-object p0, p0, Lx4/n;->a:LJ4/C;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    instance-of p1, p0, Lx4/o;

    if-eqz p1, :cond_4

    check-cast p0, Lx4/o;

    iget-object p1, p0, Lx4/o;->a:Lx4/f;

    iget-object p1, p1, Lx4/f;->a:Ls4/b;

    invoke-virtual {p1}, Ls4/b;->b()Ls4/c;

    move-result-object p1

    invoke-virtual {p1}, Ls4/c;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lx4/o;->a:Lx4/f;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lx4/f;->b:I

    if-ge v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kotlin.Array<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0, p1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    invoke-virtual {p1}, Lx4/g;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final B(Ljava/lang/StringBuilder;LJ4/G;)V
    .locals 3

    invoke-static {p0, p1, p2}, Lu4/g;->y(Lu4/g;Ljava/lang/StringBuilder;LV3/a;)V

    instance-of v0, p2, LJ4/l;

    invoke-static {p2}, LJ4/c;->i(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, LJ4/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->T:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    check-cast v0, LJ4/p;

    iget-object v0, v0, LJ4/p;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu4/g;->V(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-virtual {p2}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->e()LU3/g;

    move-result-object v1

    instance-of v2, v1, LU3/h;

    if-eqz v2, :cond_2

    check-cast v1, LU3/h;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, LR3/f;->h(LJ4/G;LU3/h;I)Lw0/s;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lu4/g;->W(LJ4/M;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu4/g;->V(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v1}, Lu4/g;->Q(Ljava/lang/StringBuilder;Lw0/s;)V

    :goto_2
    invoke-virtual {p2}, LJ4/C;->z0()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    instance-of p0, p2, LJ4/l;

    if-eqz p0, :cond_5

    const-string p0, "!!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;LR3/j;)Ljava/lang/String;
    .locals 5

    const-string v0, "lowerRendered"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperRendered"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lu4/g;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "("

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-static {p2, v1, p0}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ")!"

    invoke-static {v1, p1, p0}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "!"

    invoke-static {p0, p1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lu4/g;->o()Lu4/c;

    move-result-object v0

    sget-object v2, LR3/o;->B:Ls4/c;

    invoke-virtual {p3, v2}, LR3/j;->i(Ls4/c;)LU3/e;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lu4/c;->a(LU3/g;Lu4/g;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Collection"

    invoke-static {v0, v2}, LV4/m;->L0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mutable"

    invoke-static {v2, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(Mutable)"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, p2, v0, v3}, Lu4/g;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    const-string v2, "MutableMap.MutableEntry"

    invoke-static {v2, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Map.Entry"

    invoke-static {v3, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(Mutable)Map.(Mutable)Entry"

    invoke-static {v4, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, p2, v3, v0}, Lu4/g;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lu4/g;->o()Lu4/c;

    move-result-object v0

    const-string v2, "Array"

    invoke-virtual {p3, v2}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object p3

    invoke-interface {v0, p3, p0}, Lu4/c;->a(LU3/g;Lu4/g;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, LV4/m;->L0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Array<"

    invoke-virtual {p0, v0}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Array<out "

    invoke-virtual {p0, v2}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Array<(out) "

    invoke-virtual {p0, v3}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p2, v2, p0}, Lu4/g;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final D(LU3/P;Ljava/lang/StringBuilder;)V
    .locals 3

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->t:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, LU3/P;->b0()Lx4/g;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lu4/g;->A(Lx4/g;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method

.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu4/g;->r()Lu4/s;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    sget-object v0, Lu4/k;->U:[LL3/l;

    const/16 v1, 0x2e

    aget-object v0, v0, v1

    iget-object p0, p0, Lu4/k;->S:Lu4/j;

    invoke-virtual {p0, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "<b>"

    const-string v0, "</b>"

    invoke-static {p0, p1, v0}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final F(LU3/b;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lu4/h;->l:Lu4/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lu4/g;->t()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p1}, LU3/b;->f0()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const-string p0, "/*"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LU3/b;->f0()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1

    const-string p0, "SYNTHESIZED"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    const-string p0, "DELEGATION"

    goto :goto_0

    :cond_3
    const-string p0, "FAKE_OVERRIDE"

    goto :goto_0

    :cond_4
    const-string p0, "DECLARATION"

    :goto_0
    invoke-static {p0}, LK/I;->v0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*/ "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method public final G(LU3/v;Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-interface {p1}, LU3/v;->B()Z

    move-result v0

    const-string v1, "external"

    invoke-virtual {p0, p2, v0, v1}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lu4/h;->o:Lu4/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, LU3/v;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "expect"

    invoke-virtual {p0, p2, v0, v3}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lu4/h;->p:Lu4/h;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, LU3/v;->e0()Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    const-string p1, "actual"

    invoke-virtual {p0, p2, v1, p1}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final H(Ljava/lang/StringBuilder;II)V
    .locals 3

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->p:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object p3

    sget-object v0, Lu4/h;->h:Lu4/h;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    const-string p2, "ABSTRACT"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    const-string p2, "OPEN"

    goto :goto_0

    :cond_3
    const-string p2, "SEALED"

    goto :goto_0

    :cond_4
    const-string p2, "FINAL"

    :goto_0
    invoke-static {p2}, LK/I;->v0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final I(LU3/b;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-static {p1}, Lv4/f;->s(LU3/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LU3/v;->e()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->z:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu4/n;

    sget-object v1, Lu4/n;->d:Lu4/n;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, LU3/v;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, LU3/b;->m()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, LU3/v;->e()I

    move-result v0

    const-string v1, "callable.modality"

    invoke-static {v0, v1}, LB/a;->y(ILjava/lang/String;)V

    invoke-static {p1}, Lu4/g;->u(LU3/v;)I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lu4/g;->H(Ljava/lang/StringBuilder;II)V

    :cond_2
    return-void
.end method

.method public final J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final K(Ls4/f;Z)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lp4/g;->P(Ls4/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->S:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu4/g;->r()Lu4/s;

    move-result-object p0

    sget-object v0, Lu4/s;->e:Lu4/q;

    if-ne p0, v0, :cond_0

    if-eqz p2, :cond_0

    const-string p0, "<b>"

    const-string p2, "</b>"

    invoke-static {p0, p1, p2}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final L(LU3/j;Ljava/lang/StringBuilder;Z)V
    .locals 1

    invoke-interface {p1}, LU3/j;->r()Ls4/f;

    move-result-object p1

    const-string v0, "descriptor.name"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lu4/g;->K(Ls4/f;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final M(Ljava/lang/StringBuilder;LJ4/C;)V
    .locals 4

    invoke-virtual {p2}, LJ4/C;->B0()LJ4/b0;

    move-result-object v0

    instance-of v1, v0, LJ4/a;

    if-eqz v1, :cond_0

    check-cast v0, LJ4/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    iget-object p2, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x29

    aget-object v2, v1, v2

    iget-object v3, p2, Lu4/k;->P:Lu4/j;

    invoke-virtual {v3, v2}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, LJ4/a;->e:LJ4/G;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v3}, Lu4/g;->N(Ljava/lang/StringBuilder;LJ4/C;)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, LJ4/a;->f:LJ4/G;

    invoke-virtual {p0, p1, v0}, Lu4/g;->N(Ljava/lang/StringBuilder;LJ4/C;)V

    const/16 v0, 0x28

    aget-object v0, v1, v0

    iget-object p2, p2, Lu4/k;->O:Lu4/j;

    invoke-virtual {p2, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lu4/g;->r()Lu4/s;

    move-result-object p2

    sget-object v0, Lu4/s;->e:Lu4/q;

    if-ne p2, v0, :cond_2

    const-string p2, "<font color=\"808080\"><i>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p2, " /* = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v3}, Lu4/g;->N(Ljava/lang/StringBuilder;LJ4/C;)V

    const-string p2, " */"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu4/g;->r()Lu4/s;

    move-result-object p0

    if-ne p0, v0, :cond_3

    const-string p0, "</i></font>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Lu4/g;->N(Ljava/lang/StringBuilder;LJ4/C;)V

    return-void
.end method

.method public final N(Ljava/lang/StringBuilder;LJ4/C;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, LJ4/E;

    iget-object v4, v0, Lu4/g;->a:Lu4/k;

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Lu4/k;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, LJ4/E;

    iget-object v3, v3, LJ4/E;->g:LI4/i;

    iget-object v5, v3, LI4/h;->f:Ljava/lang/Object;

    sget-object v6, LI4/k;->d:LI4/k;

    if-eq v5, v6, :cond_0

    iget-object v3, v3, LI4/h;->f:Ljava/lang/Object;

    sget-object v5, LI4/k;->e:LI4/k;

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "<Not computed yet>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, LJ4/C;->B0()LJ4/b0;

    move-result-object v2

    instance-of v3, v2, LJ4/w;

    if-eqz v3, :cond_2

    check-cast v2, LJ4/w;

    invoke-virtual {v2, v0, v0}, LJ4/w;->G0(Lu4/g;Lu4/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_2
    instance-of v3, v2, LJ4/G;

    if-eqz v3, :cond_1c

    check-cast v2, LJ4/G;

    sget-object v3, LJ4/Z;->b:LJ4/p;

    invoke-static {v2, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    if-eqz v2, :cond_3

    invoke-virtual {v2}, LJ4/C;->q0()LJ4/M;

    move-result-object v3

    sget-object v5, LJ4/Z;->a:LJ4/p;

    iget-object v5, v5, LJ4/p;->e:LJ4/M;

    if-ne v3, v5, :cond_3

    goto/16 :goto_b

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, LJ4/C;->q0()LJ4/M;

    :cond_4
    invoke-static {v2}, LJ4/c;->i(LJ4/C;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1, v2}, Lu4/g;->B(Ljava/lang/StringBuilder;LJ4/G;)V

    goto/16 :goto_c

    :cond_5
    invoke-static {v2}, Lu4/g;->g0(LJ4/C;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget-object v5, v0, Lu4/g;->b:Lq3/j;

    invoke-virtual {v5}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu4/g;

    invoke-static {v5, v1, v2}, Lu4/g;->y(Lu4/g;Ljava/lang/StringBuilder;LV3/a;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v3, :cond_6

    move v5, v6

    goto :goto_1

    :cond_6
    move v5, v7

    :goto_1
    invoke-static {v2}, LR3/f;->R(LJ4/C;)Z

    move-result v8

    invoke-virtual {v2}, LJ4/C;->z0()Z

    move-result v9

    invoke-static {v2}, LR3/f;->J(LJ4/C;)LJ4/C;

    move-result-object v10

    if-nez v9, :cond_8

    if-eqz v5, :cond_7

    if-eqz v10, :cond_7

    goto :goto_2

    :cond_7
    move v11, v7

    goto :goto_3

    :cond_8
    :goto_2
    move v11, v6

    :goto_3
    const-string v12, "("

    if-eqz v11, :cond_c

    if-eqz v8, :cond_9

    const/16 v5, 0x28

    invoke-virtual {v1, v3, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {p1 .. p1}, LV4/m;->r0(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, LR3/f;->S(C)Z

    invoke-static/range {p1 .. p1}, LV4/m;->r0(Ljava/lang/CharSequence;)I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0x29

    if-eq v3, v5, :cond_b

    invoke-static/range {p1 .. p1}, LV4/m;->r0(Ljava/lang/CharSequence;)I

    move-result v3

    const-string v5, "()"

    invoke-virtual {v1, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Char sequence is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_4
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_5
    const-string v3, "suspend"

    invoke-virtual {v0, v1, v8, v3}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v3, ")"

    if-eqz v10, :cond_12

    invoke-static {v10}, Lu4/g;->g0(LJ4/C;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10}, LJ4/C;->z0()Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_d
    invoke-static {v10}, LR3/f;->R(LJ4/C;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-interface {v10}, LV3/a;->p()LV3/h;

    move-result-object v5

    invoke-interface {v5}, LV3/h;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_6

    :cond_e
    move v5, v7

    goto :goto_7

    :cond_f
    :goto_6
    move v5, v6

    :goto_7
    if-eqz v5, :cond_10

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v0, v1, v10}, Lu4/g;->M(Ljava/lang/StringBuilder;LJ4/C;)V

    if-eqz v5, :cond_11

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LR3/f;->N(LJ4/C;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v7

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    add-int/lit8 v10, v8, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LJ4/P;

    if-lez v8, :cond_13

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v8, v4, Lu4/k;->R:Lu4/j;

    sget-object v13, Lu4/k;->U:[LL3/l;

    const/16 v14, 0x2b

    aget-object v13, v13, v14

    invoke-virtual {v8, v13}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v12}, LJ4/P;->b()LJ4/C;

    move-result-object v8

    const-string v13, "typeProjection.type"

    invoke-static {v8, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, LR3/f;->x(LJ4/C;)Ls4/f;

    move-result-object v8

    goto :goto_9

    :cond_14
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_15

    invoke-virtual {v0, v8, v7}, Lu4/g;->K(Ls4/f;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v8, "typeProjection"

    invoke-static {v12, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v12, Lu4/f;

    const/4 v14, 0x0

    invoke-direct {v12, v0, v14}, Lu4/f;-><init>(Lu4/g;I)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v15, ", "

    const/16 v19, 0x3c

    move-object v14, v8

    move-object/from16 v18, v12

    invoke-static/range {v13 .. v19}, Lr3/j;->y0(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v8, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v10

    goto :goto_8

    :cond_16
    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lu4/g;->r()Lu4/s;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_18

    if-ne v4, v6, :cond_17

    const-string v4, "&rarr;"

    goto :goto_a

    :cond_17
    new-instance v0, LW4/m;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    const-string v4, "->"

    invoke-virtual {v0, v4}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LR3/f;->P(LJ4/C;)Z

    invoke-virtual {v2}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lr3/j;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ4/P;

    invoke-virtual {v2}, LJ4/P;->b()LJ4/C;

    move-result-object v2

    const-string v4, "arguments.last().type"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lu4/g;->M(Ljava/lang/StringBuilder;LJ4/C;)V

    if-eqz v11, :cond_19

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    if-eqz v9, :cond_1c

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_1a
    invoke-virtual {v0, v1, v2}, Lu4/g;->B(Ljava/lang/StringBuilder;LJ4/G;)V

    goto :goto_c

    :cond_1b
    :goto_b
    const-string v0, "???"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_c
    return-void
.end method

.method public final O(LU3/b;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lu4/h;->i:Lu4/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, LU3/b;->m()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->z:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu4/n;

    sget-object v1, Lu4/n;->e:Lu4/n;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    const-string v1, "override"

    invoke-virtual {p0, p2, v0, v1}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lu4/g;->t()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/*"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LU3/b;->m()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "*/ "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final P(Ls4/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p2}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls4/c;->i()Ls4/e;

    move-result-object p1

    const-string p2, "fqName.toUnsafe()"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ls4/e;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lp4/g;->Q(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final Q(Ljava/lang/StringBuilder;Lw0/s;)V
    .locals 3

    iget-object v0, p2, Lw0/s;->c:Ljava/lang/Object;

    check-cast v0, Lw0/s;

    iget-object v1, p2, Lw0/s;->a:Ljava/lang/Object;

    check-cast v1, LU3/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lu4/g;->Q(Ljava/lang/StringBuilder;Lw0/s;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, LU3/j;->r()Ls4/f;

    move-result-object v0

    const-string v2, "possiblyInnerType.classifierDescriptor.name"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lu4/g;->K(Ls4/f;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {v1}, LU3/g;->E()LJ4/M;

    move-result-object v0

    const-string v1, "possiblyInnerType.classi\u2026escriptor.typeConstructor"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lu4/g;->W(LJ4/M;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p2, p2, Lw0/s;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Lu4/g;->V(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final R(LU3/b;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-interface {p1}, LU3/a;->Y()LU3/J;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, LV3/d;->j:LV3/d;

    invoke-virtual {p0, p2, p1, v0}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    check-cast p1, LX3/d;

    invoke-virtual {p1}, LX3/d;->j()LJ4/C;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lu4/g;->g0(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, LJ4/Z;->e(LJ4/C;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final S(LU3/b;Ljava/lang/StringBuilder;)V
    .locals 3

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->D:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, LU3/a;->Y()LU3/J;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, " on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, LX3/d;

    invoke-virtual {p1}, LX3/d;->j()LJ4/C;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final U(LJ4/C;)Ljava/lang/String;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lu4/g;->a:Lu4/k;

    sget-object v2, Lu4/k;->U:[LL3/l;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    iget-object v1, v1, Lu4/k;->w:Lu4/j;

    invoke-virtual {v1, v2}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE3/b;

    invoke-interface {v1, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ4/C;

    invoke-virtual {p0, v0, p1}, Lu4/g;->M(Ljava/lang/StringBuilder;LJ4/C;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final V(Ljava/util/List;)Ljava/lang/String;
    .locals 8

    const-string v0, "typeArguments"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lu4/f;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lu4/f;-><init>(Lu4/g;I)V

    const-string v2, ", "

    const/16 v6, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, v7

    invoke-static/range {v0 .. v6}, Lr3/j;->y0(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)V

    const-string p1, ">"

    invoke-virtual {p0, p1}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final W(LJ4/M;)Ljava/lang/String;
    .locals 3

    const-string v0, "typeConstructor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v1, v0, LU3/O;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    instance-of v1, v0, LU3/e;

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v0, LH4/v;

    :goto_1
    if-eqz v2, :cond_3

    const-string p1, "klass"

    invoke-static {v0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LJ4/v;->g(LU3/j;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, LU3/g;->E()LJ4/M;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lu4/g;->o()Lu4/c;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Lu4/c;->a(LU3/g;Lu4/g;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    instance-of p0, p1, LJ4/B;

    if-eqz p0, :cond_4

    check-cast p1, LJ4/B;

    sget-object p0, Lu4/d;->p:Lu4/d;

    invoke-virtual {p1, p0}, LJ4/B;->h(LE3/b;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "Unexpected classifier: "

    invoke-static {p0, p1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final X(LU3/O;Ljava/lang/StringBuilder;Z)V
    .locals 7

    if-eqz p3, :cond_0

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lu4/g;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LU3/O;->r0()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p1}, LU3/O;->i0()Z

    move-result v0

    const-string v1, "reified"

    invoke-virtual {p0, p2, v0, v1}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, LU3/O;->z()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "out"

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    throw p0

    :cond_3
    const-string v0, "in"

    goto :goto_0

    :cond_4
    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-virtual {p0, p2, v1, v0}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    invoke-virtual {p0, p1, p2, p3}, Lu4/g;->L(LU3/j;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v4, 0x8d

    const-string v5, " : "

    if-le v1, v3, :cond_6

    if-eqz p3, :cond_7

    :cond_6
    if-ne v1, v3, :cond_a

    :cond_7
    invoke-interface {p1}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ4/C;

    if-eqz p1, :cond_9

    invoke-static {p1}, LR3/j;->w(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, LJ4/C;->z0()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    invoke-static {v4}, LR3/j;->a(I)V

    throw v0

    :cond_a
    if-eqz p3, :cond_e

    invoke-interface {p1}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/C;

    if-eqz v1, :cond_d

    invoke-static {v1}, LR3/j;->w(LJ4/C;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v1}, LJ4/C;->z0()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_2

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    const-string v3, " & "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0, v1}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    goto :goto_2

    :cond_d
    invoke-static {v4}, LR3/j;->a(I)V

    throw v0

    :cond_e
    :goto_4
    if-eqz p3, :cond_f

    const-string p1, ">"

    invoke-virtual {p0, p1}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    return-void
.end method

.method public final Y(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/O;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lu4/g;->X(LU3/O;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Z(Ljava/lang/StringBuilder;Ljava/util/List;Z)V
    .locals 3

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->u:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p1}, Lu4/g;->Y(Ljava/util/List;Ljava/lang/StringBuilder;)V

    const-string p2, ">"

    invoke-virtual {p0, p2}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final a()V
    .locals 0

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0}, Lu4/k;->a()V

    return-void
.end method

.method public final a0(LU3/P;Ljava/lang/StringBuilder;Z)V
    .locals 0

    if-nez p3, :cond_0

    instance-of p3, p1, LX3/W;

    if-nez p3, :cond_2

    :cond_0
    invoke-interface {p1}, LU3/P;->R()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "var"

    goto :goto_0

    :cond_1
    const-string p1, "val"

    :goto_0
    invoke-virtual {p0, p1}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public final b(Lu4/o;)V
    .locals 0

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0, p1}, Lu4/k;->b(Lu4/o;)V

    return-void
.end method

.method public final b0(LX3/W;ZLjava/lang/StringBuilder;Z)V
    .locals 11

    if-eqz p4, :cond_0

    const-string v0, "value-parameter"

    invoke-virtual {p0, v0}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lu4/g;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, LX3/W;->i:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, v0}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    const-string v1, "crossinline"

    iget-boolean v2, p1, LX3/W;->k:Z

    invoke-virtual {p0, p3, v2, v1}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v1, "noinline"

    iget-boolean v2, p1, LX3/W;->l:Z

    invoke-virtual {p0, p3, v2, v1}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v1, p0, Lu4/g;->a:Lu4/k;

    sget-object v2, Lu4/k;->U:[LL3/l;

    const/16 v3, 0x10

    aget-object v3, v2, v3

    iget-object v4, v1, Lu4/k;->r:Lu4/j;

    invoke-virtual {v4, v3}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p1}, LX3/W;->J0()LU3/a;

    move-result-object v3

    instance-of v6, v3, LU3/d;

    if-eqz v6, :cond_2

    check-cast v3, LU3/d;

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    check-cast v3, LX3/l;

    iget-boolean v3, v3, LX3/l;->F:Z

    if-ne v3, v5, :cond_4

    move v3, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v4

    :goto_2
    if-eqz v3, :cond_5

    const/16 v6, 0x11

    aget-object v6, v2, v6

    iget-object v7, v1, Lu4/k;->s:Lu4/j;

    invoke-virtual {v7, v6}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "actual"

    invoke-virtual {p0, p3, v6, v7}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_5
    move-object v6, p1

    check-cast v6, LX3/X;

    invoke-virtual {v6}, LX3/X;->j()LJ4/C;

    move-result-object v7

    const-string v8, "variable.type"

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v8, v6, LX3/W;

    if-eqz v8, :cond_6

    move-object v8, v6

    check-cast v8, LX3/W;

    goto :goto_3

    :cond_6
    move-object v8, v0

    :goto_3
    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, v8, LX3/W;->m:LJ4/C;

    :goto_4
    if-nez v0, :cond_8

    move-object v8, v7

    goto :goto_5

    :cond_8
    move-object v8, v0

    :goto_5
    if-eqz v0, :cond_9

    move v9, v5

    goto :goto_6

    :cond_9
    move v9, v4

    :goto_6
    const-string v10, "vararg"

    invoke-virtual {p0, p3, v9, v10}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v3, :cond_a

    if-eqz p4, :cond_b

    invoke-virtual {p0}, Lu4/g;->q()Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    invoke-virtual {p0, v6, p3, v3}, Lu4/g;->a0(LU3/P;Ljava/lang/StringBuilder;Z)V

    :cond_b
    if-eqz p2, :cond_c

    invoke-virtual {p0, v6, p3, p4}, Lu4/g;->L(LU3/j;Ljava/lang/StringBuilder;Z)V

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p0, v8}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, p3}, Lu4/g;->D(LU3/P;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lu4/g;->t()Z

    move-result p2

    if-eqz p2, :cond_d

    if-eqz v0, :cond_d

    const-string p2, " /*"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const/16 p0, 0x17

    aget-object p2, v2, p0

    iget-object p4, v1, Lu4/k;->x:Lu4/j;

    invoke-virtual {p4, p2}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LE3/b;

    if-eqz p2, :cond_f

    invoke-virtual {v1}, Lu4/k;->l()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, LX3/W;->I0()Z

    move-result p2

    goto :goto_7

    :cond_e
    invoke-static {p1}, Lz4/e;->a(LX3/W;)Z

    move-result p2

    :goto_7
    if-eqz p2, :cond_f

    move v4, v5

    :cond_f
    if-eqz v4, :cond_10

    aget-object p0, v2, p0

    iget-object p2, v1, Lu4/k;->x:Lu4/j;

    invoke-virtual {p2, p0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LE3/b;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, " = "

    invoke-static {p0, p1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0}, Lu4/k;->c()V

    return-void
.end method

.method public final c0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V
    .locals 7

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->C:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu4/o;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 p3, 0x2

    if-ne v0, p3, :cond_1

    :cond_0
    move p3, v2

    goto :goto_0

    :cond_1
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    if-nez p3, :cond_0

    :cond_3
    move p3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0}, Lu4/g;->s()Lu4/e;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "builder"

    invoke-static {p1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX3/W;

    invoke-virtual {p0}, Lu4/g;->s()Lu4/e;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "parameter"

    invoke-static {v5, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5, p3, p1, v2}, Lu4/g;->b0(LX3/W;ZLjava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Lu4/g;->s()Lu4/e;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v0, -0x1

    if-eq v3, v5, :cond_4

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lu4/g;->s()Lu4/e;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final d(Lu4/c;)V
    .locals 0

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0, p1}, Lu4/k;->d(Lu4/c;)V

    return-void
.end method

.method public final d0(LU3/n;Ljava/lang/StringBuilder;)Z
    .locals 5

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lu4/h;->g:Lu4/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v2, Lu4/k;->U:[LL3/l;

    const/16 v3, 0xc

    aget-object v3, v2, v3

    iget-object v4, v0, Lu4/k;->n:Lu4/j;

    invoke-virtual {v4, v3}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p1, LU3/n;->a:LU3/b0;

    invoke-virtual {p1}, LU3/b0;->e()LU3/b0;

    move-result-object p1

    invoke-static {p1}, LU3/o;->f(LU3/b0;)LU3/n;

    move-result-object p1

    :cond_1
    const/16 v3, 0xd

    aget-object v2, v2, v3

    iget-object v0, v0, Lu4/k;->o:Lu4/j;

    invoke-virtual {v0, v2}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, LU3/o;->j:LU3/n;

    invoke-static {p1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p1, p1, LU3/n;->a:LU3/b0;

    invoke-virtual {p1}, LU3/b0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0}, Lu4/k;->e()V

    return-void
.end method

.method public final e0(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 8

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->u:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/O;

    invoke-interface {v2}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object v3

    const-string v4, "typeParameter.upperBounds"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lr3/j;->q0(ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ4/C;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, LU3/j;->r()Ls4/f;

    move-result-object v6

    const-string v7, "typeParameter.name"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lu4/g;->K(Ls4/f;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "it"

    invoke-static {v4, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "where"

    invoke-virtual {p0, v0}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ", "

    const/4 v4, 0x0

    const/16 v7, 0x7c

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lr3/j;->y0(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)V

    :cond_3
    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0}, Lu4/k;->f()V

    return-void
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0}, Lu4/k;->g()V

    return-void
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0}, Lu4/k;->h()V

    return-void
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0}, Lu4/k;->i()V

    return-void
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0}, Lu4/k;->j()V

    return-void
.end method

.method public final k(Ljava/util/Set;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {p0, p1}, Lu4/k;->k(Ljava/util/Set;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lu4/g;->r()Lu4/s;

    move-result-object p0

    invoke-virtual {p0, p1}, Lu4/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lu4/c;
    .locals 2

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    iget-object p0, p0, Lu4/k;->b:Lu4/j;

    sget-object v0, Lu4/k;->U:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu4/c;

    return-object p0
.end method

.method public final p()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    sget-object v0, Lu4/k;->U:[LL3/l;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object p0, p0, Lu4/k;->e:Lu4/j;

    invoke-virtual {p0, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final q()Z
    .locals 2

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    sget-object v0, Lu4/k;->U:[LL3/l;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object p0, p0, Lu4/k;->f:Lu4/j;

    invoke-virtual {p0, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final r()Lu4/s;
    .locals 2

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    sget-object v0, Lu4/k;->U:[LL3/l;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    iget-object p0, p0, Lu4/k;->B:Lu4/j;

    invoke-virtual {p0, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu4/s;

    return-object p0
.end method

.method public final s()Lu4/e;
    .locals 2

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    sget-object v0, Lu4/k;->U:[LL3/l;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    iget-object p0, p0, Lu4/k;->A:Lu4/j;

    invoke-virtual {p0, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu4/e;

    return-object p0
.end method

.method public final t()Z
    .locals 2

    iget-object p0, p0, Lu4/g;->a:Lu4/k;

    sget-object v0, Lu4/k;->U:[LL3/l;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object p0, p0, Lu4/k;->j:Lu4/j;

    invoke-virtual {p0, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final v(LU3/j;)Ljava/lang/String;
    .locals 7

    const-string v0, "declarationDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Landroidx/recyclerview/widget/y;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/y;-><init>(Lu4/g;)V

    invoke-interface {p1, v1, v0}, LU3/j;->L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lu4/g;->a:Lu4/k;

    iget-object v2, v1, Lu4/k;->c:Lu4/j;

    sget-object v3, Lu4/k;->U:[LL3/l;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, p1, LU3/B;

    if-nez v2, :cond_4

    instance-of v2, p1, LU3/G;

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, LU3/j;->g()LU3/j;

    move-result-object v2

    if-eqz v2, :cond_4

    instance-of v5, v2, LU3/x;

    if-nez v5, :cond_4

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu4/g;->r()Lu4/s;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_2

    if-ne v6, v4, :cond_1

    const-string v4, "<i>defined in</i>"

    goto :goto_0

    :cond_1
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    const-string v4, "defined in"

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v4

    const-string v5, "getFqName(containingDeclaration)"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v4, Ls4/e;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p0, "root package"

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ls4/e;->e()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lp4/g;->Q(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v1, Lu4/k;->d:Lu4/j;

    const/4 v1, 0x2

    aget-object v1, v3, v1

    invoke-virtual {p0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    instance-of p0, v2, LU3/B;

    if-eqz p0, :cond_4

    instance-of p0, p1, LU3/k;

    if-eqz p0, :cond_4

    check-cast p1, LU3/k;

    invoke-interface {p1}, LU3/k;->i()LU3/L;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w(LV3/b;LV3/d;)Ljava/lang/String;
    .locals 10

    const-string v0, "annotation"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, ":"

    iget-object p2, p2, LV3/d;->d:Ljava/lang/String;

    invoke-static {v1, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1}, LV3/b;->j()LJ4/C;

    move-result-object p2

    invoke-virtual {p0, p2}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu4/g;->a:Lu4/k;

    sget-object v2, Lu4/k;->U:[LL3/l;

    const/16 v3, 0x25

    aget-object v4, v2, v3

    iget-object v5, v1, Lu4/k;->L:Lu4/j;

    invoke-virtual {v5, v4}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu4/a;

    iget-boolean v4, v4, Lu4/a;->d:Z

    if-eqz v4, :cond_f

    invoke-interface {p1}, LV3/b;->b()Ljava/util/Map;

    move-result-object v4

    const/16 v6, 0x20

    aget-object v2, v2, v6

    iget-object v1, v1, Lu4/k;->G:Lu4/j;

    invoke-virtual {v1, v2}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Lz4/e;->d(LV3/b;)LU3/e;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p1}, LU3/e;->T()LU3/d;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    check-cast p1, LX3/w;

    invoke-virtual {p1}, LX3/w;->n0()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, LX3/W;

    invoke-virtual {v6}, LX3/W;->I0()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX3/W;

    check-cast v1, LX3/p;

    invoke-virtual {v1}, LX3/p;->r()Ls4/f;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    sget-object v2, Lr3/r;->d:Lr3/r;

    :goto_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ls4/f;

    const-string v8, "it"

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls4/f;

    invoke-virtual {v6}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, " = ..."

    invoke-static {v7, v6}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls4/f;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx4/g;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {p0, v6}, Lu4/g;->A(Lx4/g;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_c
    const-string v6, "..."

    :goto_8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-static {v1, v4}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lr3/j;->M0(Ljava/util/AbstractList;)Ljava/util/List;

    move-result-object v1

    sget-object p1, Lu4/k;->U:[LL3/l;

    aget-object p1, p1, v3

    invoke-virtual {v5, p1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu4/a;

    iget-boolean p1, p1, Lu4/a;->e:Z

    if-nez p1, :cond_e

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    :cond_e
    const-string v5, ")"

    const/4 v6, 0x0

    const-string v3, ", "

    const-string v4, "("

    const/16 v7, 0x70

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lr3/j;->y0(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)V

    :cond_f
    invoke-virtual {p0}, Lu4/g;->t()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {p2}, LJ4/c;->i(LJ4/C;)Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {p2}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    instance-of p0, p0, LU3/z;

    if-eqz p0, :cond_11

    :cond_10
    const-string p0, " /* annotation class not found */"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V
    .locals 6

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lu4/h;->j:Lu4/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, LJ4/C;

    iget-object v1, p0, Lu4/g;->a:Lu4/k;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lu4/k;->m()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x22

    aget-object v0, v0, v2

    iget-object v2, v1, Lu4/k;->I:Lu4/j;

    invoke-virtual {v2, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_0
    sget-object v2, Lu4/k;->U:[LL3/l;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    iget-object v3, v1, Lu4/k;->K:Lu4/j;

    invoke-virtual {v3, v2}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE3/b;

    invoke-interface {p2}, LV3/a;->p()LV3/h;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LV3/b;

    invoke-interface {v3}, LV3/b;->a()Ls4/c;

    move-result-object v4

    invoke-static {v0, v4}, Lr3/j;->p0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, LV3/b;->a()Ls4/c;

    move-result-object v4

    sget-object v5, LR3/o;->q:Ls4/c;

    invoke-static {v4, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    invoke-virtual {p0, v3, p3}, Lu4/g;->w(LV3/b;LV3/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lu4/k;->U:[LL3/l;

    const/16 v4, 0x21

    aget-object v3, v3, v4

    iget-object v4, v1, Lu4/k;->H:Lu4/j;

    invoke-virtual {v4, v3}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final z(LU3/h;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-interface {p1}, LU3/h;->o()Ljava/util/List;

    move-result-object v0

    const-string v1, "classifier.declaredTypeParameters"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/g;->E()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "classifier.typeConstructor.parameters"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu4/g;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, LU3/h;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    const-string p1, " /*captured type parameters: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lu4/g;->Y(Ljava/util/List;Ljava/lang/StringBuilder;)V

    const-string p0, "*/"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
