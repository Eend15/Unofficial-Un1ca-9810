.class public LU0/g;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements LU0/s;


# static fields
.field public static final synthetic x:I


# instance fields
.field public d:LU0/f;

.field public final e:[LU0/q;

.field public final f:[LU0/q;

.field public final g:Ljava/util/BitSet;

.field public h:Z

.field public final i:Landroid/graphics/Matrix;

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Landroid/graphics/RectF;

.field public final m:Landroid/graphics/RectF;

.field public final n:Landroid/graphics/Region;

.field public final o:Landroid/graphics/Region;

.field public p:LU0/j;

.field public final q:Landroid/graphics/Paint;

.field public final r:Landroid/graphics/Paint;

.field public final s:LA1/e;

.field public final t:LS1/a;

.field public u:Landroid/graphics/PorterDuffColorFilter;

.field public v:Landroid/graphics/PorterDuffColorFilter;

.field public final w:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, LU0/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LU0/j;-><init>(I)V

    invoke-direct {p0, v0}, LU0/g;-><init>(LU0/j;)V

    return-void
.end method

.method public constructor <init>(LU0/f;)V
    .locals 4

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 22
    new-array v1, v0, [LU0/q;

    iput-object v1, p0, LU0/g;->e:[LU0/q;

    .line 23
    new-array v0, v0, [LU0/q;

    iput-object v0, p0, LU0/g;->f:[LU0/q;

    .line 24
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, LU0/g;->g:Ljava/util/BitSet;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LU0/g;->i:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LU0/g;->j:Landroid/graphics/Path;

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LU0/g;->k:Landroid/graphics/Path;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LU0/g;->l:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LU0/g;->m:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, LU0/g;->n:Landroid/graphics/Region;

    .line 31
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, LU0/g;->o:Landroid/graphics/Region;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LU0/g;->q:Landroid/graphics/Paint;

    .line 33
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, LU0/g;->r:Landroid/graphics/Paint;

    .line 34
    new-instance v1, LT0/a;

    invoke-direct {v1}, LT0/a;-><init>()V

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 36
    sget-object v1, LU0/k;->a:LS1/a;

    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, LS1/a;

    invoke-direct {v1}, LS1/a;-><init>()V

    :goto_0
    iput-object v1, p0, LU0/g;->t:LS1/a;

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, LU0/g;->w:Landroid/graphics/RectF;

    .line 39
    iput-object p1, p0, LU0/g;->d:LU0/f;

    .line 40
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    invoke-virtual {p0}, LU0/g;->l()Z

    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, LU0/g;->k([I)Z

    .line 44
    new-instance p1, LA1/e;

    invoke-direct {p1, p0}, LA1/e;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LU0/g;->s:LA1/e;

    return-void
.end method

.method public constructor <init>(LU0/j;)V
    .locals 3

    .line 3
    new-instance v0, LU0/f;

    .line 4
    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, LU0/f;->c:Landroid/content/res/ColorStateList;

    .line 6
    iput-object v1, v0, LU0/f;->d:Landroid/content/res/ColorStateList;

    .line 7
    iput-object v1, v0, LU0/f;->e:Landroid/content/res/ColorStateList;

    .line 8
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v0, LU0/f;->f:Landroid/graphics/PorterDuff$Mode;

    .line 9
    iput-object v1, v0, LU0/f;->g:Landroid/graphics/Rect;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    iput v2, v0, LU0/f;->h:F

    .line 11
    iput v2, v0, LU0/f;->i:F

    const/16 v2, 0xff

    .line 12
    iput v2, v0, LU0/f;->k:I

    const/4 v2, 0x0

    .line 13
    iput v2, v0, LU0/f;->l:F

    .line 14
    iput v2, v0, LU0/f;->m:F

    const/4 v2, 0x0

    .line 15
    iput v2, v0, LU0/f;->n:I

    .line 16
    iput v2, v0, LU0/f;->o:I

    .line 17
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v2, v0, LU0/f;->p:Landroid/graphics/Paint$Style;

    .line 18
    iput-object p1, v0, LU0/f;->a:LU0/j;

    .line 19
    iput-object v1, v0, LU0/f;->b:LP0/a;

    .line 20
    invoke-direct {p0, v0}, LU0/g;-><init>(LU0/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, LU0/j;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)LU0/j;

    move-result-object p1

    invoke-virtual {p1}, LU0/j;->a()LU0/j;

    move-result-object p1

    invoke-direct {p0, p1}, LU0/g;-><init>(LU0/j;)V

    return-void
.end method


# virtual methods
.method public final a(LU0/j;)V
    .locals 1

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iput-object p1, v0, LU0/f;->a:LU0/j;

    invoke-virtual {p0}, LU0/g;->invalidateSelf()V

    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget-object v2, v0, LU0/f;->a:LU0/j;

    iget v3, v0, LU0/f;->i:F

    iget-object v5, p0, LU0/g;->s:LA1/e;

    iget-object v1, p0, LU0/g;->t:LS1/a;

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, LS1/a;->a(LU0/j;FLandroid/graphics/RectF;LA1/e;Landroid/graphics/Path;)V

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget v0, v0, LU0/f;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, LU0/g;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, LU0/g;->d:LU0/f;

    iget v1, v1, LU0/f;->h:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p0, p0, LU0/g;->w:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final c(I)I
    .locals 5

    iget-object p0, p0, LU0/g;->d:LU0/f;

    iget v0, p0, LU0/f;->m:F

    const/4 v1, 0x0

    add-float/2addr v0, v1

    iget v2, p0, LU0/f;->l:F

    add-float/2addr v0, v2

    iget-object p0, p0, LU0/f;->b:LP0/a;

    if-eqz p0, :cond_3

    iget-boolean v2, p0, LP0/a;->a:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xff

    invoke-static {p1, v2}, LC/a;->h(II)I

    move-result v3

    iget v4, p0, LP0/a;->d:I

    if-ne v3, v4, :cond_3

    iget v3, p0, LP0/a;->e:F

    cmpg-float v4, v3, v1

    if-lez v4, :cond_1

    cmpg-float v4, v0, v1

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v3

    double-to-float v0, v3

    const/high16 v3, 0x40900000    # 4.5f

    mul-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {p1, v2}, LC/a;->h(II)I

    move-result p1

    iget v2, p0, LP0/a;->b:I

    invoke-static {v0, p1, v2}, LK/I;->e0(FII)I

    move-result p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget p0, p0, LP0/a;->c:I

    if-eqz p0, :cond_2

    sget v0, LP0/a;->f:I

    invoke-static {p0, v0}, LC/a;->h(II)I

    move-result p0

    invoke-static {p0, p1}, LC/a;->f(II)I

    move-result p1

    :cond_2
    invoke-static {p1, v3}, LC/a;->h(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LU0/j;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, LU0/j;->f(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p4, LU0/j;->f:LU0/c;

    invoke-interface {p3, p5}, LU0/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p0, p0, LU0/g;->d:LU0/f;

    iget p0, p0, LU0/f;->i:F

    mul-float/2addr p3, p0

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v6, p0

    iget-object v7, v6, LU0/g;->q:Landroid/graphics/Paint;

    iget-object v0, v6, LU0/g;->u:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    iget-object v0, v6, LU0/g;->d:LU0/f;

    iget v0, v0, LU0/f;->k:I

    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int/2addr v0, v8

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, v6, LU0/g;->r:Landroid/graphics/Paint;

    iget-object v0, v6, LU0/g;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v6, LU0/g;->d:LU0/f;

    iget v0, v0, LU0/f;->j:F

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    iget-object v0, v6, LU0/g;->d:LU0/f;

    iget v0, v0, LU0/f;->k:I

    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int/2addr v0, v10

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, v6, LU0/g;->h:Z

    iget-object v3, v6, LU0/g;->j:Landroid/graphics/Path;

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, LU0/g;->g()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    neg-float v0, v0

    iget-object v4, v6, LU0/g;->d:LU0/f;

    iget-object v4, v4, LU0/f;->a:LU0/j;

    invoke-virtual {v4}, LU0/j;->g()LU0/j;

    move-result-object v5

    iget-object v11, v4, LU0/j;->e:LU0/c;

    instance-of v12, v11, LU0/h;

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    new-instance v12, LU0/b;

    invoke-direct {v12, v0, v11}, LU0/b;-><init>(FLU0/c;)V

    move-object v11, v12

    :goto_1
    iput-object v11, v5, LU0/j;->e:LU0/c;

    iget-object v11, v4, LU0/j;->f:LU0/c;

    instance-of v12, v11, LU0/h;

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    new-instance v12, LU0/b;

    invoke-direct {v12, v0, v11}, LU0/b;-><init>(FLU0/c;)V

    move-object v11, v12

    :goto_2
    iput-object v11, v5, LU0/j;->f:LU0/c;

    iget-object v11, v4, LU0/j;->h:LU0/c;

    instance-of v12, v11, LU0/h;

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    new-instance v12, LU0/b;

    invoke-direct {v12, v0, v11}, LU0/b;-><init>(FLU0/c;)V

    move-object v11, v12

    :goto_3
    iput-object v11, v5, LU0/j;->h:LU0/c;

    iget-object v4, v4, LU0/j;->g:LU0/c;

    instance-of v11, v4, LU0/h;

    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    new-instance v11, LU0/b;

    invoke-direct {v11, v0, v4}, LU0/b;-><init>(FLU0/c;)V

    move-object v4, v11

    :goto_4
    iput-object v4, v5, LU0/j;->g:LU0/c;

    invoke-virtual {v5}, LU0/j;->a()LU0/j;

    move-result-object v12

    iput-object v12, v6, LU0/g;->p:LU0/j;

    iget-object v0, v6, LU0/g;->d:LU0/f;

    iget v13, v0, LU0/f;->i:F

    iget-object v14, v6, LU0/g;->m:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual/range {p0 .. p0}, LU0/g;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float v1, v0, v2

    :cond_5
    invoke-virtual {v14, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, v6, LU0/g;->k:Landroid/graphics/Path;

    const/4 v15, 0x0

    iget-object v11, v6, LU0/g;->t:LS1/a;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, LS1/a;->a(LU0/j;FLandroid/graphics/RectF;LA1/e;Landroid/graphics/Path;)V

    invoke-virtual/range {p0 .. p0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v6, v0, v3}, LU0/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v0, 0x0

    iput-boolean v0, v6, LU0/g;->h:Z

    :cond_6
    iget-object v0, v6, LU0/g;->d:LU0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, LU0/f;->n:I

    if-lez v0, :cond_7

    iget-object v0, v6, LU0/g;->d:LU0/f;

    iget-object v0, v0, LU0/f;->a:LU0/j;

    invoke-virtual/range {p0 .. p0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, LU0/j;->f(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    :cond_7
    iget-object v0, v6, LU0/g;->d:LU0/f;

    iget-object v1, v0, LU0/f;->p:Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v1, v2, :cond_8

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v1, v2, :cond_9

    :cond_8
    iget-object v4, v0, LU0/f;->a:LU0/j;

    invoke-virtual/range {p0 .. p0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, LU0/g;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LU0/j;Landroid/graphics/RectF;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, LU0/g;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p1}, LU0/g;->e(Landroid/graphics/Canvas;)V

    :cond_a
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, LU0/g;->r:Landroid/graphics/Paint;

    iget-object v3, p0, LU0/g;->k:Landroid/graphics/Path;

    iget-object v4, p0, LU0/g;->p:LU0/j;

    iget-object v5, p0, LU0/g;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, LU0/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, LU0/g;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LU0/j;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final f()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, LU0/g;->l:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget-object v0, v0, LU0/f;->p:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, LU0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, LU0/g;->d:LU0/f;

    iget p0, p0, LU0/f;->k:I

    return p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, LU0/g;->d:LU0/f;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, LU0/g;->d:LU0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget-object v0, v0, LU0/f;->a:LU0/j;

    invoke-virtual {p0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, LU0/j;->f(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget-object v0, v0, LU0/f;->a:LU0/j;

    iget-object v0, v0, LU0/j;->e:LU0/c;

    invoke-virtual {p0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, LU0/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    iget-object v1, p0, LU0/g;->d:LU0/f;

    iget v1, v1, LU0/f;->i:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_0
    invoke-virtual {p0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, LU0/g;->j:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, LU0/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget-object v0, v0, LU0/f;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, LU0/g;->n:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, LU0/g;->j:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v2}, LU0/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object p0, p0, LU0/g;->o:Landroid/graphics/Region;

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-object v1
.end method

.method public final h(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, LU0/g;->d:LU0/f;

    new-instance v1, LP0/a;

    invoke-direct {v1, p1}, LP0/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, LU0/f;->b:LP0/a;

    invoke-virtual {p0}, LU0/g;->m()V

    return-void
.end method

.method public final i(F)V
    .locals 2

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget v1, v0, LU0/f;->m:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, LU0/f;->m:F

    invoke-virtual {p0}, LU0/g;->m()V

    :cond_0
    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LU0/g;->h:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget-object v0, v0, LU0/f;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, LU0/g;->d:LU0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget-object v0, v0, LU0/f;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object p0, p0, LU0/g;->d:LU0/f;

    iget-object p0, p0, LU0/f;->c:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final j(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget-object v1, v0, LU0/f;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, LU0/f;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, LU0/g;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final k([I)Z
    .locals 4

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget-object v0, v0, LU0/f;->c:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LU0/g;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, LU0/g;->d:LU0/f;

    iget-object v3, v3, LU0/f;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, LU0/g;->d:LU0/f;

    iget-object v2, v2, LU0/f;->d:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, LU0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object p0, p0, LU0/g;->d:LU0/f;

    iget-object p0, p0, LU0/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    if-eq v3, p0, :cond_1

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final l()Z
    .locals 7

    iget-object v0, p0, LU0/g;->u:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, LU0/g;->v:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, LU0/g;->d:LU0/f;

    iget-object v3, v2, LU0/f;->e:Landroid/content/res/ColorStateList;

    iget-object v2, v2, LU0/f;->f:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, LU0/g;->q:Landroid/graphics/Paint;

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-virtual {p0, v3}, LU0/g;->c(I)I

    move-result v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v4, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v2}, LU0/g;->c(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    iput-object v4, p0, LU0/g;->u:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, LU0/g;->d:LU0/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iput-object v2, p0, LU0/g;->v:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, LU0/g;->d:LU0/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LU0/g;->u:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, LU0/g;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_3
    return v5
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget v1, v0, LU0/f;->m:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, LU0/f;->n:I

    iget-object v0, p0, LU0/g;->d:LU0/f;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, LU0/f;->o:I

    invoke-virtual {p0}, LU0/g;->l()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, LU0/f;

    iget-object v1, p0, LU0/g;->d:LU0/f;

    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, LU0/f;->c:Landroid/content/res/ColorStateList;

    iput-object v2, v0, LU0/f;->d:Landroid/content/res/ColorStateList;

    iput-object v2, v0, LU0/f;->e:Landroid/content/res/ColorStateList;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v0, LU0/f;->f:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v0, LU0/f;->g:Landroid/graphics/Rect;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, LU0/f;->h:F

    iput v2, v0, LU0/f;->i:F

    const/16 v2, 0xff

    iput v2, v0, LU0/f;->k:I

    const/4 v2, 0x0

    iput v2, v0, LU0/f;->l:F

    iput v2, v0, LU0/f;->m:F

    const/4 v2, 0x0

    iput v2, v0, LU0/f;->n:I

    iput v2, v0, LU0/f;->o:I

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v2, v0, LU0/f;->p:Landroid/graphics/Paint$Style;

    iget-object v2, v1, LU0/f;->a:LU0/j;

    iput-object v2, v0, LU0/f;->a:LU0/j;

    iget-object v2, v1, LU0/f;->b:LP0/a;

    iput-object v2, v0, LU0/f;->b:LP0/a;

    iget v2, v1, LU0/f;->j:F

    iput v2, v0, LU0/f;->j:F

    iget-object v2, v1, LU0/f;->c:Landroid/content/res/ColorStateList;

    iput-object v2, v0, LU0/f;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v1, LU0/f;->d:Landroid/content/res/ColorStateList;

    iput-object v2, v0, LU0/f;->d:Landroid/content/res/ColorStateList;

    iget-object v2, v1, LU0/f;->f:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v0, LU0/f;->f:Landroid/graphics/PorterDuff$Mode;

    iget-object v2, v1, LU0/f;->e:Landroid/content/res/ColorStateList;

    iput-object v2, v0, LU0/f;->e:Landroid/content/res/ColorStateList;

    iget v2, v1, LU0/f;->k:I

    iput v2, v0, LU0/f;->k:I

    iget v2, v1, LU0/f;->h:F

    iput v2, v0, LU0/f;->h:F

    iget v2, v1, LU0/f;->o:I

    iput v2, v0, LU0/f;->o:I

    iget v2, v1, LU0/f;->i:F

    iput v2, v0, LU0/f;->i:F

    iget v2, v1, LU0/f;->l:F

    iput v2, v0, LU0/f;->l:F

    iget v2, v1, LU0/f;->m:F

    iput v2, v0, LU0/f;->m:F

    iget v2, v1, LU0/f;->n:I

    iput v2, v0, LU0/f;->n:I

    iget-object v2, v1, LU0/f;->p:Landroid/graphics/Paint$Style;

    iput-object v2, v0, LU0/f;->p:Landroid/graphics/Paint$Style;

    iget-object v2, v1, LU0/f;->g:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v1, v1, LU0/f;->g:Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, LU0/f;->g:Landroid/graphics/Rect;

    :cond_0
    iput-object v0, p0, LU0/g;->d:LU0/f;

    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LU0/g;->h:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    invoke-virtual {p0, p1}, LU0/g;->k([I)Z

    move-result p1

    invoke-virtual {p0}, LU0/g;->l()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, LU0/g;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget v1, v0, LU0/f;->k:I

    if-eq v1, p1, :cond_0

    iput p1, v0, LU0/f;->k:I

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p1, p0, LU0/g;->d:LU0/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LU0/g;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iput-object p1, v0, LU0/f;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, LU0/g;->l()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, LU0/g;->d:LU0/f;

    iget-object v1, v0, LU0/f;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, LU0/f;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, LU0/g;->l()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
