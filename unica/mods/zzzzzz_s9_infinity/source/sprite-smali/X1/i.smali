.class public final LX1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static l:F = 50.0f


# instance fields
.field public final a:La2/q;

.field public final b:Landroid/graphics/PointF;

.field public final c:Ll5/h;

.field public final d:Landroid/graphics/PointF;

.field public final e:Lk5/i;

.field public final f:Ln/f;

.field public final g:F

.field public final h:F

.field public final i:I

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La2/q;Landroid/graphics/PointF;)V
    .locals 10

    const-string v0, "wallpaperData"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/i;->a:La2/q;

    iput-object p2, p0, LX1/i;->b:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, LX1/i;->d:Landroid/graphics/PointF;

    new-instance p2, Lk5/i;

    invoke-direct {p2, v0, v0}, Lk5/i;-><init>(FF)V

    iput-object p2, p0, LX1/i;->e:Lk5/i;

    new-instance p2, Ln/f;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ln/j;-><init>(I)V

    iput-object p2, p0, LX1/i;->f:Ln/f;

    const p2, 0x44bb8000    # 1500.0f

    iput p2, p0, LX1/i;->g:F

    const/high16 p2, 0x447a0000    # 1000.0f

    iput p2, p0, LX1/i;->h:F

    const/16 p2, 0x258

    iput p2, p0, LX1/i;->i:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, LX1/i;->j:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LX1/i;->k:Ljava/lang/Object;

    iget-object p2, p0, LX1/i;->c:Ll5/h;

    const-string v1, "PhysicsPool"

    if-eqz p2, :cond_0

    const-string p2, "createWorld: world is already created"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    iget-object p2, p1, La2/q;->q:La2/k;

    iget v2, p2, La2/k;->e:F

    iget-object v3, p0, LX1/i;->e:Lk5/i;

    iget v4, p2, La2/k;->c:F

    mul-float/2addr v4, v2

    iget v5, p2, La2/k;->d:F

    mul-float/2addr v5, v2

    iput v4, v3, Lk5/i;->d:F

    iput v5, v3, Lk5/i;->e:F

    iget v2, p2, La2/k;->f:F

    sput v2, LX1/i;->l:F

    iget-object p2, p2, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, La2/q;->q:La2/k;

    iget v2, p2, La2/k;->a:I

    iget p2, p2, La2/k;->b:I

    invoke-virtual {p0, v2, p2}, LX1/i;->e(II)V

    :cond_1
    new-instance p2, LU0/e;

    const/16 v2, 0xc

    invoke-direct {p2, v2}, LU0/e;-><init>(I)V

    new-instance v2, Ll5/h;

    iget-object v3, p0, LX1/i;->e:Lk5/i;

    invoke-direct {v2, v3}, Ll5/h;-><init>(Lk5/i;)V

    iget-boolean v3, v2, Ll5/h;->h:Z

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v0, v2, Ll5/h;->h:Z

    iget-object v3, v2, Ll5/h;->c:Ll5/a;

    :goto_0
    if-eqz v3, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ll5/a;->f(Z)V

    iget-object v3, v3, Ll5/a;->k:Ll5/a;

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v3, v2, Ll5/h;->b:Lg4/e;

    iput-object p2, v3, Lg4/e;->d:Ljava/lang/Object;

    iput-object v2, p0, LX1/i;->c:Ll5/h;

    :goto_2
    iget-object p1, p1, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La2/f;

    invoke-virtual {p0, p2, v0, v2}, LX1/i;->b(La2/f;ZLE3/b;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, LX1/i;->a:La2/q;

    iget-object p2, p1, La2/q;->p:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-gtz p2, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object p2, p1, La2/q;->p:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, La2/j;

    iget-object v3, p1, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v2

    move-object v6, v5

    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/f;

    iget-object v8, v4, La2/f;->a:Ljava/lang/String;

    iget-object v9, v7, La2/j;->b:Lw0/i;

    iget-object v9, v9, Lw0/i;->e:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v5, v4

    goto :goto_5

    :cond_8
    iget-object v9, v7, La2/j;->b:Lw0/i;

    iget-object v9, v9, Lw0/i;->f:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v6, v4

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_a

    if-eqz v6, :cond_6

    invoke-static {v7}, LF3/k;->c(Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, LX1/i;->c(La2/f;La2/f;La2/j;ZLE3/b;)V

    goto :goto_4

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createJoints: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    :goto_6
    return-void
.end method

.method public static d(Lk5/i;F)Lk5/i;
    .locals 4

    new-instance v0, Lk5/i;

    iget v1, p0, Lk5/i;->d:F

    invoke-static {p1}, Lk5/c;->O(F)F

    move-result v2

    mul-float/2addr v2, v1

    iget v1, p0, Lk5/i;->e:F

    sget v3, Lk5/e;->a:I

    invoke-static {p1}, Lk5/c;->R(F)F

    move-result v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v1, p0, Lk5/i;->d:F

    invoke-static {p1}, Lk5/c;->R(F)F

    move-result v3

    mul-float/2addr v3, v1

    iget p0, p0, Lk5/i;->e:F

    invoke-static {p1}, Lk5/c;->O(F)F

    move-result p1

    mul-float/2addr p1, p0

    add-float/2addr p1, v3

    invoke-direct {v0, v2, p1}, Lk5/i;-><init>(FF)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-static {v0}, LR3/f;->i(I)V

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 11

    iget-object v0, p0, LX1/i;->c:Ll5/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ll5/h;->c:Ll5/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    iget-object v1, v0, Ll5/a;->c:Lk5/h;

    iget-object v1, v1, Lk5/h;->d:Lk5/i;

    iget v2, v1, Lk5/i;->d:F

    sget v3, LX1/i;->l:F

    div-float v4, p1, v3

    sub-float/2addr v2, v4

    iget v1, v1, Lk5/i;->e:F

    div-float v3, p2, v3

    sub-float/2addr v1, v3

    mul-float v3, v2, v2

    mul-float v4, v1, v1

    add-float/2addr v4, v3

    sget-object v3, Lk5/c;->d:[F

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, p0, LX1/i;->i:I

    int-to-float v6, v6

    sget v7, LX1/i;->l:F

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    const/4 v6, 0x1

    int-to-float v7, v6

    const/4 v8, 0x0

    cmpg-float v9, v5, v8

    const/high16 v10, 0x3f800000    # 1.0f

    if-gez v9, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    cmpl-float v8, v5, v10

    if-lez v8, :cond_2

    move v5, v10

    :cond_2
    :goto_1
    sub-float/2addr v7, v5

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x34000000

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    goto :goto_2

    :cond_3
    div-float/2addr v10, v3

    mul-float/2addr v2, v10

    mul-float/2addr v1, v10

    :goto_2
    const/16 v3, 0xa

    int-to-float v3, v3

    add-float/2addr v3, p3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v3, p3

    mul-float/2addr v3, v4

    add-float/2addr v3, p3

    mul-float/2addr v3, v7

    mul-float/2addr v2, v3

    mul-float/2addr v1, v3

    const/4 v3, 0x3

    iget v4, v0, Ll5/a;->x:I

    if-eq v4, v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ll5/a;->d()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v6}, Ll5/a;->f(Z)V

    :cond_5
    iget-object v3, v0, Ll5/a;->g:Lk5/i;

    iget v4, v3, Lk5/i;->d:F

    add-float/2addr v4, v2

    iput v4, v3, Lk5/i;->d:F

    iget v2, v3, Lk5/i;->e:F

    add-float/2addr v2, v1

    iput v2, v3, Lk5/i;->e:F

    :goto_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    const/high16 v1, -0x40800000    # -1.0f

    add-float/2addr v2, v1

    mul-float/2addr v2, p4

    mul-float/2addr v2, v7

    invoke-virtual {v0, v2}, Ll5/a;->b(F)V

    iget-object v0, v0, Ll5/a;->k:Ll5/a;

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final b(La2/f;ZLE3/b;)V
    .locals 8

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, La2/f;->p:Z

    if-nez v0, :cond_0

    const-string p0, "PhysicsPool"

    iget-object p1, p1, La2/f;->a:Ljava/lang/String;

    const-string p2, "createBody : physics is NOT supported "

    invoke-static {p2, p1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ll5/b;

    invoke-direct {v0}, Ll5/b;-><init>()V

    iget-object v1, p1, La2/f;->q:Ljava/lang/String;

    const-string v2, "static"

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "kinematic"

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_0
    iput v1, v0, Ll5/b;->a:I

    iget-object v1, v0, Ll5/b;->b:Lk5/i;

    iget v2, p1, La2/f;->c:I

    int-to-float v2, v2

    iget-object v3, p0, LX1/i;->b:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v4

    iget v5, p1, La2/f;->e:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    sget v2, LX1/i;->l:F

    div-float/2addr v5, v2

    iget v7, p1, La2/f;->d:I

    int-to-float v7, v7

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v3

    iget v3, p1, La2/f;->f:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    div-float/2addr v3, v2

    iput v5, v1, Lk5/i;->d:F

    iput v3, v1, Lk5/i;->e:F

    iget v1, p1, La2/f;->u:F

    const/high16 v2, 0x43340000    # 180.0f

    div-float/2addr v1, v2

    const v2, 0x4048f5c3    # 3.14f

    mul-float/2addr v1, v2

    iput v1, v0, Ll5/b;->c:F

    iget-boolean v1, p1, La2/f;->G:Z

    iput-boolean v1, v0, Ll5/b;->e:Z

    iget v1, p1, La2/f;->t:F

    iget-object v2, p1, La2/f;->s:La2/e;

    sget-object v3, La2/e;->e:La2/e;

    if-ne v2, v3, :cond_3

    new-instance v2, Lj5/a;

    invoke-direct {v2}, Lj5/a;-><init>()V

    iget v3, p1, La2/f;->e:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v1

    iget-object v1, p0, LX1/i;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v1

    sget v1, LX1/i;->l:F

    div-float/2addr v3, v1

    iput v3, v2, Lj5/e;->b:F

    goto :goto_1

    :cond_3
    new-instance v2, Lj5/d;

    invoke-direct {v2}, Lj5/d;-><init>()V

    iget v3, p1, La2/f;->e:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v1

    iget-object v4, p0, LX1/i;->b:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    sget v5, LX1/i;->l:F

    div-float/2addr v3, v5

    iget v7, p1, La2/f;->f:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    mul-float/2addr v7, v1

    iget v1, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v1

    div-float/2addr v7, v5

    invoke-virtual {v2, v3, v7}, Lj5/d;->d(FF)V

    :goto_1
    new-instance v1, Ll5/d;

    invoke-direct {v1}, Ll5/d;-><init>()V

    iput-object v2, v1, Ll5/d;->a:Lj5/e;

    iget v2, p1, La2/f;->x:F

    iput v2, v1, Ll5/d;->d:F

    iget v2, p1, La2/f;->v:F

    iput v2, v1, Ll5/d;->b:F

    iget v2, p1, La2/f;->w:F

    iput v2, v1, Ll5/d;->c:F

    iget-object v2, v1, Ll5/d;->e:LK/o;

    iget-object v3, p1, La2/f;->z:Ljava/lang/String;

    invoke-static {v3}, LX1/i;->f(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, LK/o;->a:I

    iget-object v2, v1, Ll5/d;->e:LK/o;

    iget-object v3, p1, La2/f;->A:Ljava/lang/String;

    invoke-static {v3}, LX1/i;->f(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, LK/o;->b:I

    if-eqz p2, :cond_4

    new-instance p2, LX1/g;

    invoke-direct {p2, v1, p1, p0, p3}, LX1/g;-><init>(Ll5/d;La2/f;LX1/i;LE3/b;)V

    iget-object p1, p0, LX1/i;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, LX1/i;->j:Ljava/util/ArrayList;

    new-instance p3, LX1/a;

    invoke-direct {p3, v0, p2}, LX1/a;-><init>(Ll5/b;LX1/g;)V

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_4
    iget-object p0, p0, LX1/i;->c:Ll5/h;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v0}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Ll5/a;->c(Ll5/d;)V

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    iput-object p0, p1, La2/f;->B:Ll5/a;

    :goto_3
    return-void
.end method

.method public final c(La2/f;La2/f;La2/j;ZLE3/b;)V
    .locals 10

    iget-object p1, p1, La2/f;->B:Ll5/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-object p2, p2, La2/f;->B:Ll5/a;

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, p3, La2/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v1, Ln5/b;

    invoke-direct {v1}, Ln5/b;-><init>()V

    iput-object p1, v1, Ln5/d;->b:Ll5/a;

    iput-object p2, v1, Ln5/d;->c:Ll5/a;

    iget-object v3, v1, Ln5/b;->e:Lk5/i;

    iget-object v4, p3, La2/j;->b:Lw0/i;

    iget-object v5, v4, Lw0/i;->g:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, LX1/i;->b:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v8

    sget v9, LX1/i;->l:F

    div-float/2addr v6, v9

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v7

    div-float/2addr v5, v9

    iput v6, v3, Lk5/i;->d:F

    iput v5, v3, Lk5/i;->e:F

    iget-object v5, v1, Ln5/b;->f:Lk5/i;

    iget-object v4, v4, Lw0/i;->h:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v8

    div-float/2addr v6, v9

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    div-float/2addr v4, v9

    iput v6, v5, Lk5/i;->d:F

    iput v4, v5, Lk5/i;->e:F

    move-object v4, p3

    check-cast v4, La2/g;

    iget v5, v4, La2/g;->d:F

    iput v5, v1, Ln5/b;->h:F

    iget v5, v4, La2/g;->e:F

    iput v5, v1, Ln5/b;->i:F

    iget v4, v4, La2/g;->c:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, v4, v5

    if-nez v5, :cond_1

    iget-object v4, p1, Ll5/a;->d:Lk5/f;

    iget v4, v4, Lk5/f;->h:F

    invoke-static {v3, v4}, LX1/i;->d(Lk5/i;F)Lk5/i;

    move-result-object v3

    iget-object v4, v1, Ln5/b;->f:Lk5/i;

    iget-object v5, p2, Ll5/a;->d:Lk5/f;

    iget v5, v5, Lk5/f;->h:F

    invoke-static {v4, v5}, LX1/i;->d(Lk5/i;F)Lk5/i;

    move-result-object v4

    iget-object p1, p1, Ll5/a;->c:Lk5/h;

    iget-object p1, p1, Lk5/h;->d:Lk5/i;

    invoke-virtual {p1, v3}, Lk5/i;->a(Lk5/i;)Lk5/i;

    move-result-object p1

    iget-object p2, p2, Ll5/a;->c:Lk5/h;

    iget-object p2, p2, Lk5/h;->d:Lk5/i;

    invoke-virtual {p2, v4}, Lk5/i;->a(Lk5/i;)Lk5/i;

    move-result-object p2

    invoke-static {p1, p2}, Lk5/c;->P(Lk5/i;Lk5/i;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, v1, Ln5/b;->g:F

    goto :goto_0

    :cond_1
    iput v4, v1, Ln5/b;->g:F

    goto :goto_0

    :cond_2
    instance-of v1, p3, La2/p;

    if-eqz v1, :cond_3

    new-instance v1, Ln5/f;

    invoke-direct {v1}, Ln5/f;-><init>()V

    iput-object p1, v1, Ln5/d;->b:Ll5/a;

    iput-object p2, v1, Ln5/d;->c:Ll5/a;

    iget-object p1, v1, Ln5/f;->e:Lk5/i;

    iget-object p2, p3, La2/j;->b:Lw0/i;

    iget-object v3, p2, Lw0/i;->g:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, LX1/i;->b:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v6

    sget v7, LX1/i;->l:F

    div-float/2addr v4, v7

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    div-float/2addr v3, v7

    iput v4, p1, Lk5/i;->d:F

    iput v3, p1, Lk5/i;->e:F

    iget-object p1, v1, Ln5/f;->f:Lk5/i;

    iget-object p2, p2, Lw0/i;->h:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/PointF;

    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v6

    div-float/2addr v3, v7

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, v5

    div-float/2addr p2, v7

    iput v3, p1, Lk5/i;->d:F

    iput p2, p1, Lk5/i;->e:F

    move-object p1, p3

    check-cast p1, La2/p;

    iget-boolean p2, p1, La2/p;->c:Z

    iput-boolean p2, v1, Ln5/d;->d:Z

    iget-boolean p2, p1, La2/p;->d:Z

    iput-boolean p2, v1, Ln5/f;->h:Z

    iget p2, p1, La2/p;->e:F

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr p2, v3

    const v4, 0x4048f5c3    # 3.14f

    mul-float/2addr p2, v4

    iput p2, v1, Ln5/f;->g:F

    iget p2, p1, La2/p;->f:F

    div-float/2addr p2, v3

    mul-float/2addr p2, v4

    iput p2, v1, Ln5/f;->i:F

    iget p1, p1, La2/p;->g:F

    div-float/2addr p1, v3

    mul-float/2addr p1, v4

    iput p1, v1, Ln5/f;->j:F

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-eqz p4, :cond_4

    if-eqz v1, :cond_7

    new-instance p1, LX1/h;

    invoke-direct {p1, p0, p3, p5}, LX1/h;-><init>(LX1/i;La2/j;LE3/b;)V

    iget-object p2, p0, LX1/i;->k:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, LX1/i;->j:Ljava/util/ArrayList;

    new-instance p3, LX1/b;

    invoke-direct {p3, v1, p1}, LX1/b;-><init>(Ln5/d;LX1/h;)V

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_4
    iget-object p1, p0, LX1/i;->c:Ll5/h;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Ll5/h;->c(Ln5/d;)Ln5/c;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_6

    iget-object p0, p0, LX1/i;->f:Ln/f;

    iget-object p1, p3, La2/j;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-string p0, "PhysicsPool"

    const-string p1, "createJoint: joint is NULL"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    const-string p0, "PhysicsPool"

    const-string p1, "createJoint: body is NULL"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e(II)V
    .locals 13

    int-to-float p1, p1

    sget v0, LX1/i;->l:F

    div-float v1, p1, v0

    iget-object v2, p0, LX1/i;->d:Landroid/graphics/PointF;

    iput v1, v2, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    div-float v0, p2, v0

    iput v0, v2, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, LX1/i;->a:La2/q;

    iget-object v1, v0, La2/q;->q:La2/k;

    iget v3, v1, La2/k;->a:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    iget-object v3, p0, LX1/i;->b:Landroid/graphics/PointF;

    iput p1, v3, Landroid/graphics/PointF;->x:F

    iget p1, v1, La2/k;->b:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, v3, Landroid/graphics/PointF;->y:F

    iput-object v3, v0, La2/q;->t:Landroid/graphics/PointF;

    iget-object p1, v0, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll5/a;

    iget-object v1, p0, LX1/i;->c:Ll5/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ll5/h;->d(Ll5/a;)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, v2, Landroid/graphics/PointF;->x:F

    iget p2, v2, Landroid/graphics/PointF;->y:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createGround : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "PhysicsPool"

    invoke-static {v4, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, La2/q;->q:La2/k;

    iget v1, v1, La2/k;->g:F

    float-to-int v1, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const-string p0, "createGround : Ground scale is -1. so do NOT create ground"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    new-instance v1, Ll5/b;

    invoke-direct {v1}, Ll5/b;-><init>()V

    const/4 v3, 0x1

    iput v3, v1, Ll5/b;->a:I

    new-instance v4, Lj5/b;

    invoke-direct {v4}, Lj5/b;-><init>()V

    new-instance v5, Ll5/d;

    invoke-direct {v5}, Ll5/d;-><init>()V

    iput-object v4, v5, Ll5/d;->a:Lj5/e;

    iget-object v6, v0, La2/q;->q:La2/k;

    iget v6, v6, La2/k;->g:F

    const/4 v7, 0x2

    int-to-float v8, v7

    div-float v9, p1, v8

    div-float v10, p2, v8

    mul-float/2addr p1, v6

    div-float/2addr p1, v8

    sub-float v11, v9, p1

    mul-float/2addr p2, v6

    div-float/2addr p2, v8

    sub-float v6, v10, p2

    add-float/2addr v9, p1

    add-float/2addr v10, p2

    iget-object p1, v4, Lj5/b;->c:Lk5/i;

    iput v11, p1, Lk5/i;->d:F

    iput v6, p1, Lk5/i;->e:F

    iget-object p2, v4, Lj5/b;->d:Lk5/i;

    iput v9, p2, Lk5/i;->d:F

    iput v6, p2, Lk5/i;->e:F

    iget-object v4, v0, La2/q;->q:La2/k;

    iget-object v4, v4, La2/k;->i:Ljava/util/ArrayList;

    iget-object v8, p0, LX1/i;->c:Ll5/h;

    const/4 v12, 0x0

    if-eqz v8, :cond_3

    invoke-virtual {v8, v1}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object v8, v12

    :goto_1
    invoke-static {v8}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, La2/q;->q:La2/k;

    iget-object v4, v4, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll5/a;

    invoke-virtual {v2, v5}, Ll5/a;->c(Ll5/d;)V

    iput v11, p1, Lk5/i;->d:F

    iput v6, p1, Lk5/i;->e:F

    iput v11, p2, Lk5/i;->d:F

    iput v10, p2, Lk5/i;->e:F

    iget-object v2, v0, La2/q;->q:La2/k;

    iget-object v2, v2, La2/k;->i:Ljava/util/ArrayList;

    iget-object v4, p0, LX1/i;->c:Ll5/h;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v12

    :goto_2
    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, La2/q;->q:La2/k;

    iget-object v2, v2, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll5/a;

    invoke-virtual {v2, v5}, Ll5/a;->c(Ll5/d;)V

    iput v9, p1, Lk5/i;->d:F

    iput v6, p1, Lk5/i;->e:F

    iput v9, p2, Lk5/i;->d:F

    iput v10, p2, Lk5/i;->e:F

    iget-object v2, v0, La2/q;->q:La2/k;

    iget-object v2, v2, La2/k;->i:Ljava/util/ArrayList;

    iget-object v3, p0, LX1/i;->c:Ll5/h;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v12

    :goto_3
    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, La2/q;->q:La2/k;

    iget-object v2, v2, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll5/a;

    invoke-virtual {v2, v5}, Ll5/a;->c(Ll5/d;)V

    iput v11, p1, Lk5/i;->d:F

    iput v10, p1, Lk5/i;->e:F

    iput v9, p2, Lk5/i;->d:F

    iput v10, p2, Lk5/i;->e:F

    iget-object p1, v0, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->i:Ljava/util/ArrayList;

    iget-object p0, p0, LX1/i;->c:Ll5/h;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object v12

    :cond_6
    invoke-static {v12}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, La2/q;->q:La2/k;

    iget-object p0, p0, La2/k;->i:Ljava/util/ArrayList;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll5/a;

    invoke-virtual {p0, v5}, Ll5/a;->c(Ll5/d;)V

    :goto_4
    return-void
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, LX1/i;->c:Ll5/h;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ll5/h;->f()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, LX1/i;->k:Ljava/lang/Object;

    monitor-enter v0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, LX1/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    iget-object v1, p0, LX1/i;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "removeAt(...)"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LX1/f;

    instance-of v3, v1, LX1/a;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, LX1/i;->c:Ll5/h;

    if-eqz v3, :cond_1

    move-object v5, v1

    check-cast v5, LX1/a;

    iget-object v5, v5, LX1/a;->a:Ll5/b;

    invoke-virtual {v3, v5}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_2

    check-cast v1, LX1/a;

    iget-object v1, v1, LX1/a;->b:LX1/g;

    invoke-virtual {v1, v3}, LX1/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "PhysicsPool"

    iget-object v3, p0, LX1/i;->c:Ll5/h;

    if-eqz v3, :cond_3

    iget v3, v3, Ll5/h;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFrame : CreateBody, bodyCount= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    instance-of v3, v1, LX1/b;

    if-eqz v3, :cond_6

    iget-object v2, p0, LX1/i;->c:Ll5/h;

    if-eqz v2, :cond_5

    move-object v3, v1

    check-cast v3, LX1/b;

    iget-object v3, v3, LX1/b;->a:Ln5/d;

    invoke-virtual {v2, v3}, Ll5/h;->c(Ln5/d;)Ln5/c;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_0

    check-cast v1, LX1/b;

    iget-object v1, v1, LX1/b;->b:LX1/h;

    invoke-virtual {v1, v4}, LX1/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    instance-of v3, v1, LX1/e;

    if-eqz v3, :cond_7

    move-object v2, v1

    check-cast v2, LX1/e;

    iget-object v2, v2, LX1/e;->a:Ll5/a;

    move-object v3, v1

    check-cast v3, LX1/e;

    iget-object v3, v3, LX1/e;->b:Lk5/i;

    check-cast v1, LX1/e;

    iget v1, v1, LX1/e;->c:F

    invoke-virtual {v2, v3, v1}, Ll5/a;->h(Lk5/i;F)V

    goto/16 :goto_0

    :cond_7
    instance-of v3, v1, LX1/c;

    if-eqz v3, :cond_a

    iget-object v3, p0, LX1/i;->c:Ll5/h;

    if-eqz v3, :cond_8

    check-cast v1, LX1/c;

    iget-object v1, v1, LX1/c;->a:Ll5/a;

    invoke-virtual {v3, v1}, Ll5/h;->d(Ll5/a;)V

    :cond_8
    const-string v1, "PhysicsPool"

    iget-object v3, p0, LX1/i;->c:Ll5/h;

    if-eqz v3, :cond_9

    iget v3, v3, Ll5/h;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFrame : DestroyBody, bodyCount= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    instance-of v2, v1, LX1/d;

    if-eqz v2, :cond_b

    iget-object v2, p0, LX1/i;->c:Ll5/h;

    if-eqz v2, :cond_0

    check-cast v1, LX1/d;

    iget-object v1, v1, LX1/d;->a:Ln5/c;

    invoke-virtual {v2, v1}, Ll5/h;->e(Ln5/c;)V

    goto/16 :goto_0

    :cond_b
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_c
    iget-object p0, p0, LX1/i;->c:Ll5/h;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ll5/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    :cond_e
    :goto_3
    return-void
.end method
