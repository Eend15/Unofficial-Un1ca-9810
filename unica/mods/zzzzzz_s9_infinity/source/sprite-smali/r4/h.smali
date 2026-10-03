.class public final Lr4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt4/i;

    invoke-direct {v0}, Lt4/i;-><init>()V

    sget-object v1, Lq4/j;->a:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->b:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->c:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->d:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->e:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->f:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->g:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->h:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->i:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->j:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->k:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->l:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->m:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sget-object v1, Lq4/j;->n:Lt4/o;

    invoke-virtual {v0, v1}, Lt4/i;->a(Lt4/o;)V

    sput-object v0, Lr4/h;->a:Lt4/i;

    return-void
.end method

.method public static a(Ln4/l;Lp4/f;LX3/C;)Lr4/e;
    .locals 8

    const-string v0, "proto"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq4/j;->a:Lt4/o;

    const-string v1, "constructorSignature"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lj0/s;->x(Lt4/m;Lt4/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq4/c;

    if-eqz v0, :cond_0

    iget v1, v0, Lq4/c;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lq4/c;->f:I

    invoke-interface {p1, v1}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<init>"

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lq4/c;->e:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iget p0, v0, Lq4/c;->g:I

    invoke-interface {p1, p0}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    iget-object p0, p0, Ln4/l;->h:Ljava/util/List;

    const-string v0, "proto.valueParameterList"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/Z;

    const-string v3, "it"

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lj0/s;->K(Ln4/Z;LX3/C;)Ln4/Q;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/h;->e(Ln4/Q;Lp4/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v5, ")V"

    const/4 v6, 0x0

    const-string v3, ""

    const-string v4, "("

    const/16 v7, 0x38

    invoke-static/range {v2 .. v7}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance p1, Lr4/e;

    invoke-direct {p1, v1, p0}, Lr4/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static b(Ln4/G;Lp4/f;LX3/C;Z)Lr4/d;
    .locals 4

    const-string v0, "proto"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq4/j;->d:Lt4/o;

    const-string v1, "propertySignature"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lj0/s;->x(Lt4/m;Lt4/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq4/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, v0, Lq4/d;->e:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lq4/d;->f:Lq4/b;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_3

    iget p3, v0, Lq4/b;->e:I

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_3

    iget p3, v0, Lq4/b;->f:I

    goto :goto_1

    :cond_3
    iget p3, p0, Ln4/G;->i:I

    :goto_1
    if-eqz v0, :cond_4

    iget v2, v0, Lq4/b;->e:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    iget p0, v0, Lq4/b;->g:I

    invoke-interface {p1, p0}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-static {p0, p2}, Lj0/s;->H(Ln4/G;LX3/C;)Ln4/Q;

    move-result-object p0

    invoke-static {p0, p1}, Lr4/h;->e(Ln4/Q;Lp4/f;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    :goto_2
    new-instance p2, Lr4/d;

    invoke-interface {p1, p3}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lr4/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static c(Ln4/y;Lp4/f;LX3/C;)Lr4/e;
    .locals 8

    const-string v0, "proto"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq4/j;->b:Lt4/o;

    const-string v1, "methodSignature"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lj0/s;->x(Lt4/m;Lt4/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq4/c;

    if-eqz v0, :cond_0

    iget v1, v0, Lq4/c;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lq4/c;->f:I

    goto :goto_0

    :cond_0
    iget v1, p0, Ln4/y;->i:I

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lq4/c;->e:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iget p0, v0, Lq4/c;->g:I

    invoke-interface {p1, p0}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    invoke-static {p0, p2}, Lj0/s;->F(Ln4/y;LX3/C;)Ln4/Q;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->e0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Ln4/y;->o:Ljava/util/List;

    const-string v3, "proto.valueParameterList"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln4/Z;

    const-string v5, "it"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p2}, Lj0/s;->K(Ln4/Z;LX3/C;)Ln4/Q;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0, v3}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/Q;

    invoke-static {v3, p1}, Lr4/h;->e(Ln4/Q;Lp4/f;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p0, p2}, Lj0/s;->G(Ln4/y;LX3/C;)Ln4/Q;

    move-result-object p0

    invoke-static {p0, p1}, Lr4/h;->e(Ln4/Q;Lp4/f;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v4

    :cond_5
    const-string v5, ")"

    const/4 v6, 0x0

    const-string v3, ""

    const-string v4, "("

    const/16 v7, 0x38

    invoke-static/range {v2 .. v7}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    new-instance p2, Lr4/e;

    invoke-interface {p1, v1}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lr4/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static final d(Ln4/G;)Z
    .locals 2

    const-string v0, "proto"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr4/c;->a:Lp4/b;

    sget-object v1, Lq4/j;->e:Lt4/o;

    invoke-virtual {p0, v1}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "proto.getExtension(JvmProtoBuf.flags)"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static e(Ln4/Q;Lp4/f;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ln4/Q;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Ln4/Q;->l:I

    invoke-interface {p1, p0}, Lp4/f;->m0(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr4/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final f([Ljava/lang/String;[Ljava/lang/String;)Lq3/f;
    .locals 3

    const-string v0, "strings"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr4/a;->a([Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lq3/f;

    invoke-static {v0, p1}, Lr4/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lr4/g;

    move-result-object p1

    sget-object v1, Ln4/j;->F:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lt4/f;

    invoke-direct {v2, v0}, Lt4/f;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Lr4/h;->a:Lt4/i;

    invoke-interface {v1, v2, v0}, Lt4/y;->a(Lt4/f;Lt4/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/b;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Lt4/f;->a(I)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Lt4/x;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Ln4/j;

    invoke-direct {p0, p1, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    new-instance p1, Lt4/s;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lt4/s;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lt4/s;->d:Lt4/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v0, p0, Lt4/s;->d:Lt4/b;

    throw p0
.end method

.method public static g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lr4/g;
    .locals 3

    new-instance v0, Lr4/g;

    sget-object v1, Lq4/i;->k:Ln4/a;

    sget-object v2, Lr4/h;->a:Lt4/i;

    invoke-virtual {v1, p0, v2}, Lt4/c;->b(Ljava/io/ByteArrayInputStream;Lt4/i;)Lt4/b;

    move-result-object p0

    check-cast p0, Lq4/i;

    const-string v1, "parseDelimitedFrom(this, EXTENSION_REGISTRY)"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lr4/g;-><init>(Lq4/i;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static final h([Ljava/lang/String;[Ljava/lang/String;)Lq3/f;
    .locals 3

    const-string v0, "data"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr4/a;->a([Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lq3/f;

    invoke-static {v0, p1}, Lr4/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lr4/g;

    move-result-object p1

    sget-object v1, Ln4/C;->o:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lt4/f;

    invoke-direct {v2, v0}, Lt4/f;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Lr4/h;->a:Lt4/i;

    invoke-interface {v1, v2, v0}, Lt4/y;->a(Lt4/f;Lt4/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/b;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Lt4/f;->a(I)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Lt4/x;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Ln4/C;

    invoke-direct {p0, p1, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    new-instance p1, Lt4/s;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lt4/s;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lt4/s;->d:Lt4/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v0, p0, Lt4/s;->d:Lt4/b;

    throw p0
.end method
