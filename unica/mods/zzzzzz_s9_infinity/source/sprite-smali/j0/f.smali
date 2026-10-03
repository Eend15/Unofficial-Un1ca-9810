.class public final Lj0/f;
.super Lj0/l;
.source "SourceFile"


# static fields
.field public static final A:Landroidx/appcompat/widget/G0;

.field public static final B:Landroidx/appcompat/widget/G0;

.field public static final C:Landroidx/appcompat/widget/G0;

.field public static final D:Landroidx/appcompat/widget/G0;

.field public static final E:Landroidx/appcompat/widget/G0;

.field public static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:clip"

    const-string v1, "android:changeBounds:parent"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/f;->z:[Ljava/lang/String;

    new-instance v0, Lj0/b;

    const-string v1, "boundsOrigin"

    const-class v2, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lj0/b;->a:Landroid/graphics/Rect;

    new-instance v0, Landroidx/appcompat/widget/G0;

    const-string v1, "topLeft"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Landroidx/appcompat/widget/G0;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lj0/f;->A:Landroidx/appcompat/widget/G0;

    new-instance v0, Landroidx/appcompat/widget/G0;

    const-string v3, "bottomRight"

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Landroidx/appcompat/widget/G0;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lj0/f;->B:Landroidx/appcompat/widget/G0;

    new-instance v0, Landroidx/appcompat/widget/G0;

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4}, Landroidx/appcompat/widget/G0;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lj0/f;->C:Landroidx/appcompat/widget/G0;

    new-instance v0, Landroidx/appcompat/widget/G0;

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Landroidx/appcompat/widget/G0;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lj0/f;->D:Landroidx/appcompat/widget/G0;

    new-instance v0, Landroidx/appcompat/widget/G0;

    const-string v1, "position"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v1, v3}, Landroidx/appcompat/widget/G0;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lj0/f;->E:Landroidx/appcompat/widget/G0;

    return-void
.end method

.method public static F(Lj0/q;)V
    .locals 6

    iget-object v0, p0, Lj0/q;->b:Landroid/view/View;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lj0/q;->a:Ljava/util/HashMap;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:changeBounds:bounds"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lj0/q;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string v0, "android:changeBounds:parent"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final c(Lj0/q;)V
    .locals 0

    invoke-static {p1}, Lj0/f;->F(Lj0/q;)V

    return-void
.end method

.method public final f(Lj0/q;)V
    .locals 0

    invoke-static {p1}, Lj0/f;->F(Lj0/q;)V

    return-void
.end method

.method public final j(Landroid/widget/FrameLayout;Lj0/q;Lj0/q;)Landroid/animation/Animator;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_1
    iget-object v1, v1, Lj0/q;->a:Ljava/util/HashMap;

    iget-object v5, v2, Lj0/q;->a:Ljava/util/HashMap;

    const-string v6, "android:changeBounds:parent"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    if-nez v6, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_3
    const-string v6, "android:changeBounds:bounds"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    iget v12, v7, Landroid/graphics/Rect;->right:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v12, v8

    sub-int v15, v7, v10

    sub-int v4, v13, v9

    sub-int v3, v6, v11

    const-string v0, "android:changeBounds:clip"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v5, 0x0

    if-eqz v14, :cond_4

    if-nez v15, :cond_5

    :cond_4
    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    :cond_5
    if-ne v8, v9, :cond_6

    if-eq v10, v11, :cond_7

    :cond_6
    const/4 v5, 0x1

    :cond_7
    if-ne v12, v13, :cond_8

    if-eq v7, v6, :cond_9

    :cond_8
    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    :goto_1
    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    goto :goto_0

    :goto_2
    add-int/2addr v5, v0

    :cond_c
    if-lez v5, :cond_12

    sget-object v0, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    iget-object v0, v2, Lj0/q;->b:Landroid/view/View;

    invoke-virtual {v0, v8, v10, v12, v7}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    const/4 v1, 0x2

    if-ne v5, v1, :cond_e

    if-ne v14, v4, :cond_d

    if-ne v15, v3, :cond_d

    move-object/from16 v1, p0

    iget-object v2, v1, Lj0/l;->v:LG4/d;

    int-to-float v3, v8

    int-to-float v4, v10

    int-to-float v5, v9

    int-to-float v6, v11

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v5, v6}, LG4/d;->l(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Lj0/f;->E:Landroidx/appcompat/widget/G0;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto/16 :goto_4

    :cond_d
    move-object/from16 v1, p0

    new-instance v2, Lj0/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lj0/e;->e:Landroid/view/View;

    iget-object v3, v1, Lj0/l;->v:LG4/d;

    int-to-float v4, v8

    int-to-float v5, v10

    int-to-float v8, v9

    int-to-float v9, v11

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v8, v9}, LG4/d;->l(FFFF)Landroid/graphics/Path;

    move-result-object v3

    sget-object v4, Lj0/f;->A:Landroidx/appcompat/widget/G0;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, v1, Lj0/l;->v:LG4/d;

    int-to-float v5, v12

    int-to-float v7, v7

    int-to-float v8, v13

    int-to-float v6, v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v7, v8, v6}, LG4/d;->l(FFFF)Landroid/graphics/Path;

    move-result-object v4

    sget-object v5, Lj0/f;->B:Landroidx/appcompat/widget/G0;

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    filled-new-array {v3, v4}, [Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lj0/c;

    invoke-direct {v3, v2}, Lj0/c;-><init>(Lj0/e;)V

    invoke-virtual {v5, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v5

    goto :goto_4

    :cond_e
    move-object/from16 v1, p0

    if-ne v8, v9, :cond_10

    if-eq v10, v11, :cond_f

    goto :goto_3

    :cond_f
    iget-object v2, v1, Lj0/l;->v:LG4/d;

    int-to-float v3, v12

    int-to-float v4, v7

    int-to-float v5, v13

    int-to-float v6, v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v5, v6}, LG4/d;->l(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Lj0/f;->C:Landroidx/appcompat/widget/G0;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_4

    :cond_10
    :goto_3
    iget-object v2, v1, Lj0/l;->v:LG4/d;

    int-to-float v3, v8

    int-to-float v4, v10

    int-to-float v5, v9

    int-to-float v6, v11

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v5, v6}, LG4/d;->l(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Lj0/f;->D:Landroidx/appcompat/widget/G0;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    new-instance v3, Lj0/d;

    invoke-direct {v3, v0}, Lj0/d;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v3}, Lj0/l;->a(Lj0/k;)V

    :cond_11
    return-object v2

    :cond_12
    const/4 v0, 0x0

    :goto_5
    return-object v0
.end method

.method public final o()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lj0/f;->z:[Ljava/lang/String;

    return-object p0
.end method
