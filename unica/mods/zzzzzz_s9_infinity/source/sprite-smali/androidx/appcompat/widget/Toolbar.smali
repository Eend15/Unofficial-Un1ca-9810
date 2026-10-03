.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$SavedState;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public final C:Landroid/content/res/ColorStateList;

.field public final D:Landroid/content/res/ColorStateList;

.field public E:Z

.field public F:Z

.field public final G:Ljava/util/ArrayList;

.field public final H:Ljava/util/ArrayList;

.field public final I:[I

.field public final J:LK/j;

.field public K:Ljava/util/ArrayList;

.field public L:Landroidx/appcompat/app/L;

.field public final M:Landroidx/appcompat/widget/M0;

.field public N:Landroidx/appcompat/widget/T0;

.field public O:Landroidx/appcompat/widget/l;

.field public P:Landroidx/appcompat/widget/O0;

.field public Q:LI/d;

.field public R:Landroidx/appcompat/app/L;

.field public S:Landroid/window/OnBackInvokedCallback;

.field public T:Landroid/window/OnBackInvokedDispatcher;

.field public U:Z

.field public final V:LA1/l;

.field public d:Landroidx/appcompat/widget/ActionMenuView;

.field public e:Landroidx/appcompat/widget/X;

.field public f:Landroidx/appcompat/widget/X;

.field public g:Landroidx/appcompat/widget/x;

.field public h:Landroidx/appcompat/widget/y;

.field public final i:Landroid/graphics/drawable/Drawable;

.field public final j:Ljava/lang/CharSequence;

.field public k:Landroidx/appcompat/widget/x;

.field public l:Landroid/view/View;

.field public m:Landroid/content/Context;

.field public n:I

.field public o:I

.field public p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public w:Landroidx/appcompat/widget/E0;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lf/a;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x800013

    .line 3
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->z:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->I:[I

    .line 7
    new-instance v1, LK/j;

    new-instance v2, Landroidx/appcompat/widget/L0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/widget/L0;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    invoke-direct {v1, v2}, LK/j;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->J:LK/j;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Landroidx/appcompat/widget/M0;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/M0;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/M0;

    .line 10
    new-instance v1, LA1/l;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, LA1/l;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->V:LA1/l;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lf/j;->Toolbar:[I

    invoke-static {v1, p2, v2, p3}, Ln1/a;->t(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ln1/a;

    move-result-object v1

    .line 12
    sget-object v4, Lf/j;->Toolbar:[I

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    .line 13
    iget-object v2, v1, Ln1/a;->b:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    invoke-static/range {v2 .. v8}, LK/B;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 14
    sget p1, Lf/j;->Toolbar_titleTextAppearance:I

    .line 15
    iget-object p2, v1, Ln1/a;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/TypedArray;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 16
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    .line 17
    sget p1, Lf/j;->Toolbar_subtitleTextAppearance:I

    .line 18
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 19
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    .line 20
    sget p1, Lf/j;->Toolbar_android_gravity:I

    .line 21
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 22
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->z:I

    .line 23
    sget p1, Lf/j;->Toolbar_buttonGravity:I

    const/16 v0, 0x30

    .line 24
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 25
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    .line 26
    sget p1, Lf/j;->Toolbar_titleMargin:I

    .line 27
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 28
    sget v0, Lf/j;->Toolbar_titleMargins:I

    .line 29
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget v0, Lf/j;->Toolbar_titleMargins:I

    .line 31
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 32
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->t:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    .line 33
    sget p1, Lf/j;->Toolbar_titleMarginStart:I

    const/4 v0, -0x1

    .line 34
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 35
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    .line 36
    :cond_1
    sget p1, Lf/j;->Toolbar_titleMarginEnd:I

    .line 37
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_2

    .line 38
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->t:I

    .line 39
    :cond_2
    sget p1, Lf/j;->Toolbar_titleMarginTop:I

    .line 40
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_3

    .line 41
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    .line 42
    :cond_3
    sget p1, Lf/j;->Toolbar_titleMarginBottom:I

    .line 43
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_4

    .line 44
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    .line 45
    :cond_4
    sget p1, Lf/j;->Toolbar_maxButtonHeight:I

    .line 46
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 47
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    .line 48
    sget p1, Lf/j;->Toolbar_contentInsetStart:I

    const/high16 v0, -0x80000000

    .line 49
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 50
    sget v2, Lf/j;->Toolbar_contentInsetEnd:I

    .line 51
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 52
    sget v3, Lf/j;->Toolbar_contentInsetLeft:I

    .line 53
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 54
    sget v4, Lf/j;->Toolbar_contentInsetRight:I

    .line 55
    invoke-virtual {p2, v4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 56
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->c()V

    .line 57
    iget-object v5, p0, Landroidx/appcompat/widget/Toolbar;->w:Landroidx/appcompat/widget/E0;

    .line 58
    iput-boolean p3, v5, Landroidx/appcompat/widget/E0;->h:Z

    if-eq v3, v0, :cond_5

    .line 59
    iput v3, v5, Landroidx/appcompat/widget/E0;->e:I

    iput v3, v5, Landroidx/appcompat/widget/E0;->a:I

    :cond_5
    if-eq v4, v0, :cond_6

    .line 60
    iput v4, v5, Landroidx/appcompat/widget/E0;->f:I

    iput v4, v5, Landroidx/appcompat/widget/E0;->b:I

    :cond_6
    if-ne p1, v0, :cond_7

    if-eq v2, v0, :cond_8

    .line 61
    :cond_7
    invoke-virtual {v5, p1, v2}, Landroidx/appcompat/widget/E0;->a(II)V

    .line 62
    :cond_8
    sget p1, Lf/j;->Toolbar_contentInsetStartWithNavigation:I

    .line 63
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 64
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    .line 65
    sget p1, Lf/j;->Toolbar_contentInsetEndWithActions:I

    .line 66
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 67
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->y:I

    .line 68
    sget p1, Lf/j;->Toolbar_collapseIcon:I

    invoke-virtual {v1, p1}, Ln1/a;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/graphics/drawable/Drawable;

    .line 69
    sget p1, Lf/j;->Toolbar_collapseContentDescription:I

    .line 70
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 71
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->j:Ljava/lang/CharSequence;

    .line 72
    sget p1, Lf/j;->Toolbar_title:I

    .line 73
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->y(Ljava/lang/CharSequence;)V

    .line 76
    :cond_9
    sget p1, Lf/j;->Toolbar_subtitle:I

    .line 77
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 79
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->x(Ljava/lang/CharSequence;)V

    .line 80
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroid/content/Context;

    .line 81
    sget p1, Lf/j;->Toolbar_popupTheme:I

    .line 82
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 83
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    if-eq v0, p1, :cond_c

    .line 84
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    if-nez p1, :cond_b

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroid/content/Context;

    goto :goto_0

    .line 86
    :cond_b
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroid/content/Context;

    .line 87
    :cond_c
    :goto_0
    sget p1, Lf/j;->Toolbar_navigationIcon:I

    invoke-virtual {v1, p1}, Ln1/a;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 88
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->w(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_d
    sget p1, Lf/j;->Toolbar_navigationContentDescription:I

    .line 90
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 92
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->v(Ljava/lang/CharSequence;)V

    .line 93
    :cond_e
    sget p1, Lf/j;->Toolbar_logo:I

    invoke-virtual {v1, p1}, Ln1/a;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 94
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->u(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_f
    sget p1, Lf/j;->Toolbar_logoDescription:I

    .line 96
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 99
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_10

    .line 100
    new-instance v0, Landroidx/appcompat/widget/y;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    .line 101
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_11

    .line 102
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 103
    :cond_11
    sget p1, Lf/j;->Toolbar_titleTextColor:I

    .line 104
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 105
    sget p1, Lf/j;->Toolbar_titleTextColor:I

    invoke-virtual {v1, p1}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 106
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->C:Landroid/content/res/ColorStateList;

    .line 107
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_12

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 109
    :cond_12
    sget p1, Lf/j;->Toolbar_subtitleTextColor:I

    .line 110
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 111
    sget p1, Lf/j;->Toolbar_subtitleTextColor:I

    invoke-virtual {v1, p1}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 112
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->D:Landroid/content/res/ColorStateList;

    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_13

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 115
    :cond_13
    sget p1, Lf/j;->Toolbar_menu:I

    .line 116
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 117
    sget p1, Lf/j;->Toolbar_menu:I

    .line 118
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 119
    new-instance p2, Lj/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lj/i;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->m()Lk/j;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lj/i;->inflate(ILandroid/view/Menu;)V

    .line 121
    :cond_14
    invoke-virtual {v1}, Ln1/a;->w()V

    return-void
.end method

.method public static f()Landroidx/appcompat/widget/P0;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/P0;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/widget/P0;->b:I

    const v1, 0x800013

    iput v1, v0, Landroidx/appcompat/widget/P0;->a:I

    return-object v0
.end method

.method public static g(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/P0;
    .locals 2

    instance-of v0, p0, Landroidx/appcompat/widget/P0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/P0;

    check-cast p0, Landroidx/appcompat/widget/P0;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/P0;-><init>(Landroidx/appcompat/widget/P0;)V

    iput v1, v0, Landroidx/appcompat/widget/P0;->b:I

    iget p0, p0, Landroidx/appcompat/widget/P0;->b:I

    iput p0, v0, Landroidx/appcompat/widget/P0;->b:I

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/P0;

    check-cast p0, Landroidx/appcompat/widget/P0;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/P0;-><init>(Landroidx/appcompat/widget/P0;)V

    iput v1, v0, Landroidx/appcompat/widget/P0;->b:I

    return-object v0

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/appcompat/widget/P0;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/P0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, v0, Landroidx/appcompat/widget/P0;->b:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object v0

    :cond_2
    new-instance v0, Landroidx/appcompat/widget/P0;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/P0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, v0, Landroidx/appcompat/widget/P0;->b:I

    return-object v0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static n(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final B()V
    .locals 3

    invoke-static {p0}, Landroidx/appcompat/widget/N0;->a(Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroidx/appcompat/widget/O0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/widget/O0;->e:Lk/l;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->U:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->T:Landroid/window/OnBackInvokedDispatcher;

    if-nez v2, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->S:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/appcompat/widget/L0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/L0;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    invoke-static {v1}, Landroidx/appcompat/widget/N0;->b(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->S:Landroid/window/OnBackInvokedCallback;

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->S:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/N0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->T:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->T:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->S:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/N0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->T:Landroid/window/OnBackInvokedDispatcher;

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/ArrayList;I)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-static {p2, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-eqz v0, :cond_4

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_8

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/P0;

    iget v6, v1, Landroidx/appcompat/widget/P0;->b:I

    if-nez v6, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v1, v1, Landroidx/appcompat/widget/P0;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-static {v1, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v2, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    if-ne v6, v2, :cond_1

    move v1, v4

    goto :goto_2

    :cond_1
    move v1, v5

    :cond_2
    :goto_2
    if-ne v1, p2, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-ge v1, v3, :cond_8

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/P0;

    iget v7, v6, Landroidx/appcompat/widget/P0;->b:I

    if-nez v7, :cond_7

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v6, v6, Landroidx/appcompat/widget/P0;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-eq v6, v2, :cond_6

    if-eq v6, v5, :cond_6

    if-eq v6, v4, :cond_6

    if-ne v7, v2, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v5

    :cond_6
    :goto_4
    if-ne v6, p2, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public final b(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->f()Landroidx/appcompat/widget/P0;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroidx/appcompat/widget/Toolbar;->g(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/P0;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Landroidx/appcompat/widget/P0;

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Landroidx/appcompat/widget/P0;->b:I

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->w:Landroidx/appcompat/widget/E0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/E0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/widget/E0;->a:I

    iput v1, v0, Landroidx/appcompat/widget/E0;->b:I

    const/high16 v2, -0x80000000

    iput v2, v0, Landroidx/appcompat/widget/E0;->c:I

    iput v2, v0, Landroidx/appcompat/widget/E0;->d:I

    iput v1, v0, Landroidx/appcompat/widget/E0;->e:I

    iput v1, v0, Landroidx/appcompat/widget/E0;->f:I

    iput-boolean v1, v0, Landroidx/appcompat/widget/E0;->g:Z

    iput-boolean v1, v0, Landroidx/appcompat/widget/E0;->h:Z

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->w:Landroidx/appcompat/widget/E0;

    :cond_0
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Landroidx/appcompat/widget/P0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->u:I

    if-eq v2, v1, :cond_1

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->u:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/M0;

    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->D:Landroidx/appcompat/widget/M0;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->Q:LI/d;

    new-instance v2, Landroidx/appcompat/widget/M0;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/M0;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->x:LI/d;

    iput-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->y:Lk/h;

    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->f()Landroidx/appcompat/widget/P0;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800005

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/P0;->a:I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/x;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lf/a;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->f()Landroidx/appcompat/widget/P0;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/P0;->a:I

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->f()Landroidx/appcompat/widget/P0;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 2
    new-instance v0, Landroidx/appcompat/widget/P0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/appcompat/widget/P0;->a:I

    .line 5
    sget-object v2, Lf/j;->ActionBarLayout:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 6
    sget p1, Lf/j;->ActionBarLayout_android_layout_gravity:I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/appcompat/widget/P0;->a:I

    .line 7
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    iput v1, v0, Landroidx/appcompat/widget/P0;->b:I

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/Toolbar;->g(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/P0;

    move-result-object p0

    return-object p0
.end method

.method public final h(Landroid/view/View;I)I
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/P0;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget v2, v0, Landroidx/appcompat/widget/P0;->a:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x10

    const/16 v4, 0x50

    const/16 v5, 0x30

    if-eq v2, v3, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->z:I

    and-int/lit8 v2, v2, 0x70

    :cond_1
    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int v3, p0, p2

    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v3, v4, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    sub-int/2addr p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v3

    sub-int/2addr p0, p2

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge p0, p1, :cond_3

    sub-int/2addr p1, p0

    sub-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_3
    :goto_1
    add-int/2addr p2, v3

    return p2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, p1

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, p2

    return v1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method public final i()I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->s:Lk/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lk/j;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->w:Landroidx/appcompat/widget/E0;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroidx/appcompat/widget/E0;->g:Z

    if-eqz v2, :cond_0

    iget v0, v0, Landroidx/appcompat/widget/E0;->a:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroidx/appcompat/widget/E0;->b:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget p0, p0, Landroidx/appcompat/widget/Toolbar;->y:I

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_3

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->w:Landroidx/appcompat/widget/E0;

    if-eqz p0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/widget/E0;->g:Z

    if-eqz v0, :cond_3

    iget p0, p0, Landroidx/appcompat/widget/E0;->a:I

    :goto_1
    move v1, p0

    goto :goto_2

    :cond_3
    iget p0, p0, Landroidx/appcompat/widget/E0;->b:I

    goto :goto_1

    :cond_4
    :goto_2
    move p0, v1

    :goto_3
    return p0
.end method

.method public final j()I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->w:Landroidx/appcompat/widget/E0;

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Landroidx/appcompat/widget/E0;->g:Z

    if-eqz v2, :cond_1

    iget v0, v0, Landroidx/appcompat/widget/E0;->b:I

    goto :goto_1

    :cond_1
    iget v0, v0, Landroidx/appcompat/widget/E0;->a:I

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget p0, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_4

    :cond_3
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->w:Landroidx/appcompat/widget/E0;

    if-eqz p0, :cond_5

    iget-boolean v0, p0, Landroidx/appcompat/widget/E0;->g:Z

    if-eqz v0, :cond_4

    iget p0, p0, Landroidx/appcompat/widget/E0;->b:I

    :goto_2
    move v1, p0

    goto :goto_3

    :cond_4
    iget p0, p0, Landroidx/appcompat/widget/E0;->a:I

    goto :goto_2

    :cond_5
    :goto_3
    move p0, v1

    :goto_4
    return p0
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->m()Lk/j;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lk/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lk/j;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final m()Lk/j;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->d()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->s:Lk/j;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->m()Lk/j;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroidx/appcompat/widget/O0;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/O0;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/O0;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroidx/appcompat/widget/O0;

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/l;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/l;->r:Z

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroidx/appcompat/widget/O0;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lk/j;->b(Lk/v;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->B()V

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->m()Lk/j;

    move-result-object p0

    return-object p0
.end method

.method public final o(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->B()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->V:LA1/l;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->B()V

    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->F:Z

    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->F:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->F:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->F:Z

    :cond_3
    return v4
.end method

.method public onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->I:[I

    aput v2, v11, v3

    aput v2, v11, v2

    sget-object v12, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v12

    if-ltz v12, :cond_1

    sub-int v13, p5, p3

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_1

    :cond_1
    move v12, v2

    :goto_1
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v1, :cond_2

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, v13, v10, v12, v11}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;II[I)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_3

    :cond_2
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, v13, v6, v12, v11}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;II[I)I

    move-result v13

    :goto_2
    move v14, v10

    goto :goto_3

    :cond_3
    move v13, v6

    goto :goto_2

    :goto_3
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz v1, :cond_4

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, v15, v14, v12, v11}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;II[I)I

    move-result v14

    goto :goto_4

    :cond_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, v15, v13, v12, v11}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;II[I)I

    move-result v13

    :cond_5
    :goto_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v1, :cond_6

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15, v13, v12, v11}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;II[I)I

    move-result v13

    goto :goto_5

    :cond_6
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15, v14, v12, v11}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;II[I)I

    move-result v14

    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    if-ne v15, v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->i()I

    move-result v15

    goto :goto_6

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->j()I

    move-result v15

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->j()I

    move-result v2

    goto :goto_7

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->i()I

    move-result v2

    :goto_7
    sub-int v3, v15, v13

    move/from16 p4, v7

    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v7

    sub-int v3, v10, v14

    sub-int v3, v2, v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v7, 0x1

    aput v3, v11, v7

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v10, v2

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v1, :cond_a

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v0, v7, v2, v12, v11}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;II[I)I

    move-result v2

    goto :goto_8

    :cond_a
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v0, v7, v3, v12, v11}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;II[I)I

    move-result v3

    :cond_b
    :goto_8
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v1, :cond_c

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v7, v2, v12, v11}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;II[I)I

    move-result v2

    goto :goto_9

    :cond_c
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v7, v3, v12, v11}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;II[I)I

    move-result v3

    :cond_d
    :goto_9
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v7

    iget-object v10, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v10

    if-eqz v7, :cond_e

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/P0;

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v15

    goto :goto_a

    :cond_e
    const/4 v13, 0x0

    :goto_a
    if-eqz v10, :cond_f

    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/P0;

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v4

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v15

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v14

    add-int/2addr v13, v4

    goto :goto_b

    :cond_f
    move/from16 v16, v4

    :goto_b
    if-nez v7, :cond_11

    if-eqz v10, :cond_10

    goto :goto_c

    :cond_10
    move/from16 v17, v6

    move/from16 p3, v12

    goto/16 :goto_18

    :cond_11
    :goto_c
    if-eqz v7, :cond_12

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    goto :goto_d

    :cond_12
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    :goto_d
    if-eqz v10, :cond_13

    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    goto :goto_e

    :cond_13
    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    :goto_e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/P0;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/P0;

    if-eqz v7, :cond_14

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    if-gtz v15, :cond_15

    :cond_14
    if-eqz v10, :cond_16

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    if-lez v15, :cond_16

    :cond_15
    move/from16 v17, v6

    const/4 v15, 0x1

    goto :goto_f

    :cond_16
    move/from16 v17, v6

    const/4 v15, 0x0

    :goto_f
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->z:I

    and-int/lit8 v6, v6, 0x70

    move/from16 p3, v12

    iget v12, v0, Landroidx/appcompat/widget/Toolbar;->u:I

    move/from16 p5, v3

    const/16 v3, 0x30

    if-eq v6, v3, :cond_1a

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->v:I

    move/from16 v18, v10

    const/16 v10, 0x50

    if-eq v6, v10, :cond_19

    sub-int v6, v5, v8

    sub-int/2addr v6, v9

    sub-int/2addr v6, v13

    div-int/lit8 v6, v6, 0x2

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v12

    if-ge v6, v10, :cond_17

    move v6, v10

    goto :goto_10

    :cond_17
    sub-int/2addr v5, v9

    sub-int/2addr v5, v13

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v3

    if-ge v5, v4, :cond_18

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v5

    sub-int/2addr v6, v4

    const/4 v3, 0x0

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_18
    :goto_10
    add-int/2addr v8, v6

    goto :goto_11

    :cond_19
    sub-int/2addr v5, v9

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    sub-int v8, v5, v13

    goto :goto_11

    :cond_1a
    move/from16 v18, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    add-int v8, v3, v12

    :goto_11
    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->t:I

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    if-eqz v15, :cond_1b

    goto :goto_12

    :cond_1b
    const/4 v3, 0x0

    :goto_12
    aget v5, v11, v1

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v2, v6

    neg-int v3, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v1

    if-eqz v7, :cond_1c

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/P0;

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v6, v3, v8, v2, v5}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v3, v4

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v5, v1

    goto :goto_13

    :cond_1c
    move v3, v2

    :goto_13
    if-eqz v18, :cond_1d

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/P0;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v2, v1

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v6, v1, v8, v2, v5}, Landroid/view/View;->layout(IIII)V

    sub-int v1, v2, v4

    goto :goto_14

    :cond_1d
    move v1, v2

    :goto_14
    if-eqz v15, :cond_1e

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    :cond_1e
    move/from16 v3, p5

    goto :goto_18

    :cond_1f
    const/4 v1, 0x0

    if-eqz v15, :cond_20

    goto :goto_15

    :cond_20
    const/4 v3, 0x0

    :goto_15
    aget v5, v11, v1

    sub-int/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v5, v5, p5

    neg-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v1

    if-eqz v7, :cond_21

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/P0;

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v5

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v8

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v7, v5, v8, v3, v6}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v3, v4

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v6, v1

    goto :goto_16

    :cond_21
    move v3, v5

    :goto_16
    if-eqz v18, :cond_22

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/P0;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v5

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v8

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v7, v5, v8, v1, v6}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v4

    goto :goto_17

    :cond_22
    move v1, v5

    :goto_17
    if-eqz v15, :cond_23

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_18

    :cond_23
    move v3, v5

    :goto_18
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_24

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move/from16 v12, p3

    invoke-virtual {v0, v6, v5, v12, v11}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;II[I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto :goto_19

    :cond_24
    move/from16 v12, p3

    const/4 v6, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v3, :cond_25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v0, v7, v4, v12, v11}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;II[I)I

    move-result v4

    add-int/2addr v2, v6

    goto :goto_1a

    :cond_25
    invoke-virtual {v0, v1, v6}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/ArrayList;I)V

    const/4 v2, 0x0

    aget v3, v11, v2

    aget v2, v11, v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-ge v7, v6, :cond_26

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/P0;

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v13, v3

    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    neg-int v13, v13

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    neg-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    add-int/2addr v9, v14

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/2addr v7, v9

    move v2, v3

    move v3, v13

    goto :goto_1b

    :cond_26
    const/4 v2, 0x0

    sub-int v3, v16, v17

    sub-int v3, v3, p4

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v17

    div-int/lit8 v6, v8, 0x2

    sub-int/2addr v3, v6

    add-int/2addr v8, v3

    if-ge v3, v5, :cond_27

    goto :goto_1c

    :cond_27
    if-le v8, v4, :cond_28

    sub-int/2addr v8, v4

    sub-int v5, v3, v8

    goto :goto_1c

    :cond_28
    move v5, v3

    :goto_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1d
    if-ge v2, v3, :cond_29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4, v5, v12, v11}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;II[I)I

    move-result v5

    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_1d

    :cond_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-ne v0, v1, :cond_0

    move v6, v1

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v1

    move v6, v8

    :goto_0
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    iget v5, v7, Landroidx/appcompat/widget/Toolbar;->r:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;IIII)V

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->l(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->n(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v8, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v11, v0

    move v12, v2

    goto :goto_1

    :cond_1
    move v1, v8

    move v11, v1

    move v12, v11

    :goto_1
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    iget v5, v7, Landroidx/appcompat/widget/Toolbar;->r:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;IIII)V

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->l(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->n(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->j()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v13, v7, Landroidx/appcompat/widget/Toolbar;->I:[I

    aput v0, v13, v6

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget v5, v7, Landroidx/appcompat/widget/Toolbar;->r:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->t(Landroid/view/View;IIII)V

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->l(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->n(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_2

    :cond_3
    move v1, v8

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->i()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v10, v2

    sub-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v13, v9

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->s(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v10, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->n(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    :cond_4
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->s(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v10, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->n(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v14, v8

    :goto_3
    if-ge v14, v9, :cond_8

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/P0;

    iget v0, v0, Landroidx/appcompat/widget/P0;->b:I

    if-nez v0, :cond_7

    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->s(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v10, v0

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v15}, Landroidx/appcompat/widget/Toolbar;->n(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v11, v0

    move v12, v1

    :cond_7
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_8
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->u:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->v:I

    add-int v9, v0, v1

    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->s:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->t:I

    add-int v14, v0, v1

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    add-int v3, v10, v14

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v9

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->s(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->l(Landroid/view/View;)I

    move-result v1

    add-int v8, v1, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->n(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move v15, v12

    move v12, v0

    goto :goto_5

    :cond_9
    move v15, v12

    move v12, v8

    :goto_5
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    add-int v3, v10, v14

    add-int v5, v12, v9

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->s(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->n(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v12, v1

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    :cond_a
    add-int/2addr v10, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v15

    move/from16 v2, p1

    invoke-static {v0, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v2, v15, 0x10

    move/from16 v3, p2

    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->d:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->s:Lk/j;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->f:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroidx/appcompat/widget/O0;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lk/j;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_2
    iget-boolean p1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->g:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->V:LA1/l;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->c()V

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->w:Landroidx/appcompat/widget/E0;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p0, Landroidx/appcompat/widget/E0;->g:Z

    if-ne v0, p1, :cond_1

    goto :goto_5

    :cond_1
    iput-boolean v0, p0, Landroidx/appcompat/widget/E0;->g:Z

    iget-boolean p1, p0, Landroidx/appcompat/widget/E0;->h:Z

    if-eqz p1, :cond_7

    const/high16 p1, -0x80000000

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/appcompat/widget/E0;->d:I

    if-eq v0, p1, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/appcompat/widget/E0;->e:I

    :goto_1
    iput v0, p0, Landroidx/appcompat/widget/E0;->a:I

    iget v0, p0, Landroidx/appcompat/widget/E0;->c:I

    if-eq v0, p1, :cond_3

    goto :goto_2

    :cond_3
    iget v0, p0, Landroidx/appcompat/widget/E0;->f:I

    :goto_2
    iput v0, p0, Landroidx/appcompat/widget/E0;->b:I

    goto :goto_5

    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/E0;->c:I

    if-eq v0, p1, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/E0;->e:I

    :goto_3
    iput v0, p0, Landroidx/appcompat/widget/E0;->a:I

    iget v0, p0, Landroidx/appcompat/widget/E0;->d:I

    if-eq v0, p1, :cond_6

    goto :goto_4

    :cond_6
    iget v0, p0, Landroidx/appcompat/widget/E0;->f:I

    :goto_4
    iput v0, p0, Landroidx/appcompat/widget/E0;->b:I

    goto :goto_5

    :cond_7
    iget p1, p0, Landroidx/appcompat/widget/E0;->e:I

    iput p1, p0, Landroidx/appcompat/widget/E0;->a:I

    iget p1, p0, Landroidx/appcompat/widget/E0;->f:I

    iput p1, p0, Landroidx/appcompat/widget/E0;->b:I

    :goto_5
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroidx/appcompat/widget/O0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/widget/O0;->e:Lk/l;

    if-eqz v1, :cond_0

    iget v1, v1, Lk/l;->a:I

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->f:I

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->p()Z

    move-result p0

    iput-boolean p0, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->g:Z

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->E:Z

    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->E:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->E:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->E:Z

    :cond_3
    return v3
.end method

.method public final p()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final q(Landroid/view/View;II[I)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/P0;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p4, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, p2

    neg-int p2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p4, v2

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/widget/Toolbar;->h(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int p3, v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p0

    invoke-virtual {p1, v3, p0, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p2, p0

    add-int/2addr p2, v3

    return p2
.end method

.method public final r(Landroid/view/View;II[I)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/P0;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p4, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p4, v2

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/widget/Toolbar;->h(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p4, p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p4, p0, p2, v1}, Landroid/view/View;->layout(IIII)V

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p0

    sub-int/2addr p2, p3

    return p2
.end method

.method public final s(Landroid/view/View;IIII[I)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v5

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, p6

    add-int/2addr v1, v6

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p3

    add-int/2addr p0, p5

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v6

    return p0
.end method

.method public final t(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    add-int/2addr v2, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    if-eq p3, p4, :cond_1

    if-ltz p5, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    :cond_0
    invoke-static {p5, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final u(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/y;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/y;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public final v(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->e()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-static {p0, p1}, Landroidx/appcompat/widget/U0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public w(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->e()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroidx/appcompat/widget/x;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public final x(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/X;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/widget/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/widget/X;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->B:Ljava/lang/CharSequence;

    return-void
.end method

.method public final y(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/X;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/widget/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/widget/X;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->C:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->A:Ljava/lang/CharSequence;

    return-void
.end method

.method public final z(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
