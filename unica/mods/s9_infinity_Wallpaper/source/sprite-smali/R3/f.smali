.class public abstract LR3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lw0/e;


# direct methods
.method public static final A([Ljava/lang/annotation/Annotation;Ls4/c;)La4/c;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-static {v3}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v4

    invoke-static {v4}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v4

    invoke-virtual {v4}, Ls4/b;->b()Ls4/c;

    move-result-object v4

    invoke-virtual {v4, p1}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, La4/c;

    invoke-direct {v2, v3}, La4/c;-><init>(Ljava/lang/annotation/Annotation;)V

    :goto_2
    return-object v2
.end method

.method public static final B(LU3/x;Ls4/b;)LU3/e;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LR3/f;->C(LU3/x;Ls4/b;)LU3/g;

    move-result-object p0

    instance-of p1, p0, LU3/e;

    if-eqz p1, :cond_0

    check-cast p0, LU3/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final C(LU3/x;Ls4/b;)LU3/g;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv4/p;->a:LU3/w;

    invoke-interface {p0, v0}, LU3/x;->u0(LU3/w;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ls4/b;->g()Ls4/c;

    move-result-object v0

    const-string v1, "classId.packageFqName"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, LU3/x;->v(Ls4/c;)LU3/G;

    move-result-object p0

    invoke-virtual {p1}, Ls4/b;->h()Ls4/c;

    move-result-object p1

    iget-object p1, p1, Ls4/c;->a:Ls4/e;

    invoke-virtual {p1}, Ls4/e;->e()Ljava/util/List;

    move-result-object p1

    check-cast p0, LX3/z;

    iget-object p0, p0, LX3/z;->j:LC4/k;

    invoke-static {p1}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "segments.first()"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls4/f;

    sget-object v1, Lc4/b;->j:Lc4/b;

    invoke-virtual {p0, v0, v1}, LC4/k;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls4/f;

    instance-of v3, p0, LU3/e;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    check-cast p0, LU3/e;

    invoke-interface {p0}, LU3/e;->Q()LC4/o;

    move-result-object p0

    const-string v3, "name"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v2, v1}, LC4/q;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object p0

    instance-of v2, p0, LU3/e;

    if-eqz v2, :cond_3

    check-cast p0, LU3/e;

    goto :goto_0

    :cond_3
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_4
    move-object v0, p0

    :goto_1
    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static final D(LU3/x;Ls4/b;Lw0/i;)LU3/e;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LU3/p;->l:LU3/p;

    invoke-static {p0, p1}, LU4/j;->e0(LE3/b;Ljava/lang/Object;)LU4/i;

    move-result-object p0

    sget-object v0, LU3/q;->e:LU3/q;

    invoke-static {p0, v0}, LU4/j;->f0(LU4/i;LE3/b;)LU4/q;

    move-result-object p0

    invoke-static {p0}, LU4/j;->h0(LU4/i;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lw0/i;->w(Ls4/b;Ljava/util/List;)LU3/e;

    move-result-object p0

    return-object p0
.end method

.method public static final E([Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, La4/c;

    invoke-direct {v4, v3}, La4/c;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static F(La4/f;)Ljava/util/List;
    .locals 0

    invoke-interface {p0}, La4/f;->c()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lr3/r;->d:Lr3/r;

    goto :goto_1

    :cond_1
    invoke-static {p0}, LR3/f;->E([Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final I(LU3/g;)LS3/e;
    .locals 4

    instance-of v0, p0, LU3/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, LR3/j;->G(LU3/g;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object p0

    invoke-virtual {p0}, Ls4/e;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ls4/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, LS3/e;->f:LG4/d;

    invoke-virtual {p0}, Ls4/e;->f()Ls4/f;

    move-result-object v2

    invoke-virtual {v2}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shortName().asString()"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls4/e;->g()Ls4/c;

    move-result-object p0

    invoke-virtual {p0}, Ls4/c;->e()Ls4/c;

    move-result-object p0

    const-string v3, "toSafe().parent()"

    invoke-static {p0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, LG4/d;->o(Ljava/lang/String;Ls4/c;)LS3/d;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, LS3/d;->a:LS3/e;

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static final J(LJ4/C;)LJ4/C;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LR3/f;->P(LJ4/C;)Z

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object v0

    sget-object v1, LR3/o;->p:Ls4/c;

    invoke-interface {v0, v1}, LV3/h;->a(Ls4/c;)LV3/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/P;

    invoke-virtual {p0}, LJ4/P;->b()LJ4/C;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static K(LT2/a;)Ljava/lang/String;
    .locals 2

    check-cast p0, LJ2/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LJ2/a;->a:Landroid/content/SharedPreferences;

    const-string v0, "WMGC_History"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final L(LU3/j;)LU3/g;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of p0, p0, LU3/B;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, LU3/j;->g()LU3/j;

    move-result-object p0

    instance-of p0, p0, LU3/B;

    if-nez p0, :cond_1

    invoke-static {v0}, LR3/f;->L(LU3/j;)LU3/g;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of p0, v0, LU3/g;

    if-eqz p0, :cond_2

    move-object v1, v0

    check-cast v1, LU3/g;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "tableName"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerType"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "`room_table_modification_trigger_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x60

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final N(LJ4/C;)Ljava/util/List;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LR3/f;->P(LJ4/C;)Z

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, LR3/f;->P(LJ4/C;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p0

    sget-object v1, LR3/o;->p:Ls4/c;

    invoke-interface {p0, v1}, LV3/h;->a(Ls4/c;)LV3/b;

    move-result-object p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static O(LV3/h;Ls4/c;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, LV3/h;->a(Ls4/c;)LV3/b;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final P(LJ4/C;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LR3/f;->I(LU3/g;)LS3/e;

    move-result-object p0

    sget-object v1, LS3/e;->g:LS3/e;

    if-eq p0, v1, :cond_1

    sget-object v1, LS3/e;->h:LS3/e;

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static final Q(LU3/C;Ls4/c;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LU3/F;

    if-eqz v0, :cond_0

    check-cast p0, LU3/F;

    invoke-interface {p0, p1}, LU3/F;->c(Ls4/c;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LR3/f;->W(LU3/C;Ls4/c;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final R(LJ4/C;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LR3/f;->I(LU3/g;)LS3/e;

    move-result-object p0

    :goto_0
    sget-object v0, LS3/e;->h:LS3/e;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static S(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static T(D)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, v0, p0

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    if-gtz v2, :cond_0

    cmpg-double v5, p0, v3

    if-gtz v5, :cond_0

    goto/16 :goto_0

    :cond_0
    if-gtz v2, :cond_1

    const-wide/high16 v0, 0x4031000000000000L    # 17.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_1
    if-gtz v2, :cond_2

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_2
    if-gtz v2, :cond_3

    const-wide/high16 v0, 0x4041000000000000L    # 34.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_3

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    goto :goto_0

    :cond_3
    if-gtz v2, :cond_4

    const-wide v0, 0x4045800000000000L    # 43.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_4

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    goto :goto_0

    :cond_4
    if-gtz v2, :cond_5

    const-wide/high16 v0, 0x404b000000000000L    # 54.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_5

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    goto :goto_0

    :cond_5
    if-gtz v2, :cond_6

    const-wide v0, 0x4050400000000000L    # 65.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_6

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_6
    if-gtz v2, :cond_7

    const-wide v0, 0x4053400000000000L    # 77.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_7

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    goto :goto_0

    :cond_7
    if-gtz v2, :cond_8

    const-wide v0, 0x4056400000000000L    # 89.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_8

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    goto :goto_0

    :cond_8
    if-gtz v2, :cond_9

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_9

    move-wide v0, v3

    goto :goto_0

    :cond_9
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0
.end method

.method public static final U(Ljava/util/ArrayList;)LS4/g;
    .locals 4

    new-instance v0, LS4/g;

    invoke-direct {v0}, LS4/g;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LC4/o;

    if-eqz v2, :cond_0

    sget-object v3, LC4/n;->b:LC4/n;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, LS4/g;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final W(LU3/C;Ls4/c;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, LR3/f;->k(LU3/C;Ls4/c;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static X(Ll4/j;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 10

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    const-string v0, "annotationType.declaredMethods"

    invoke-static {p2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :catch_0
    :goto_0
    if-ge v2, v0, :cond_10

    aget-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, LR3/f;->j(Ljava/lang/Class;)Lx4/f;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ll4/j;->n(Ls4/f;Lx4/f;)V

    goto :goto_0

    :cond_0
    sget-object v7, LZ3/d;->a:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p0, v3, v4}, Ll4/j;->t(Ls4/f;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v7, La4/b;->a:Ljava/util/List;

    const-class v7, Ljava/lang/Enum;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    :goto_1
    const-string v6, "if (clazz.isEnum) clazz else clazz.enclosingClass"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v5

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v4

    invoke-interface {p0, v3, v5, v4}, Ll4/j;->s(Ls4/f;Ls4/b;Ls4/f;)V

    goto :goto_0

    :cond_3
    const-class v7, Ljava/lang/annotation/Annotation;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    const-string v6, "clazz.interfaces"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lr3/h;->r0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const-string v6, "annotationClass"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v6

    invoke-interface {p0, v6, v3}, Ll4/j;->r(Ls4/b;Ls4/f;)Ll4/j;

    move-result-object v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    check-cast v4, Ljava/lang/annotation/Annotation;

    invoke-static {v3, v4, v5}, LR3/f;->X(Ll4/j;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {p0, v3}, Ll4/j;->i(Ls4/f;)Ll4/k;

    move-result-object v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v5}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v5

    check-cast v4, [Ljava/lang/Object;

    array-length v6, v4

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_e

    aget-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    if-eqz v8, :cond_7

    check-cast v8, Ljava/lang/Enum;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v8

    invoke-interface {v3, v5, v8}, Ll4/k;->d0(Ls4/b;Ls4/f;)V

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Enum<*>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_e

    aget-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    if-eqz v7, :cond_9

    check-cast v7, Ljava/lang/Class;

    invoke-static {v7}, LR3/f;->j(Ljava/lang/Class;)Lx4/f;

    move-result-object v7

    invoke-interface {v3, v7}, Ll4/k;->q0(Lx4/f;)V

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_d

    check-cast v4, [Ljava/lang/Object;

    array-length v6, v4

    move v7, v1

    :goto_4
    if-ge v7, v6, :cond_e

    aget-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v9

    invoke-interface {v3, v9}, Ll4/k;->k0(Ls4/b;)Ll4/j;

    move-result-object v9

    if-nez v9, :cond_b

    goto :goto_4

    :cond_b
    if-eqz v8, :cond_c

    check-cast v8, Ljava/lang/annotation/Annotation;

    invoke-static {v9, v8, v5}, LR3/f;->X(Ll4/j;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_4

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Annotation"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move v6, v1

    :goto_5
    if-ge v6, v5, :cond_e

    aget-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v3, v7}, Ll4/k;->m0(Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    invoke-interface {v3}, Ll4/k;->h()V

    goto/16 :goto_0

    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported annotation argument value ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    invoke-interface {p0}, Ll4/j;->h()V

    return-void
.end method

.method public static final Y(LX3/D;Ls4/c;)LU3/e;
    .locals 6

    sget-object v0, Lc4/b;->d:Lc4/b;

    const-string v1, "<this>"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fqName"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ls4/c;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Ls4/c;->e()Ls4/c;

    move-result-object v1

    const-string v3, "fqName.parent()"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, LX3/D;->v(Ls4/c;)LU3/G;

    move-result-object v1

    check-cast v1, LX3/z;

    invoke-virtual {p1}, Ls4/c;->f()Ls4/f;

    move-result-object v4

    const-string v5, "fqName.shortName()"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, LX3/z;->j:LC4/k;

    invoke-virtual {v1, v4, v0}, LC4/k;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object v1

    instance-of v4, v1, LU3/e;

    if-eqz v4, :cond_1

    check-cast v1, LU3/e;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_5

    invoke-virtual {p1}, Ls4/c;->e()Ls4/c;

    move-result-object v1

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, LR3/f;->Y(LX3/D;Ls4/c;)LU3/e;

    move-result-object p0

    if-nez p0, :cond_2

    :goto_1
    move-object p0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p0}, LU3/e;->Q()LC4/o;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ls4/c;->f()Ls4/f;

    move-result-object p1

    invoke-static {p1, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, LC4/q;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object p0

    :goto_2
    instance-of p1, p0, LU3/e;

    if-eqz p1, :cond_4

    move-object v2, p0

    check-cast v2, LU3/e;

    :cond_4
    return-object v2

    :cond_5
    return-object v1
.end method

.method public static Z(Landroid/view/View;LU0/g;)V
    .locals 3

    iget-object v0, p1, LU0/g;->d:LU0/f;

    iget-object v0, v0, LU0/f;->b:LP0/a;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, LP0/a;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, LK/x;->d(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, LU0/g;->d:LU0/f;

    iget v1, p0, LU0/f;->l:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iput v0, p0, LU0/f;->l:F

    invoke-virtual {p1}, LU0/g;->m()V

    :cond_1
    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/samsung/android/weather/api/source/WeatherStorageApi;)I
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageApi"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "-1.0.46"

    const-string v3, "WPI"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WeatherApiConfigurator] SYSTEM_NOT_READY pkg : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x5

    return p0

    :cond_1
    invoke-static {p0}, Lm3/d;->q(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WeatherApiConfigurator] WEATHER_APP_ABSENT pkg : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    sput-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x4

    const-string v5, "Please add [READ_SYSTEM_PROVIDER] permission to uses-permission."

    const-string v6, "please try again after obtaining runtime permission."

    const-string v7, "it is only available for Samsung Service."

    if-eqz p1, :cond_5

    invoke-static {p0}, Lj0/s;->j(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v1, :cond_4

    if-eq p1, v4, :cond_3

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move p1, v0

    goto :goto_4

    :cond_3
    const-string p1, "com.samsung.android.watch.weather.provider.permission.READ_DANGEROUS_PROVIDER"

    invoke-static {p0, p1}, Lw0/f;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p1, "com.samsung.android.watch.weather.provider.permission.READ_SYSTEM_PROVIDER"

    invoke-static {p0, p1}, Lw0/f;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lj0/s;->g(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0}, Lj0/s;->j(Landroid/content/Context;)I

    move-result v8

    if-eq v8, v1, :cond_a

    if-eq v8, v4, :cond_6

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const-string p1, "com.samsung.android.weather.permission.READ_DANGEROUS_PROVIDER"

    invoke-static {p0, p1}, Lw0/f;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    :goto_2
    move p1, v4

    goto :goto_4

    :cond_9
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    const-string p1, "com.samsung.android.weather.permission.READ_SYSTEM_PROVIDER"

    invoke-static {p0, p1}, Lw0/f;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_d

    :cond_c
    :goto_3
    move p1, v1

    goto :goto_4

    :cond_d
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_4
    if-ne v0, p1, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WeatherApiConfigurator] HAS_NO_READ_PERMISSION pkg : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_e
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lw0/f;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lj0/s;->b:LU3/w;

    if-nez v6, :cond_f

    new-instance v6, LU3/w;

    const/4 v7, 0x4

    invoke-direct {v6, p1, v7}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lj0/s;->b:LU3/w;

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_f
    :goto_5
    sget-object p1, Lj0/s;->b:LU3/w;

    if-eqz p1, :cond_12

    invoke-static {p0, p1}, Lw0/f;->c(Landroid/content/Context;LU3/w;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lw0/f;->b:LZ4/b;

    if-nez v7, :cond_10

    new-instance v7, LZ4/b;

    invoke-static {v6}, LF3/k;->c(Ljava/lang/Object;)V

    const/4 v8, 0x0

    invoke-direct {v7, p1, v6, v8}, LZ4/b;-><init>(LU3/w;Landroid/content/ContentResolver;I)V

    sput-object v7, Lw0/f;->b:LZ4/b;

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lw0/f;->a:LZ4/a;

    if-nez v7, :cond_11

    new-instance v7, LZ4/a;

    invoke-static {v6}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-direct {v7, p1, v6}, LZ4/a;-><init>(LU3/w;Landroid/content/ContentResolver;)V

    sput-object v7, Lw0/f;->a:LZ4/a;

    :cond_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_7

    :cond_12
    const-string p1, "contentUri"

    invoke-static {p1}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    invoke-static {p1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    instance-of v7, p1, Lq3/g;

    if-eqz v7, :cond_13

    move-object p1, v6

    :cond_13
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string v6, ") pkg : "

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherApiConfigurator] NOT_ALLOWED(dao:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_14
    invoke-static {p0}, Lj0/s;->b(Landroid/content/Context;)I

    move-result p1

    if-eq v1, p1, :cond_16

    if-ne p1, v4, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "WeatherApiConfigurator] SIG_MISMATCHED pkg : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_8

    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "WeatherApiConfigurator] NOT_ALLOWED(sig:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return v1

    :cond_16
    sget-object p1, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p1, p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->init(Landroid/content/Context;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WeatherApiConfigurator] SUCCESS pkg : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public static final a0(Ljava/lang/String;)Lcom/samsung/android/weather/api/unit/AQICategory;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "HJ6332012"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/weather/api/unit/AQICategory;->HJ6332012:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_1

    :sswitch_1
    const-string v0, "IMECA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/weather/api/unit/AQICategory;->IMECA:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_1

    :sswitch_2
    const-string v0, "NAQI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/weather/api/unit/AQICategory;->NAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_1

    :sswitch_3
    const-string v0, "DAQI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/samsung/android/weather/api/unit/AQICategory;->DAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_1

    :sswitch_4
    const-string v0, "CAQI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/samsung/android/weather/api/unit/AQICategory;->CAQI:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_1

    :sswitch_5
    const-string v0, "ATMO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/samsung/android/weather/api/unit/AQICategory;->ATMO:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_1

    :sswitch_6
    const-string v0, "UBA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/samsung/android/weather/api/unit/AQICategory;->UBA:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_1

    :sswitch_7
    const-string v0, "CAI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    sget-object p0, Lcom/samsung/android/weather/api/unit/AQICategory;->EPA:Lcom/samsung/android/weather/api/unit/AQICategory;

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/samsung/android/weather/api/unit/AQICategory;->CAI:Lcom/samsung/android/weather/api/unit/AQICategory;

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x103ab -> :sswitch_7
        0x14754 -> :sswitch_6
        0x1ed115 -> :sswitch_5
        0x1f72f6 -> :sswitch_4
        0x1fe755 -> :sswitch_3
        0x24730b -> :sswitch_2
        0x428bfbf -> :sswitch_1
        0x3cd3fbb3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;
    .locals 2

    const-string v0, "WPI"

    const-string v1, "getStorage] init cache storage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/source/WeatherCacheManager;-><init>()V

    return-object v0
.end method

.method public static final b0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d()Z
    .locals 1

    sget-object v0, Lw0/f;->d:LM1/d;

    if-eqz v0, :cond_0

    sget-object v0, Lw0/f;->e:LZ4/c;

    if-eqz v0, :cond_0

    sget-object v0, Lw0/f;->a:LZ4/a;

    if-eqz v0, :cond_0

    sget-object v0, Lw0/f;->b:LZ4/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final e(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "WPI"

    const-string v1, "context"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, LR3/f;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Initialization was not performed, so default initialization will proceed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    invoke-direct {v1}, Lcom/samsung/android/weather/api/source/WeatherCacheManager;-><init>()V

    invoke-static {p0, v1}, LR3/f;->a(Landroid/content/Context;Lcom/samsung/android/weather/api/source/WeatherStorageApi;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lq3/m;->a:Lq3/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "no message"

    :cond_1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    instance-of p0, p0, Lq3/g;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final f(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    invoke-static {v2, v3}, LF3/k;->h(II)I

    move-result v3

    if-gez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static g(Ljava/lang/StringBuilder;Ljava/lang/Object;LE3/b;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    :goto_0
    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public static final h(LJ4/G;LU3/h;I)Lw0/s;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, LJ4/v;->g(LU3/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LU3/h;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {p1}, LU3/h;->y()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-static {p1}, Lv4/f;->o(LU3/j;)Z

    move-result v1

    :cond_1
    new-instance v1, Lw0/s;

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, Lw0/s;-><init>(LU3/h;Ljava/util/List;Lw0/s;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    new-instance v2, Lw0/s;

    invoke-interface {p1}, LU3/j;->g()LU3/j;

    move-result-object v3

    instance-of v4, v3, LU3/h;

    if-eqz v4, :cond_3

    move-object v0, v3

    check-cast v0, LU3/h;

    :cond_3
    invoke-static {p0, v0, v1}, LR3/f;->h(LJ4/G;LU3/h;I)Lw0/s;

    move-result-object p0

    invoke-direct {v2, p1, p2, p0}, Lw0/s;-><init>(LU3/h;Ljava/util/List;Lw0/s;)V

    return-object v2

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static i(I)V
    .locals 5

    const/4 v0, 0x2

    if-gt v0, p0, :cond_0

    const/16 v1, 0x25

    if-ge p0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "radix "

    const-string v3, " was not in valid range "

    invoke-static {p0, v2, v3}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v2, LK3/c;

    const/4 v3, 0x1

    const/16 v4, 0x24

    invoke-direct {v2, v0, v4, v3}, LK3/a;-><init>(III)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static j(Ljava/lang/Class;)Lx4/f;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "currentClass.componentType"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lx4/f;

    sget-object v1, LR3/o;->d:Ls4/e;

    invoke-virtual {v1}, Ls4/e;->g()Ls4/c;

    move-result-object v1

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lx4/f;-><init>(Ls4/b;I)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LA4/c;->b(Ljava/lang/String;)LA4/c;

    move-result-object p0

    invoke-virtual {p0}, LA4/c;->d()LR3/l;

    move-result-object p0

    const-string v1, "get(currentClass.name).primitiveType"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v0, :cond_2

    new-instance v1, Lx4/f;

    iget-object p0, p0, LR3/l;->g:Ljava/lang/Object;

    invoke-interface {p0}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls4/c;

    invoke-static {p0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, p0, v0}, Lx4/f;-><init>(Ls4/b;I)V

    return-object v1

    :cond_2
    new-instance v1, Lx4/f;

    iget-object p0, p0, LR3/l;->f:Ljava/lang/Object;

    invoke-interface {p0}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls4/c;

    invoke-static {p0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lx4/f;-><init>(Ls4/b;I)V

    return-object v1

    :cond_3
    invoke-static {p0}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object p0

    sget-object v1, LT3/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ls4/b;->b()Ls4/c;

    move-result-object v1

    sget-object v2, LT3/d;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ls4/c;->i()Ls4/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls4/b;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    new-instance v1, Lx4/f;

    invoke-direct {v1, p0, v0}, Lx4/f;-><init>(Ls4/b;I)V

    return-object v1
.end method

.method public static final k(LU3/C;Ls4/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LU3/F;

    if-eqz v0, :cond_0

    check-cast p0, LU3/F;

    invoke-interface {p0, p1, p2}, LU3/F;->a(Ls4/c;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, LU3/C;->b(Ls4/c;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public static final l(LV3/h;LV3/h;)LV3/h;
    .locals 1

    const-string v0, "first"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LV3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LV3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, LV3/i;

    filled-new-array {p0, p1}, [LV3/h;

    move-result-object p0

    invoke-direct {v0, p0}, LV3/i;-><init>([LV3/h;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final m(LU3/h;)Ljava/util/List;
    .locals 8

    const/4 v0, 0x1

    const-string v1, "<this>"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/h;->o()Ljava/util/List;

    move-result-object v1

    const-string v2, "declaredTypeParameters"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/h;->y()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v3

    instance-of v3, v3, LU3/a;

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    sget v3, Lz4/e;->a:I

    sget-object v3, Lz4/d;->d:Lz4/d;

    invoke-static {v3, p0}, LU4/j;->e0(LE3/b;Ljava/lang/Object;)LU4/i;

    move-result-object v4

    invoke-static {v4, v0}, LU4/j;->c0(LU4/i;I)LU4/i;

    move-result-object v4

    new-instance v5, LU4/l;

    invoke-direct {v5, v0, v4}, LU4/l;-><init>(ILjava/lang/Object;)V

    sget-object v4, LU3/q;->h:LU3/q;

    new-instance v6, LU4/f;

    invoke-direct {v6, v5, v0, v4}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    sget-object v4, LU3/q;->i:LU3/q;

    new-instance v5, LU4/g;

    sget-object v7, LU4/o;->l:LU4/o;

    invoke-direct {v5, v6, v4, v7}, LU4/g;-><init>(LU4/i;LE3/b;LE3/b;)V

    invoke-static {v5}, LU4/j;->h0(LU4/i;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, p0}, LU4/j;->e0(LE3/b;Ljava/lang/Object;)LU4/i;

    move-result-object v3

    invoke-static {v3, v0}, LU4/j;->c0(LU4/i;I)LU4/i;

    move-result-object v0

    invoke-interface {v0}, LU4/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, LU3/e;

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    check-cast v3, LU3/e;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3}, LU3/g;->E()LJ4/M;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, LJ4/M;->g()Ljava/util/List;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    sget-object v5, Lr3/r;->d:Lr3/r;

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, LU3/h;->o()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_6
    invoke-static {v4, v5}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU3/O;

    const-string v4, "it"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, LU3/c;

    invoke-direct {v5, v3, p0, v4}, LU3/c;-><init>(LU3/O;LU3/h;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v1, v2}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    const-string v0, "collection"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    instance-of v0, p0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static o(FLa3/k;La3/k;)F
    .locals 9

    const-string v0, "fromUnit"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toUnit"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-double v0, p0

    sget-object v2, La3/h;->b:La3/h;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, La3/i;->b:La3/i;

    const-wide v5, 0x400451eb851eb852L    # 2.54

    if-eqz v3, :cond_0

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v7, La3/j;->b:La3/j;

    const/16 v8, 0xa

    if-eqz v3, :cond_1

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-double p0, v8

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide v5, 0x4039666666666666L    # 25.4

    if-eqz v3, :cond_3

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    int-to-double p0, v8

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static p(FLa3/B;La3/B;)F
    .locals 12

    float-to-double v0, p0

    sget-object v2, La3/y;->b:La3/y;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, La3/z;->b:La3/z;

    const-wide v5, 0x3ff9bfdb4cc25072L    # 1.60934

    if-eqz v3, :cond_0

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v7, La3/A;->b:La3/A;

    const-wide v8, 0x400ccccccccccccdL    # 3.6

    if-eqz v3, :cond_1

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide v10, 0x4001e540cc78e9f7L    # 2.23694

    if-eqz v3, :cond_3

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, La3/x;->b:La3/x;

    if-eqz v2, :cond_6

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0, v1}, LR3/f;->T(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, LR3/f;->T(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, LR3/f;->T(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_8
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static q(LS3/c;Z)LS3/g;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "functionClass"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LS3/g;

    const/4 v2, 0x0

    const/4 v14, 0x1

    move/from16 v3, p1

    invoke-direct {v1, v0, v2, v14, v3}, LS3/g;-><init>(LU3/j;LS3/g;IZ)V

    invoke-virtual/range {p0 .. p0}, LX3/b;->y0()LU3/J;

    move-result-object v15

    sget-object v16, Lr3/r;->d:Lr3/r;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, LS3/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, LU3/O;

    invoke-interface {v5}, LU3/O;->z()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lr3/j;->T0(Ljava/util/List;)LU4/n;

    move-result-object v2

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, LU4/n;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    move-object/from16 v2, v17

    check-cast v2, LU4/b;

    iget-object v3, v2, LU4/b;->e:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, LU4/b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/u;

    iget v5, v2, Lr3/u;->a:I

    iget-object v2, v2, Lr3/u;->b:Ljava/lang/Object;

    check-cast v2, LU3/O;

    invoke-interface {v2}, LU3/j;->r()Ls4/f;

    move-result-object v3

    invoke-virtual {v3}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "typeParameter.name.asString()"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "T"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "instance"

    goto :goto_2

    :cond_1
    const-string v4, "E"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "receiver"

    goto :goto_2

    :cond_2
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.Strin\u2026.toLowerCase(Locale.ROOT)"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    new-instance v12, LX3/W;

    sget-object v6, LV3/g;->a:LV3/f;

    invoke-static {v3}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v7

    invoke-interface {v2}, LU3/g;->n()LJ4/G;

    move-result-object v8

    const-string v2, "typeParameter.defaultType"

    invoke-static {v8, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v18, LU3/L;->a:LU3/M;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    move-object v2, v12

    move-object v3, v1

    move-object v14, v12

    move-object/from16 v12, v19

    move-object/from16 p1, v15

    move-object v15, v13

    move-object/from16 v13, v18

    invoke-direct/range {v2 .. v13}, LX3/W;-><init>(LU3/a;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;)V

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v13, v15

    const/4 v14, 0x1

    move-object/from16 v15, p1

    goto :goto_1

    :cond_3
    move-object/from16 p1, v15

    move-object v15, v13

    invoke-static {v0}, Lr3/j;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/O;

    invoke-interface {v0}, LU3/g;->n()LJ4/G;

    move-result-object v7

    sget-object v9, LU3/o;->e:LU3/n;

    const/4 v3, 0x0

    const/4 v8, 0x4

    move-object v2, v1

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move-object v6, v15

    invoke-virtual/range {v2 .. v9}, LX3/P;->T0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)LX3/P;

    const/4 v0, 0x1

    iput-boolean v0, v1, LX3/w;->y:Z

    return-object v1
.end method

.method public static r(Ljava/lang/Class;)LZ3/c;
    .locals 13

    const-string v0, "klass"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm4/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lm4/f;->a:[I

    iput-object v1, v0, Lm4/f;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lm4/f;->c:I

    iput-object v1, v0, Lm4/f;->d:[Ljava/lang/String;

    iput-object v1, v0, Lm4/f;->e:[Ljava/lang/String;

    iput-object v1, v0, Lm4/f;->f:[Ljava/lang/String;

    iput-object v1, v0, Lm4/f;->g:Lm4/a;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    const-string v4, "klass.declaredAnnotations"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    const-string v7, "annotation"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v7

    invoke-static {v7}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v8

    invoke-virtual {v8}, Ls4/b;->b()Ls4/c;

    move-result-object v9

    sget-object v10, Ld4/x;->a:Ls4/c;

    invoke-virtual {v9, v10}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v8, Lm4/d;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lm4/d;-><init>(Lm4/f;I)V

    goto :goto_2

    :cond_0
    sget-boolean v9, Lm4/f;->h:Z

    if-eqz v9, :cond_2

    :cond_1
    :goto_1
    move-object v8, v1

    goto :goto_2

    :cond_2
    iget-object v9, v0, Lm4/f;->g:Lm4/a;

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    sget-object v9, Lm4/f;->i:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm4/a;

    if-eqz v8, :cond_1

    iput-object v8, v0, Lm4/f;->g:Lm4/a;

    new-instance v8, Lm4/d;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9}, Lm4/d;-><init>(Lm4/f;I)V

    :goto_2
    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v8, v6, v7}, LR3/f;->X(Ll4/j;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    new-instance v3, LZ3/c;

    iget-object v4, v0, Lm4/f;->g:Lm4/a;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lm4/f;->a:[I

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    new-instance v7, Lr4/f;

    iget-object v4, v0, Lm4/f;->a:[I

    iget v5, v0, Lm4/f;->c:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-direct {v7, v4, v2}, Lr4/f;-><init>([IZ)V

    invoke-virtual {v7}, Lr4/f;->c()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lm4/f;->d:[Ljava/lang/String;

    iput-object v2, v0, Lm4/f;->f:[Ljava/lang/String;

    iput-object v1, v0, Lm4/f;->d:[Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lm4/f;->g:Lm4/a;

    sget-object v4, Lm4/a;->g:Lm4/a;

    if-eq v2, v4, :cond_9

    sget-object v4, Lm4/a;->h:Lm4/a;

    if-eq v2, v4, :cond_9

    sget-object v4, Lm4/a;->k:Lm4/a;

    if-ne v2, v4, :cond_b

    :cond_9
    iget-object v2, v0, Lm4/f;->d:[Ljava/lang/String;

    if-nez v2, :cond_b

    :cond_a
    :goto_3
    move-object v2, v1

    goto :goto_5

    :cond_b
    :goto_4
    new-instance v2, Lm4/b;

    iget-object v6, v0, Lm4/f;->g:Lm4/a;

    iget-object v8, v0, Lm4/f;->d:[Ljava/lang/String;

    iget-object v9, v0, Lm4/f;->f:[Ljava/lang/String;

    iget-object v10, v0, Lm4/f;->e:[Ljava/lang/String;

    iget-object v11, v0, Lm4/f;->b:Ljava/lang/String;

    iget v12, v0, Lm4/f;->c:I

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lm4/b;-><init>(Lm4/a;Lr4/f;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    :goto_5
    if-nez v2, :cond_c

    return-object v1

    :cond_c
    invoke-direct {v3, p0, v2}, LZ3/c;-><init>(Ljava/lang/Class;Lm4/b;)V

    return-object v3
.end method

.method public static s(I)LR3/f;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    new-instance p0, LU0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, LU0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, LU0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public static final t(LR3/j;LV3/h;LJ4/C;Ljava/util/ArrayList;LJ4/C;Z)LJ4/G;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "annotations"

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz p2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    add-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    if-nez p2, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-static {p2}, LK/I;->e(LJ4/C;)LJ4/Q;

    move-result-object v4

    :goto_1
    invoke-static {v2, v4}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    sget-object v7, LV3/g;->a:LV3/f;

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_2

    check-cast v6, LJ4/C;

    invoke-static {v6}, LK/I;->e(LJ4/C;)LJ4/Q;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_2

    :cond_2
    invoke-static {}, Lr3/k;->i0()V

    throw v3

    :cond_3
    invoke-static {p4}, LK/I;->e(LJ4/C;)LJ4/Q;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    add-int/2addr p3, v1

    :goto_3
    if-eqz p5, :cond_5

    invoke-virtual {p0, p3}, LR3/j;->u(I)LU3/e;

    move-result-object p3

    goto :goto_4

    :cond_5
    sget-object p4, LR3/p;->a:Ls4/f;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "Function"

    invoke-static {p3, p4}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object p3

    :goto_4
    if-eqz p2, :cond_8

    sget-object p2, LR3/o;->p:Ls4/c;

    invoke-interface {p1, p2}, LV3/h;->e(Ls4/c;)Z

    move-result p4

    if-eqz p4, :cond_6

    goto :goto_5

    :cond_6
    new-instance p4, LV3/j;

    sget-object p5, Lr3/s;->d:Lr3/s;

    invoke-direct {p4, p0, p2, p5}, LV3/j;-><init>(LR3/j;Ls4/c;Ljava/util/Map;)V

    invoke-static {p1, p4}, Lr3/j;->F0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    move-object p1, v7

    goto :goto_5

    :cond_7
    new-instance p1, LV3/i;

    invoke-direct {p1, v0, p0}, LV3/i;-><init>(ILjava/util/List;)V

    :cond_8
    :goto_5
    invoke-static {p1, p3, v2}, LJ4/d;->o(LV3/h;LU3/e;Ljava/util/List;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public static final u(LU3/e;LU3/e;)LJ4/N;
    .locals 3

    const-string v0, "from"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/e;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {p1}, LU3/e;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {p0}, LU3/e;->o()Ljava/util/List;

    move-result-object p0

    const-string v0, "from.declaredTypeParameters"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/O;

    invoke-interface {v1}, LU3/g;->E()LJ4/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LU3/e;->o()Ljava/util/List;

    move-result-object p0

    const-string p1, "to.declaredTypeParameters"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/O;

    invoke-interface {v1}, LU3/g;->n()LJ4/G;

    move-result-object v1

    const-string v2, "it.defaultType"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LK/I;->e(LJ4/C;)LJ4/Q;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0, p1}, Lr3/j;->U0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lr3/v;->h0(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, LJ4/N;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LJ4/N;-><init>(Ljava/util/Map;Z)V

    return-object p1
.end method

.method public static final w(CCZ)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_3

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static final x(LJ4/C;)Ls4/f;
    .locals 2

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p0

    sget-object v0, LR3/o;->q:Ls4/c;

    invoke-interface {p0, v0}, LV3/h;->a(Ls4/c;)LV3/b;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, LV3/b;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->K0(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lx4/u;

    if-eqz v1, :cond_1

    check-cast p0, Lx4/u;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_3

    :cond_2
    :goto_1
    move-object p0, v0

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0}, Ls4/f;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    if-nez p0, :cond_5

    return-object v0

    :cond_5
    invoke-static {p0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p0

    return-object p0
.end method

.method public static y(LV3/h;Ls4/c;)LV3/b;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LV3/b;

    invoke-interface {v1}, LV3/b;->a()Ls4/c;

    move-result-object v1

    invoke-static {v1, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, LV3/b;

    return-object v0
.end method

.method public static z(La4/f;Ls4/c;)La4/c;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, La4/f;->c()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, LR3/f;->A([Ljava/lang/annotation/Annotation;Ls4/c;)La4/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract G(Ljava/lang/String;)LR3/f;
.end method

.method public abstract H(LU0/r;FF)V
.end method

.method public abstract V(Lorg/w3c/dom/Node;)La1/a;
.end method

.method public v(Lorg/w3c/dom/Node;)La1/a;
    .locals 6

    invoke-virtual {p0, p1}, LR3/f;->V(Lorg/w3c/dom/Node;)La1/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    iget-object v2, v0, La1/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb1/a;

    iget-object v4, v3, Lb1/a;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget v5, v3, Lb1/a;->d:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v4}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    goto :goto_1

    :pswitch_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :pswitch_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :pswitch_3
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    :pswitch_4
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1
    iput-object v4, v3, Lb1/a;->b:Ljava/lang/Object;

    iget-object v3, v3, Lb1/a;->c:Landroidx/recyclerview/widget/y;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/y;->j(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, LR3/f;->G(Ljava/lang/String;)LR3/f;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, LR3/f;->v(Lorg/w3c/dom/Node;)La1/a;

    move-result-object v3

    invoke-virtual {v0, v3}, La1/a;->a(La1/a;)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported node "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
