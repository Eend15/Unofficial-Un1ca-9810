.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$SavedState;
    }
.end annotation


# static fields
.field public static final t0:[I

.field public static final u0:[Ljava/lang/Class;

.field public static final v0:Landroidx/recyclerview/widget/B;


# instance fields
.field public final A:Landroid/view/accessibility/AccessibilityManager;

.field public B:Z

.field public C:Z

.field public D:I

.field public E:I

.field public final F:Landroidx/recyclerview/widget/E;

.field public G:Landroid/widget/EdgeEffect;

.field public H:Landroid/widget/EdgeEffect;

.field public I:Landroid/widget/EdgeEffect;

.field public J:Landroid/widget/EdgeEffect;

.field public final K:Landroidx/recyclerview/widget/j;

.field public L:I

.field public M:I

.field public N:Landroid/view/VelocityTracker;

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public final S:I

.field public T:Lw0/i;

.field public final U:I

.field public final V:I

.field public final W:F

.field public final a0:F

.field public final b0:Z

.field public final c0:Landroidx/recyclerview/widget/T;

.field public final d:Landroidx/recyclerview/widget/N;

.field public d0:Landroidx/recyclerview/widget/q;

.field public final e:Landroidx/recyclerview/widget/M;

.field public final e0:Landroidx/recyclerview/widget/o;

.field public f:Landroidx/recyclerview/widget/RecyclerView$SavedState;

.field public final f0:Landroidx/recyclerview/widget/S;

.field public final g:Landroidx/recyclerview/widget/b;

.field public g0:Ljava/util/ArrayList;

.field public final h:Lw0/m;

.field public h0:Z

.field public final i:Landroidx/recyclerview/widget/a0;

.field public i0:Z

.field public j:Z

.field public j0:Z

.field public final k:Landroid/graphics/Rect;

.field public final k0:Landroidx/recyclerview/widget/V;

.field public final l:Landroid/graphics/Rect;

.field public final l0:[I

.field public final m:Landroid/graphics/RectF;

.field public m0:LK/l;

.field public n:LU3/b0;

.field public final n0:[I

.field public o:Landroidx/recyclerview/widget/I;

.field public final o0:[I

.field public final p:Ljava/util/ArrayList;

.field public final p0:[I

.field public final q:Ljava/util/ArrayList;

.field public final q0:Ljava/util/ArrayList;

.field public r:Landroidx/recyclerview/widget/m;

.field public final r0:LA1/l;

.field public s:Z

.field public final s0:Landroidx/recyclerview/widget/C;

.field public t:Z

.field public u:Z

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x1010436

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->t0:[I

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const-class v2, Landroid/util/AttributeSet;

    filled-new-array {v1, v2, v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->u0:[Ljava/lang/Class;

    new-instance v0, Landroidx/recyclerview/widget/B;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->v0:Landroidx/recyclerview/widget/B;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, LZ/a;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    .line 2
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/N;

    invoke-direct {v0, v10}, Landroidx/recyclerview/widget/N;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/N;

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/M;

    invoke-direct {v0, v10}, Landroidx/recyclerview/widget/M;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/a0;

    const/4 v14, 0x3

    invoke-direct {v0, v14}, Landroidx/recyclerview/widget/a0;-><init>(I)V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/a0;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->m:Landroid/graphics/RectF;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->q:Ljava/util/ArrayList;

    const/4 v15, 0x0

    .line 11
    iput v15, v10, Landroidx/recyclerview/widget/RecyclerView;->v:I

    .line 12
    iput-boolean v15, v10, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    .line 13
    iput-boolean v15, v10, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    .line 14
    iput v15, v10, Landroidx/recyclerview/widget/RecyclerView;->D:I

    .line 15
    iput v15, v10, Landroidx/recyclerview/widget/RecyclerView;->E:I

    .line 16
    new-instance v0, Landroidx/recyclerview/widget/E;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/E;

    .line 19
    new-instance v0, Landroidx/recyclerview/widget/j;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    .line 21
    iput-object v9, v0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/C;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->b:Ljava/util/ArrayList;

    const-wide/16 v1, 0x78

    .line 23
    iput-wide v1, v0, Landroidx/recyclerview/widget/j;->c:J

    .line 24
    iput-wide v1, v0, Landroidx/recyclerview/widget/j;->d:J

    const-wide/16 v1, 0xfa

    .line 25
    iput-wide v1, v0, Landroidx/recyclerview/widget/j;->e:J

    .line 26
    iput-wide v1, v0, Landroidx/recyclerview/widget/j;->f:J

    const/4 v8, 0x1

    .line 27
    iput-boolean v8, v0, Landroidx/recyclerview/widget/j;->g:Z

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->h:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->i:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->j:Ljava/util/ArrayList;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->k:Ljava/util/ArrayList;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->l:Ljava/util/ArrayList;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->m:Ljava/util/ArrayList;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->n:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->o:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->p:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->q:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/recyclerview/widget/j;->r:Ljava/util/ArrayList;

    .line 39
    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    .line 40
    iput v15, v10, Landroidx/recyclerview/widget/RecyclerView;->L:I

    const/4 v7, -0x1

    .line 41
    iput v7, v10, Landroidx/recyclerview/widget/RecyclerView;->M:I

    const/4 v1, 0x1

    .line 42
    iput v1, v10, Landroidx/recyclerview/widget/RecyclerView;->W:F

    .line 43
    iput v1, v10, Landroidx/recyclerview/widget/RecyclerView;->a0:F

    .line 44
    iput-boolean v8, v10, Landroidx/recyclerview/widget/RecyclerView;->b0:Z

    .line 45
    new-instance v1, Landroidx/recyclerview/widget/T;

    invoke-direct {v1, v10}, Landroidx/recyclerview/widget/T;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    .line 46
    new-instance v1, Landroidx/recyclerview/widget/o;

    .line 47
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/o;

    .line 49
    new-instance v1, Landroidx/recyclerview/widget/S;

    .line 50
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v7, v1, Landroidx/recyclerview/widget/S;->a:I

    .line 52
    iput v15, v1, Landroidx/recyclerview/widget/S;->b:I

    .line 53
    iput v15, v1, Landroidx/recyclerview/widget/S;->c:I

    .line 54
    iput v8, v1, Landroidx/recyclerview/widget/S;->d:I

    .line 55
    iput v15, v1, Landroidx/recyclerview/widget/S;->e:I

    .line 56
    iput-boolean v15, v1, Landroidx/recyclerview/widget/S;->f:Z

    .line 57
    iput-boolean v15, v1, Landroidx/recyclerview/widget/S;->g:Z

    .line 58
    iput-boolean v15, v1, Landroidx/recyclerview/widget/S;->h:Z

    .line 59
    iput-boolean v15, v1, Landroidx/recyclerview/widget/S;->i:Z

    .line 60
    iput-boolean v15, v1, Landroidx/recyclerview/widget/S;->j:Z

    .line 61
    iput-boolean v15, v1, Landroidx/recyclerview/widget/S;->k:Z

    .line 62
    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    .line 63
    iput-boolean v15, v10, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 64
    iput-boolean v15, v10, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 65
    new-instance v1, Landroidx/recyclerview/widget/C;

    invoke-direct {v1, v10}, Landroidx/recyclerview/widget/C;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 66
    iput-boolean v15, v10, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    const/4 v6, 0x2

    .line 67
    new-array v2, v6, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->l0:[I

    .line 68
    new-array v2, v6, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    .line 69
    new-array v2, v6, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    .line 70
    new-array v2, v6, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    .line 72
    new-instance v2, LA1/l;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v10}, LA1/l;-><init>(ILjava/lang/Object;)V

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->r0:LA1/l;

    .line 73
    new-instance v2, Landroidx/recyclerview/widget/C;

    invoke-direct {v2, v10}, Landroidx/recyclerview/widget/C;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroidx/recyclerview/widget/C;

    .line 74
    invoke-virtual {v10, v8}, Landroid/view/View;->setScrollContainer(Z)V

    .line 75
    invoke-virtual {v10, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 76
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v10, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 78
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v3

    .line 79
    iput v3, v10, Landroidx/recyclerview/widget/RecyclerView;->W:F

    .line 80
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v3

    .line 81
    iput v3, v10, Landroidx/recyclerview/widget/RecyclerView;->a0:F

    .line 82
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, v10, Landroidx/recyclerview/widget/RecyclerView;->U:I

    .line 83
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, v10, Landroidx/recyclerview/widget/RecyclerView;->V:I

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    if-ne v2, v6, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v15

    :goto_0
    invoke-virtual {v10, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 85
    iput-object v1, v0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/C;

    .line 86
    new-instance v0, Landroidx/recyclerview/widget/b;

    new-instance v1, Landroidx/recyclerview/widget/C;

    invoke-direct {v1, v10}, Landroidx/recyclerview/widget/C;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/C;)V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    .line 87
    new-instance v0, Lw0/m;

    new-instance v1, Landroidx/recyclerview/widget/C;

    invoke-direct {v1, v10}, Landroidx/recyclerview/widget/C;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lw0/m;-><init>(Landroidx/recyclerview/widget/C;)V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    .line 88
    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    .line 89
    invoke-static/range {p0 .. p0}, LK/z;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 90
    invoke-static {v10, v0}, LK/z;->b(Landroid/view/View;I)V

    .line 91
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 92
    invoke-virtual {v10, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 93
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->A:Landroid/view/accessibility/AccessibilityManager;

    .line 95
    new-instance v0, Landroidx/recyclerview/widget/V;

    invoke-direct {v0, v10}, Landroidx/recyclerview/widget/V;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 96
    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->k0:Landroidx/recyclerview/widget/V;

    .line 97
    invoke-static {v10, v0}, LK/D;->f(Landroid/view/View;LK/b;)V

    .line 98
    sget-object v0, LZ/c;->RecyclerView:[I

    invoke-virtual {v11, v12, v0, v13, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    sget-object v3, LZ/c;->RecyclerView:[I

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v0

    move/from16 v17, v6

    move/from16 v6, p3

    move v9, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 100
    sget v1, LZ/c;->RecyclerView_layoutManager:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 101
    sget v1, LZ/c;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ne v1, v9, :cond_3

    const/high16 v1, 0x40000

    .line 102
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 103
    :cond_3
    sget v1, LZ/c;->RecyclerView_android_clipToPadding:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v10, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    .line 104
    sget v1, LZ/c;->RecyclerView_fastScrollEnabled:I

    invoke-virtual {v0, v1, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    sget v1, LZ/c;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 107
    sget v1, LZ/c;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 109
    sget v1, LZ/c;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 111
    sget v1, LZ/c;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    new-instance v2, Landroidx/recyclerview/widget/m;

    sget v7, LZ/b;->fastscroll_default_thickness:I

    .line 115
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v9, LZ/b;->fastscroll_minimum_range:I

    .line 116
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sget v8, LZ/b;->fastscroll_margin:I

    .line 117
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move-object v1, v2

    move-object/from16 v2, p0

    const/4 v14, 0x1

    move v8, v9

    move/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/m;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_1

    .line 118
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to set fast scroller without both required drawables."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v14, v8

    .line 120
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    const-string v1, ": Could not instantiate the LayoutManager: "

    if-eqz v16, :cond_9

    .line 122
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 124
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_6

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto :goto_3

    .line 126
    :cond_6
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 127
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 128
    :goto_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    goto/16 :goto_a

    .line 130
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 131
    :goto_4
    invoke-static {v2, v15, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Landroidx/recyclerview/widget/I;

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->u0:[Ljava/lang/Class;

    .line 134
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x4

    .line 135
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v11, v9, v15

    aput-object v12, v9, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v17

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v9, v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v5, v0

    const/4 v4, 0x0

    .line 136
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v4

    .line 137
    :goto_5
    :try_start_3
    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 138
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/I;

    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->a0(Landroidx/recyclerview/widget/I;)V

    goto/16 :goto_b

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 139
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Error creating LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    .line 141
    :goto_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :goto_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 143
    :goto_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 144
    :goto_9
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 145
    :goto_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_9
    :goto_b
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->t0:[I

    invoke-virtual {v11, v12, v3, v13, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v0

    move/from16 v6, p3

    .line 147
    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 148
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static B(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static G(Landroid/view/View;)Landroidx/recyclerview/widget/U;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    return-object p0
.end method

.method public static synthetic a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic b(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic c(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public static j(Landroidx/recyclerview/widget/U;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/U;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Landroidx/recyclerview/widget/U;->b:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method


# virtual methods
.method public final A([I)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v0}, Lw0/m;->k()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    aput p0, p1, v2

    aput p0, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v6, v5}, Lw0/m;->j(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroidx/recyclerview/widget/U;->b()I

    move-result v6

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    if-le v6, v4, :cond_3

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    aput v3, p1, v2

    aput v4, p1, v1

    return-void
.end method

.method public final C(I)Landroidx/recyclerview/widget/U;
    .locals 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v0}, Lw0/m;->n()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v3, v2}, Lw0/m;->m(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroidx/recyclerview/widget/U;)I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    iget-object v1, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v4, v3, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final D(Landroidx/recyclerview/widget/U;)I
    .locals 6

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/U;->d(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroidx/recyclerview/widget/U;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    iget p1, p1, Landroidx/recyclerview/widget/U;->c:I

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a;

    iget v4, v3, Landroidx/recyclerview/widget/a;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v3, Landroidx/recyclerview/widget/a;->b:I

    if-ne v4, p1, :cond_2

    iget p1, v3, Landroidx/recyclerview/widget/a;->c:I

    goto :goto_1

    :cond_2
    if-ge v4, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    iget v3, v3, Landroidx/recyclerview/widget/a;->c:I

    if-gt v3, p1, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget v4, v3, Landroidx/recyclerview/widget/a;->b:I

    if-gt v4, p1, :cond_7

    iget v3, v3, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v4, v3

    if-le v4, p1, :cond_5

    goto :goto_2

    :cond_5
    sub-int/2addr p1, v3

    goto :goto_1

    :cond_6
    iget v4, v3, Landroidx/recyclerview/widget/a;->b:I

    if-gt v4, p1, :cond_7

    iget v3, v3, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr p1, v3

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    move v1, p1

    :cond_9
    :goto_2
    return v1
.end method

.method public final E(Landroidx/recyclerview/widget/U;)J
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-boolean p0, p0, LU3/b0;->b:Z

    if-eqz p0, :cond_0

    iget-wide p0, p1, Landroidx/recyclerview/widget/U;->e:J

    goto :goto_0

    :cond_0
    iget p0, p1, Landroidx/recyclerview/widget/U;->c:I

    int-to-long p0, p0

    :goto_0
    return-wide p0
.end method

.method public final F(Landroid/view/View;)Landroidx/recyclerview/widget/U;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object p0

    return-object p0
.end method

.method public final H(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/J;->c:Z

    iget-object v2, v0, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/S;->g:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/U;->l()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/U;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v2

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/F;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/J;

    iget-object v7, v7, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v6

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v1, v0, Landroidx/recyclerview/widget/J;->c:Z

    return-object v2
.end method

.method public final I()LK/l;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:LK/l;

    if-nez v0, :cond_0

    new-instance v0, LK/l;

    invoke-direct {v0, p0}, LK/l;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:LK/l;

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:LK/l;

    return-object p0
.end method

.method public final J()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->D()Z

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

.method public final K()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final L(I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/I;->i0(I)V

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    return-void
.end method

.method public final M()V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v0}, Lw0/m;->n()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v4, v2}, Lw0/m;->m(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/J;

    iput-boolean v3, v4, Landroidx/recyclerview/widget/J;->c:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    iget-object p0, p0, Landroidx/recyclerview/widget/M;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/U;

    iget-object v2, v2, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/J;

    if-eqz v2, :cond_1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/J;->c:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final N(ZII)V
    .locals 9

    add-int v0, p2, p3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v1}, Lw0/m;->n()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ge v2, v1, :cond_2

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v5, v2}, Lw0/m;->m(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v5, Landroidx/recyclerview/widget/U;->c:I

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    if-lt v6, v0, :cond_0

    neg-int v4, p3

    invoke-virtual {v5, v4, p1}, Landroidx/recyclerview/widget/U;->m(IZ)V

    iput-boolean v3, v7, Landroidx/recyclerview/widget/S;->f:Z

    goto :goto_1

    :cond_0
    if-lt v6, p2, :cond_1

    add-int/lit8 v6, p2, -0x1

    neg-int v8, p3

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/U;->a(I)V

    invoke-virtual {v5, v8, p1}, Landroidx/recyclerview/widget/U;->m(IZ)V

    iput v6, v5, Landroidx/recyclerview/widget/U;->c:I

    iput-boolean v3, v7, Landroidx/recyclerview/widget/S;->f:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    iget-object v2, v1, Landroidx/recyclerview/widget/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_2
    if-ltz v5, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/U;

    if-eqz v3, :cond_4

    iget v6, v3, Landroidx/recyclerview/widget/U;->c:I

    if-lt v6, v0, :cond_3

    neg-int v6, p3

    invoke-virtual {v3, v6, p1}, Landroidx/recyclerview/widget/U;->m(IZ)V

    goto :goto_3

    :cond_3
    if-lt v6, p2, :cond_4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/U;->a(I)V

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/M;->e(I)V

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final O()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    return-void
.end method

.method public final P(Z)V
    .locals 5

    const/4 v0, -0x1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    if-ge v1, v2, :cond_4

    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    if-eqz p1, :cond_4

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->z:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->z:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->A:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/U;

    iget-object v3, v2, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v2, Landroidx/recyclerview/widget/U;->q:I

    if-eq v3, v0, :cond_2

    sget-object v4, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object v4, v2, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput v0, v2, Landroidx/recyclerview/widget/U;->q:I

    :cond_2
    :goto_1
    add-int/2addr v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    return-void
.end method

.method public final Q(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    :cond_1
    return-void
.end method

.method public final R()V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_0

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:LA1/l;

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    :cond_0
    return-void
.end method

.method public final S(Z)V
    .locals 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {p1}, Lw0/m;->n()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, p1, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v3, v1}, Lw0/m;->m(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/U;->a(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->M()V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    iget-object p1, p0, Landroidx/recyclerview/widget/M;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/U;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/U;->a(I)V

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/U;->a(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, LU3/b0;->b:Z

    if-nez p1, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/M;->d()V

    :cond_5
    return-void
.end method

.method public final T(Landroidx/recyclerview/widget/U;LK/o;)V
    .locals 4

    iget v0, p1, Landroidx/recyclerview/widget/U;->j:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p1, Landroidx/recyclerview/widget/U;->j:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/S;->h:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/U;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroidx/recyclerview/widget/U;)J

    move-result-wide v2

    iget-object p0, v1, Landroidx/recyclerview/widget/a0;->b:Ljava/lang/Object;

    check-cast p0, Ln/h;

    invoke-virtual {p0, v2, v3, p1}, Ln/h;->d(JLjava/lang/Object;)V

    :cond_0
    iget-object p0, v1, Landroidx/recyclerview/widget/a0;->a:Ljava/lang/Object;

    check-cast p0, Ln/j;

    invoke-virtual {p0, p1}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/e0;

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/recyclerview/widget/e0;->a()Landroidx/recyclerview/widget/e0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p2, v0, Landroidx/recyclerview/widget/e0;->b:LK/o;

    iget p0, v0, Landroidx/recyclerview/widget/e0;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Landroidx/recyclerview/widget/e0;->a:I

    return-void
.end method

.method public final U(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/J;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/J;->c:Z

    if-nez v1, :cond_1

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget-object v0, v0, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/I;->f0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method public final V()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LK/l;->h(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v1, v0

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v1, v0

    :cond_4
    if-eqz v1, :cond_5

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    return-void
.end method

.method public final W(IILandroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_0

    aput v14, v12, v14

    aput v14, v12, v13

    invoke-virtual {v0, v1, v2, v12}, Landroidx/recyclerview/widget/RecyclerView;->X(II[I)V

    aget v3, v12, v14

    aget v4, v12, v13

    sub-int v5, v1, v3

    sub-int v6, v2, v4

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_0

    :cond_0
    move v3, v14

    move v15, v3

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1
    aput v14, v12, v14

    aput v14, v12, v13

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v4

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    const/4 v10, 0x0

    move v5, v3

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object v11, v12

    invoke-virtual/range {v4 .. v11}, LK/l;->d(IIII[II[I)Z

    aget v4, v12, v14

    sub-int v5, v16, v4

    aget v6, v12, v13

    sub-int v7, v17, v6

    if-nez v4, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v14

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v13

    :goto_2
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    aget v9, v8, v14

    sub-int/2addr v6, v9

    iput v6, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    aget v8, v8, v13

    sub-int/2addr v6, v8

    iput v6, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    aget v10, v6, v14

    add-int/2addr v10, v9

    aput v10, v6, v14

    aget v9, v6, v13

    add-int/2addr v9, v8

    aput v9, v6, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_b

    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    const/16 v8, 0x2002

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v7, v7

    const/4 v9, 0x0

    cmpg-float v10, v5, v9

    const/high16 v11, 0x3f800000    # 1.0f

    if-gez v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->t()V

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    neg-float v12, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v8, v13

    sub-float v8, v11, v8

    invoke-static {v10, v12, v8}, Landroidx/core/widget/b;->a(Landroid/widget/EdgeEffect;FF)V

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    cmpl-float v10, v5, v9

    if-lez v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->u()V

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v5, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v8, v13

    invoke-static {v10, v12, v8}, Landroidx/core/widget/b;->a(Landroid/widget/EdgeEffect;FF)V

    goto :goto_3

    :cond_6
    move v8, v14

    :goto_4
    cmpg-float v10, v7, v9

    if-gez v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->v()V

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    neg-float v10, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v6, v11

    invoke-static {v8, v10, v6}, Landroidx/core/widget/b;->a(Landroid/widget/EdgeEffect;FF)V

    :goto_5
    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    cmpl-float v10, v7, v9

    if-lez v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->s()V

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v7, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v6, v12

    sub-float/2addr v11, v6

    invoke-static {v8, v10, v11}, Landroidx/core/widget/b;->a(Landroid/widget/EdgeEffect;FF)V

    goto :goto_5

    :cond_8
    :goto_6
    if-nez v8, :cond_9

    cmpl-float v5, v5, v9

    if-nez v5, :cond_9

    cmpl-float v5, v7, v9

    if-eqz v5, :cond_a

    :cond_9
    sget-object v5, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->l(II)V

    :cond_b
    if-nez v3, :cond_c

    if-eqz v15, :cond_d

    :cond_c
    invoke-virtual {v0, v3, v15}, Landroidx/recyclerview/widget/RecyclerView;->r(II)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_e
    if-nez v4, :cond_10

    if-nez v3, :cond_10

    if-eqz v15, :cond_f

    goto :goto_8

    :cond_f
    move v13, v14

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v13, 0x1

    :goto_9
    return v13
.end method

.method public final X(II[I)V
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    const-string v0, "RV Scroll"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->x(Landroidx/recyclerview/widget/S;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v3, p1, v1, v0}, Landroidx/recyclerview/widget/I;->h0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v3, p2, v1, v0}, Landroidx/recyclerview/widget/I;->j0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v0}, Lw0/m;->k()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v3, v1}, Lw0/m;->j(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Landroidx/recyclerview/widget/U;->i:Landroidx/recyclerview/widget/U;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, v4, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    if-eq v3, v6, :cond_3

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->P(Z)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->e0(Z)V

    if-eqz p3, :cond_5

    aput p1, p3, v2

    aput p2, p3, v0

    :cond_5
    return-void
.end method

.method public final Y(I)V
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    iget-object v1, v0, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->g()V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v0, :cond_2

    const-string p0, "RecyclerView"

    const-string p1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/I;->i0(I)V

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    return-void
.end method

.method public final Z(LU3/b0;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/N;

    if-eqz v1, :cond_0

    iget-object v1, v1, LU3/b0;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/D;

    invoke-virtual {v1, v2}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j;->h()V

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/I;->b0(Landroidx/recyclerview/widget/M;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/I;->c0(Landroidx/recyclerview/widget/M;)V

    :cond_2
    iget-object v1, v3, Landroidx/recyclerview/widget/M;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/M;->d()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    iget-object v4, v1, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/b;->J(Ljava/util/ArrayList;)V

    iget-object v4, v1, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/b;->J(Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-object p1, p1, LU3/b0;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/D;

    invoke-virtual {p1, v2}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-object v2, v3, Landroidx/recyclerview/widget/M;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/M;->d()V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/M;->c()LH/k;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget v1, v2, LH/k;->d:I

    sub-int/2addr v1, v3

    iput v1, v2, LH/k;->d:I

    :cond_3
    iget v1, v2, LH/k;->d:I

    if-nez v1, :cond_4

    move v1, v0

    :goto_0
    iget-object v4, v2, LH/k;->e:Ljava/lang/Object;

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/L;

    iget-object v4, v4, Landroidx/recyclerview/widget/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    iget p1, v2, LH/k;->d:I

    add-int/2addr p1, v3

    iput p1, v2, LH/k;->d:I

    :cond_5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    iput-boolean v3, p1, Landroidx/recyclerview/widget/S;->f:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->S(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final a0(Landroidx/recyclerview/widget/I;)V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    iget-object v3, v2, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, v2, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/x;->g()V

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/j;->h()V

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/I;->b0(Landroidx/recyclerview/widget/M;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/I;->c0(Landroidx/recyclerview/widget/M;)V

    iget-object v2, v3, Landroidx/recyclerview/widget/M;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/M;->d()V

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iput-boolean v1, v2, Landroidx/recyclerview/widget/I;->g:Z

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/I;->M(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/I;->o0(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    goto :goto_0

    :cond_4
    iget-object v2, v3, Landroidx/recyclerview/widget/M;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/M;->d()V

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    iget-object v4, v2, Lw0/m;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/c;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/c;->g()V

    iget-object v4, v2, Lw0/m;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    :goto_1
    iget-object v6, v2, Lw0/m;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/recyclerview/widget/C;

    iget-object v6, v6, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v7

    if-eqz v7, :cond_6

    iget v8, v7, Landroidx/recyclerview/widget/U;->p:I

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v9

    if-eqz v9, :cond_5

    iput v8, v7, Landroidx/recyclerview/widget/U;->q:I

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object v6, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object v6, v7, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_2
    iput v1, v7, Landroidx/recyclerview/widget/U;->p:I

    :cond_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    add-int/2addr v1, v0

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz p1, :cond_a

    iget-object v1, p1, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_9

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/I;->o0(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iput-boolean v0, p1, Landroidx/recyclerview/widget/I;->g:Z

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutManager "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a RecyclerView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    invoke-virtual {v3}, Landroidx/recyclerview/widget/M;->k()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public final b0(I)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    iget-object v1, v0, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->g()V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/I;->a0(I)V

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/K;

    invoke-virtual {v1, p0, p1}, Landroidx/recyclerview/widget/K;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final c0(ZII)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p2, v1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v0

    if-nez v0, :cond_3

    move p3, v1

    :cond_3
    if-nez p2, :cond_4

    if-eqz p3, :cond_8

    :cond_4
    if-eqz p1, :cond_7

    const/4 p1, 0x1

    if-eqz p2, :cond_5

    move v1, p1

    :cond_5
    if-eqz p3, :cond_6

    or-int/lit8 v1, v1, 0x2

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, LK/l;->g(II)Z

    :cond_7
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    const/high16 p1, -0x80000000

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, Landroidx/recyclerview/widget/T;->b(IIILandroid/view/animation/BaseInterpolator;)V

    :cond_8
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/J;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    check-cast p1, Landroidx/recyclerview/widget/J;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/I;->f(Landroidx/recyclerview/widget/J;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/I;->j(Landroidx/recyclerview/widget/S;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/I;->k(Landroidx/recyclerview/widget/S;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/I;->l(Landroidx/recyclerview/widget/S;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/I;->m(Landroidx/recyclerview/widget/S;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/I;->n(Landroidx/recyclerview/widget/S;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/I;->o(Landroidx/recyclerview/widget/S;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final d0()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    :cond_0
    return-void
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, LK/l;->a(FFZ)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, LK/l;->b(FF)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v0

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LK/l;->c(III[I[I)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, LK/l;->d(IIII[II[I)Z

    move-result p0

    return p0
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/F;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/F;->b(Landroid/graphics/Canvas;)V

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_5

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v0

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    or-int/2addr v4, v5

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    goto :goto_5

    :cond_7
    move v6, v3

    :goto_5
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_8

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v0

    goto :goto_6

    :cond_8
    move v5, v3

    :goto_6
    or-int/2addr v4, v5

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_7
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_b

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v3, v0

    :cond_b
    or-int/2addr v4, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v4, :cond_d

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz p1, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->k()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    move v0, v4

    :goto_8
    if-eqz v0, :cond_e

    sget-object p1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_e
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public final e0(Z)V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->v:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    :cond_2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-nez p1, :cond_3

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:I

    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/U;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/M;->j(Landroidx/recyclerview/widget/U;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/U;->k()Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, v3, p1, v2}, Lw0/m;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {p0, v0, v3, v2}, Lw0/m;->b(Landroid/view/View;IZ)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    iget-object p1, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/C;

    iget-object p1, p1, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_3

    iget-object v1, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/c;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/c;->h(I)V

    invoke-virtual {p0, v0}, Lw0/m;->p(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "view is not a child, cannot hide "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    const/16 v9, 0x11

    const/16 v11, 0x21

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-eqz v3, :cond_b

    if-eq v2, v14, :cond_1

    if-ne v2, v4, :cond_b

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v2, v14, :cond_2

    const/16 v3, 0x82

    goto :goto_1

    :cond_2
    move v3, v11

    :goto_1
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-nez v3, :cond_8

    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v3, v3, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v15, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    move v3, v5

    :goto_3
    if-ne v2, v14, :cond_5

    move v15, v4

    goto :goto_4

    :cond_5
    move v15, v5

    :goto_4
    xor-int/2addr v3, v15

    if-eqz v3, :cond_6

    const/16 v3, 0x42

    goto :goto_5

    :cond_6
    move v3, v9

    :goto_5
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_6

    :cond_7
    move v3, v5

    :cond_8
    :goto_6
    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    return-object v13

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v3, v1, v2, v8, v7}, Landroidx/recyclerview/widget/I;->N(Landroid/view/View;ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)Landroid/view/View;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->e0(Z)V

    :cond_a
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    goto :goto_7

    :cond_b
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_c

    return-object v13

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v3, v1, v2, v8, v7}, Landroidx/recyclerview/widget/I;->N(Landroid/view/View;ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->e0(Z)V

    goto :goto_7

    :cond_d
    move-object v3, v6

    :goto_7
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-virtual {v0, v3, v13}, Landroidx/recyclerview/widget/RecyclerView;->U(Landroid/view/View;Landroid/view/View;)V

    return-object v1

    :cond_f
    if-eqz v3, :cond_23

    if-ne v3, v0, :cond_10

    goto/16 :goto_b

    :cond_10
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_11

    move v4, v5

    goto/16 :goto_c

    :cond_11
    if-nez v1, :cond_12

    goto/16 :goto_c

    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_13

    goto/16 :goto_c

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {v8, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/Rect;

    invoke-virtual {v13, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3, v13}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v6, v6, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v7, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_14

    const/4 v6, -0x1

    goto :goto_8

    :cond_14
    move v6, v4

    :goto_8
    iget v15, v8, Landroid/graphics/Rect;->left:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    if-lt v15, v5, :cond_15

    iget v7, v8, Landroid/graphics/Rect;->right:I

    if-gt v7, v5, :cond_16

    :cond_15
    iget v7, v8, Landroid/graphics/Rect;->right:I

    iget v12, v13, Landroid/graphics/Rect;->right:I

    if-ge v7, v12, :cond_16

    move v5, v4

    goto :goto_9

    :cond_16
    iget v7, v8, Landroid/graphics/Rect;->right:I

    iget v12, v13, Landroid/graphics/Rect;->right:I

    if-gt v7, v12, :cond_17

    if-lt v15, v12, :cond_18

    :cond_17
    if-le v15, v5, :cond_18

    const/4 v5, -0x1

    goto :goto_9

    :cond_18
    const/4 v5, 0x0

    :goto_9
    iget v7, v8, Landroid/graphics/Rect;->top:I

    iget v12, v13, Landroid/graphics/Rect;->top:I

    if-lt v7, v12, :cond_19

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v15, v12, :cond_1a

    :cond_19
    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v15, v10, :cond_1a

    move v7, v4

    goto :goto_a

    :cond_1a
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v10, :cond_1b

    if-lt v7, v10, :cond_1c

    :cond_1b
    if-le v7, v12, :cond_1c

    const/4 v7, -0x1

    goto :goto_a

    :cond_1c
    const/4 v7, 0x0

    :goto_a
    if-eq v2, v4, :cond_22

    if-eq v2, v14, :cond_21

    if-eq v2, v9, :cond_20

    if-eq v2, v11, :cond_1f

    const/16 v6, 0x42

    if-eq v2, v6, :cond_1e

    const/16 v6, 0x82

    if-ne v2, v6, :cond_1d

    if-lez v7, :cond_23

    goto :goto_c

    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid direction: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    if-lez v5, :cond_23

    goto :goto_c

    :cond_1f
    if-gez v7, :cond_23

    goto :goto_c

    :cond_20
    if-gez v5, :cond_23

    goto :goto_c

    :cond_21
    if-gtz v7, :cond_24

    if-nez v7, :cond_23

    mul-int/2addr v5, v6

    if-ltz v5, :cond_23

    goto :goto_c

    :cond_22
    if-ltz v7, :cond_24

    if-nez v7, :cond_23

    mul-int/2addr v5, v6

    if-gtz v5, :cond_23

    goto :goto_c

    :cond_23
    :goto_b
    const/4 v4, 0x0

    :cond_24
    :goto_c
    if-eqz v4, :cond_25

    goto :goto_d

    :cond_25
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :goto_d
    return-object v3
.end method

.method public final g(Landroidx/recyclerview/widget/F;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/I;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->M()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->r()Landroidx/recyclerview/widget/J;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/I;->s(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/J;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/I;->t(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/J;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "androidx.recyclerview.widget.RecyclerView"

    return-object p0
.end method

.method public final getBaseline()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method public final getClipToPadding()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    return p0
.end method

.method public final h(Landroidx/recyclerview/widget/K;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final hasNestedScrollingParent()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LK/l;->f(I)Z

    move-result p0

    return p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:I

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "RecyclerView"

    const-string v0, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public final isAttachedToWindow()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    return p0
.end method

.method public final isLayoutSuppressed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    return p0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object p0

    iget-boolean p0, p0, LK/l;->a:Z

    return p0
.end method

.method public final k()V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v0}, Lw0/m;->n()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v4, v2}, Lw0/m;->m(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v5

    if-nez v5, :cond_0

    iput v3, v4, Landroidx/recyclerview/widget/U;->d:I

    iput v3, v4, Landroidx/recyclerview/widget/U;->g:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    iget-object v0, p0, Landroidx/recyclerview/widget/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/U;

    iput v3, v5, Landroidx/recyclerview/widget/U;->d:I

    iput v3, v5, Landroidx/recyclerview/widget/U;->g:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/M;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/U;

    iput v3, v5, Landroidx/recyclerview/widget/U;->d:I

    iput v3, v5, Landroidx/recyclerview/widget/U;->g:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/M;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/U;

    iput v3, v2, Landroidx/recyclerview/widget/U;->d:I

    iput v3, v2, Landroidx/recyclerview/widget/U;->g:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final l(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    sget-object p1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method public final m()V
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->D()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final n(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/I;->g(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Landroidx/recyclerview/widget/I;->g(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final o()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    const-string v2, "RecyclerView"

    if-nez v1, :cond_0

    const-string v0, "No adapter attached; skipping layout"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v1, :cond_1

    const-string v0, "No layout manager attached; skipping layout"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/recyclerview/widget/S;->i:Z

    iget v4, v1, Landroidx/recyclerview/widget/S;->d:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/I;->k0(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    goto :goto_1

    :cond_2
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    iget-object v6, v4, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v4, v4, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget v4, v4, Landroidx/recyclerview/widget/I;->n:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ne v4, v6, :cond_5

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget v4, v4, Landroidx/recyclerview/widget/I;->o:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eq v4, v6, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/I;->k0(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/I;->k0(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    :goto_1
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/S;->a(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    iput v5, v1, Landroidx/recyclerview/widget/S;->d:I

    iget-boolean v6, v1, Landroidx/recyclerview/widget/S;->j:Z

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/a0;

    if-eqz v6, :cond_20

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v6}, Lw0/m;->k()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_2
    if-ltz v6, :cond_14

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v10, v6}, Lw0/m;->j(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroidx/recyclerview/widget/U;)J

    move-result-wide v11

    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, LK/o;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v14, v10}, LK/o;->a(Landroidx/recyclerview/widget/U;)V

    iget-object v15, v9, Landroidx/recyclerview/widget/a0;->b:Ljava/lang/Object;

    check-cast v15, Ln/h;

    invoke-virtual {v15, v11, v12}, Ln/h;->b(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/U;

    if-eqz v15, :cond_12

    invoke-virtual {v15}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v16

    if-nez v16, :cond_12

    iget-object v7, v9, Landroidx/recyclerview/widget/a0;->a:Ljava/lang/Object;

    check-cast v7, Ln/j;

    invoke-virtual {v7, v15}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Landroidx/recyclerview/widget/e0;

    if-eqz v3, :cond_7

    iget v3, v3, Landroidx/recyclerview/widget/e0;->a:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v7, v10}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/e0;

    if-eqz v7, :cond_8

    iget v7, v7, Landroidx/recyclerview/widget/e0;->a:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    if-eqz v3, :cond_9

    if-ne v15, v10, :cond_9

    invoke-virtual {v9, v10, v14}, Landroidx/recyclerview/widget/a0;->a(Landroidx/recyclerview/widget/U;LK/o;)V

    goto/16 :goto_7

    :cond_9
    invoke-virtual {v9, v15, v4}, Landroidx/recyclerview/widget/a0;->i(Landroidx/recyclerview/widget/U;I)LK/o;

    move-result-object v5

    invoke-virtual {v9, v10, v14}, Landroidx/recyclerview/widget/a0;->a(Landroidx/recyclerview/widget/U;LK/o;)V

    const/16 v14, 0x8

    invoke-virtual {v9, v10, v14}, Landroidx/recyclerview/widget/a0;->i(Landroidx/recyclerview/widget/U;I)LK/o;

    move-result-object v14

    if-nez v5, :cond_e

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v3}, Lw0/m;->k()I

    move-result v3

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_d

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v7, v5}, Lw0/m;->j(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v7

    if-ne v7, v10, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroidx/recyclerview/widget/U;)J

    move-result-wide v13

    cmp-long v13, v13, v11

    if-nez v13, :cond_c

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    const-string v2, " \n View Holder 2:"

    if-eqz v1, :cond_b

    iget-boolean v1, v1, LU3/b0;->b:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " cannot be found but it is necessary for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    invoke-virtual {v15, v11}, Landroidx/recyclerview/widget/U;->o(Z)V

    if-eqz v3, :cond_f

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/U;)V

    :cond_f
    if-eq v15, v10, :cond_11

    if-eqz v7, :cond_10

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/U;)V

    :cond_10
    iput-object v10, v15, Landroidx/recyclerview/widget/U;->h:Landroidx/recyclerview/widget/U;

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/U;)V

    invoke-virtual {v8, v15}, Landroidx/recyclerview/widget/M;->j(Landroidx/recyclerview/widget/U;)V

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroidx/recyclerview/widget/U;->o(Z)V

    iput-object v15, v10, Landroidx/recyclerview/widget/U;->i:Landroidx/recyclerview/widget/U;

    :cond_11
    invoke-virtual {v13, v15, v10, v5, v14}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/U;Landroidx/recyclerview/widget/U;LK/o;LK/o;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->R()V

    goto :goto_7

    :cond_12
    invoke-virtual {v9, v10, v14}, Landroidx/recyclerview/widget/a0;->a(Landroidx/recyclerview/widget/U;LK/o;)V

    :cond_13
    :goto_7
    add-int/lit8 v6, v6, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_14
    iget-object v2, v9, Landroidx/recyclerview/widget/a0;->a:Ljava/lang/Object;

    check-cast v2, Ln/j;

    iget v3, v2, Ln/j;->f:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_8
    if-ltz v3, :cond_20

    invoke-virtual {v2, v3}, Ln/j;->f(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/recyclerview/widget/U;

    invoke-virtual {v2, v3}, Ln/j;->g(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/e0;

    iget v5, v4, Landroidx/recyclerview/widget/e0;->a:I

    and-int/lit8 v6, v5, 0x3

    const/4 v7, 0x3

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroidx/recyclerview/widget/C;

    if-ne v6, v7, :cond_16

    iget-object v5, v10, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v7, v11, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    invoke-virtual {v6, v7, v5}, Landroidx/recyclerview/widget/I;->d0(Landroid/view/View;Landroidx/recyclerview/widget/M;)V

    :cond_15
    :goto_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_16
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_18

    iget-object v5, v4, Landroidx/recyclerview/widget/e0;->b:LK/o;

    if-nez v5, :cond_17

    iget-object v5, v10, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v7, v11, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    invoke-virtual {v6, v7, v5}, Landroidx/recyclerview/widget/I;->d0(Landroid/view/View;Landroidx/recyclerview/widget/M;)V

    goto :goto_9

    :cond_17
    iget-object v6, v4, Landroidx/recyclerview/widget/e0;->c:LK/o;

    invoke-virtual {v10, v11, v5, v6}, Landroidx/recyclerview/widget/C;->g(Landroidx/recyclerview/widget/U;LK/o;LK/o;)V

    goto :goto_9

    :cond_18
    and-int/lit8 v6, v5, 0xe

    const/16 v7, 0xe

    if-ne v6, v7, :cond_19

    iget-object v5, v4, Landroidx/recyclerview/widget/e0;->b:LK/o;

    iget-object v6, v4, Landroidx/recyclerview/widget/e0;->c:LK/o;

    invoke-virtual {v10, v11, v5, v6}, Landroidx/recyclerview/widget/C;->f(Landroidx/recyclerview/widget/U;LK/o;LK/o;)V

    goto :goto_9

    :cond_19
    and-int/lit8 v6, v5, 0xc

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1d

    iget-object v5, v4, Landroidx/recyclerview/widget/e0;->b:LK/o;

    iget-object v6, v4, Landroidx/recyclerview/widget/e0;->c:LK/o;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Landroidx/recyclerview/widget/U;->o(Z)V

    iget-object v7, v10, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v10, v7, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    iget-object v12, v7, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v10, :cond_1a

    invoke-virtual {v12, v11, v11, v5, v6}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/U;Landroidx/recyclerview/widget/U;LK/o;LK/o;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->R()V

    goto :goto_9

    :cond_1a
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v5, LK/o;->a:I

    iget v14, v6, LK/o;->a:I

    if-ne v13, v14, :cond_1c

    iget v10, v5, LK/o;->b:I

    iget v15, v6, LK/o;->b:I

    if-eq v10, v15, :cond_1b

    goto :goto_a

    :cond_1b
    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/j;->e(Landroidx/recyclerview/widget/U;)V

    const/4 v5, 0x0

    goto :goto_b

    :cond_1c
    :goto_a
    iget v5, v5, LK/o;->b:I

    iget v15, v6, LK/o;->b:I

    move-object v10, v12

    move v12, v13

    move v13, v5

    invoke-virtual/range {v10 .. v15}, Landroidx/recyclerview/widget/j;->b(Landroidx/recyclerview/widget/U;IIII)Z

    move-result v5

    :goto_b
    if-eqz v5, :cond_15

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->R()V

    goto :goto_9

    :cond_1d
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_1f

    iget-object v5, v4, Landroidx/recyclerview/widget/e0;->b:LK/o;

    const/4 v6, 0x0

    invoke-virtual {v10, v11, v5, v6}, Landroidx/recyclerview/widget/C;->g(Landroidx/recyclerview/widget/U;LK/o;LK/o;)V

    :cond_1e
    :goto_c
    const/4 v5, 0x0

    goto :goto_d

    :cond_1f
    const/4 v6, 0x0

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1e

    iget-object v5, v4, Landroidx/recyclerview/widget/e0;->b:LK/o;

    iget-object v7, v4, Landroidx/recyclerview/widget/e0;->c:LK/o;

    invoke-virtual {v10, v11, v5, v7}, Landroidx/recyclerview/widget/C;->f(Landroidx/recyclerview/widget/U;LK/o;LK/o;)V

    goto :goto_c

    :goto_d
    iput v5, v4, Landroidx/recyclerview/widget/e0;->a:I

    iput-object v6, v4, Landroidx/recyclerview/widget/e0;->b:LK/o;

    iput-object v6, v4, Landroidx/recyclerview/widget/e0;->c:LK/o;

    sget-object v5, Landroidx/recyclerview/widget/e0;->d:LJ/c;

    invoke-virtual {v5, v4}, LJ/c;->c(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_8

    :cond_20
    const/4 v6, 0x0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/I;->c0(Landroidx/recyclerview/widget/M;)V

    iget v2, v1, Landroidx/recyclerview/widget/S;->e:I

    iput v2, v1, Landroidx/recyclerview/widget/S;->b:I

    const/4 v11, 0x0

    iput-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    iput-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    iput-boolean v11, v1, Landroidx/recyclerview/widget/S;->j:Z

    iput-boolean v11, v1, Landroidx/recyclerview/widget/S;->k:Z

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iput-boolean v11, v2, Landroidx/recyclerview/widget/I;->f:Z

    iget-object v2, v8, Landroidx/recyclerview/widget/M;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_21
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-boolean v3, v2, Landroidx/recyclerview/widget/I;->k:Z

    if-eqz v3, :cond_22

    iput v11, v2, Landroidx/recyclerview/widget/I;->j:I

    iput-boolean v11, v2, Landroidx/recyclerview/widget/I;->k:Z

    invoke-virtual {v8}, Landroidx/recyclerview/widget/M;->k()V

    :cond_22
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/I;->X(Landroidx/recyclerview/widget/S;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->P(Z)V

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->e0(Z)V

    iget-object v2, v9, Landroidx/recyclerview/widget/a0;->a:Ljava/lang/Object;

    check-cast v2, Ln/j;

    invoke-virtual {v2}, Ln/j;->clear()V

    iget-object v2, v9, Landroidx/recyclerview/widget/a0;->b:Ljava/lang/Object;

    check-cast v2, Ln/h;

    invoke-virtual {v2}, Ln/h;->a()V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:[I

    aget v3, v2, v11

    const/4 v4, 0x1

    aget v5, v2, v4

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->A([I)V

    aget v7, v2, v11

    if-ne v7, v3, :cond_24

    aget v2, v2, v4

    if-eq v2, v5, :cond_23

    goto :goto_e

    :cond_23
    move v2, v11

    goto :goto_f

    :cond_24
    :goto_e
    const/4 v2, 0x1

    :goto_f
    if-eqz v2, :cond_25

    invoke-virtual {v0, v11, v11}, Landroidx/recyclerview/widget/RecyclerView;->r(II)V

    :cond_25
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->b0:Z

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_37

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-eqz v2, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v7, 0x60000

    if-eq v2, v7, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v7, 0x20000

    if-ne v2, v7, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_26

    goto/16 :goto_1a

    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    iget-object v7, v7, Lw0/m;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_1a

    :cond_27
    iget-wide v7, v1, Landroidx/recyclerview/widget/S;->m:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_2b

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-boolean v2, v2, LU3/b0;->b:Z

    if-eqz v2, :cond_2b

    if-nez v2, :cond_28

    goto :goto_12

    :cond_28
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v2}, Lw0/m;->n()I

    move-result v2

    move-object v10, v6

    move v9, v11

    :goto_10
    if-ge v9, v2, :cond_2c

    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v12, v9}, Lw0/m;->m(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v12

    if-eqz v12, :cond_2a

    invoke-virtual {v12}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v13

    if-nez v13, :cond_2a

    iget-wide v13, v12, Landroidx/recyclerview/widget/U;->e:J

    cmp-long v13, v13, v7

    if-nez v13, :cond_2a

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    iget-object v10, v10, Lw0/m;->d:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v13, v12, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    move-object v10, v12

    goto :goto_11

    :cond_29
    move-object v10, v12

    goto :goto_13

    :cond_2a
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_2b
    :goto_12
    move-object v10, v6

    :cond_2c
    :goto_13
    if-eqz v10, :cond_2d

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    iget-object v2, v2, Lw0/m;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v7, v10, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_35

    :cond_2d
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v2}, Lw0/m;->k()I

    move-result v2

    if-lez v2, :cond_34

    iget v2, v1, Landroidx/recyclerview/widget/S;->l:I

    if-eq v2, v5, :cond_2e

    goto :goto_14

    :cond_2e
    move v2, v11

    :goto_14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/S;->b()I

    move-result v7

    move v8, v2

    :goto_15
    if-ge v8, v7, :cond_31

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->C(I)Landroidx/recyclerview/widget/U;

    move-result-object v9

    if-nez v9, :cond_2f

    goto :goto_16

    :cond_2f
    iget-object v9, v9, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-eqz v10, :cond_30

    move-object v7, v9

    goto :goto_19

    :cond_30
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_31
    :goto_16
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    :goto_17
    if-ltz v2, :cond_34

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->C(I)Landroidx/recyclerview/widget/U;

    move-result-object v7

    if-nez v7, :cond_32

    goto :goto_18

    :cond_32
    iget-object v7, v7, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_33

    goto :goto_19

    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_34
    :goto_18
    move-object v7, v6

    :cond_35
    :goto_19
    if-eqz v7, :cond_37

    iget v0, v1, Landroidx/recyclerview/widget/S;->n:I

    int-to-long v8, v0

    cmp-long v2, v8, v3

    if-eqz v2, :cond_36

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_36

    move-object v7, v0

    :cond_36
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    :cond_37
    :goto_1a
    iput-wide v3, v1, Landroidx/recyclerview/widget/S;->m:J

    iput v5, v1, Landroidx/recyclerview/widget/S;->l:I

    iput v5, v1, Landroidx/recyclerview/widget/S;->n:I

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v2, :cond_1

    iput-boolean v1, v2, Landroidx/recyclerview/widget/I;->g:Z

    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    sget-object v0, Landroidx/recyclerview/widget/q;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/q;

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/q;

    if-nez v1, :cond_3

    new-instance v1, Landroidx/recyclerview/widget/q;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/q;->d:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/q;->g:Ljava/util/ArrayList;

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/q;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, 0x42700000    # 60.0f

    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/q;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v1

    float-to-long v3, v3

    iput-wide v3, v2, Landroidx/recyclerview/widget/q;->f:J

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/q;

    iget-object v0, v0, Landroidx/recyclerview/widget/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->h()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    iget-object v2, v1, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v1, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->g()V

    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v1, :cond_2

    iput-boolean v0, v1, Landroidx/recyclerview/widget/I;->g:Z

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/I;->M(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:LA1/l;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/e0;->d:LJ/c;

    invoke-virtual {v0}, LJ/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/q;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/recyclerview/widget/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/q;

    :cond_4
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/F;

    invoke-virtual {v3, p1, p0}, Landroidx/recyclerview/widget/F;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    neg-float v0, v0

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    move v3, v0

    :goto_2
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->W:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->W(IILandroid/view/MotionEvent;)Z

    :cond_8
    return v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/m;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->z(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v4, :cond_c

    if-eq v4, v2, :cond_b

    if-eq v4, v6, :cond_7

    const/4 v0, 0x3

    if-eq v4, v0, :cond_6

    const/4 v0, 0x5

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->Q(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    goto/16 :goto_1

    :cond_7
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    if-eq v4, v2, :cond_10

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    sub-int v4, v5, v4

    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    sub-int v6, p1, v6

    iget v7, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    if-eqz v0, :cond_9

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v7, :cond_9

    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    move v0, v2

    goto :goto_0

    :cond_9
    move v0, v1

    :goto_0
    if-eqz v3, :cond_a

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v7, :cond_a

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    move v0, v2

    :cond_a
    if-eqz v0, :cond_10

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    goto :goto_1

    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object p1

    invoke-virtual {p1, v1}, LK/l;->h(I)V

    goto :goto_1

    :cond_c
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    if-eqz v4, :cond_d

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    if-ne p1, v6, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object p1

    invoke-virtual {p1, v2}, LK/l;->h(I)V

    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v3, :cond_f

    or-int/lit8 v0, v0, 0x2

    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, LK/l;->g(II)Z

    :cond_10
    :goto_1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    if-ne p0, v2, :cond_11

    move v1, v2

    :cond_11
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    const-string p1, "RV OnLayout"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->H()Z

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v3, v3, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v0, v1, Landroidx/recyclerview/widget/S;->d:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/I;->l0(II)V

    iput-boolean v2, v1, Landroidx/recyclerview/widget/S;->i:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/I;->n0(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->q0()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/recyclerview/widget/I;->l0(II)V

    iput-boolean v2, v1, Landroidx/recyclerview/widget/S;->i:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/I;->n0(II)V

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    return-void

    :cond_5
    iget-boolean v0, v1, Landroidx/recyclerview/widget/S;->k:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, LU3/b0;->c()I

    move-result v0

    iput v0, v1, Landroidx/recyclerview/widget/S;->e:I

    goto :goto_1

    :cond_7
    iput v2, v1, Landroidx/recyclerview/widget/S;->e:I

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v0, v0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->e0(Z)V

    iput-boolean v2, v1, Landroidx/recyclerview/widget/S;->g:Z

    :cond_8
    :goto_2
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iget-object p1, p1, Landroidx/customview/view/AbsSavedState;->d:Landroid/os/Parcelable;

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->f:Landroid/os/Parcelable;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/I;->Y(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    iget-object p0, v1, Landroidx/recyclerview/widget/RecyclerView$SavedState;->f:Landroid/os/Parcelable;

    iput-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->f:Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->Z()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->f:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    iput-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->f:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    const/4 v3, 0x0

    if-nez v2, :cond_5a

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    if-eqz v2, :cond_0

    goto/16 :goto_29

    :cond_0
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/m;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->z(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_3

    :cond_2
    iget v9, v2, Landroidx/recyclerview/widget/m;->v:I

    if-nez v9, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroidx/recyclerview/widget/m;->d(FF)Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroidx/recyclerview/widget/m;->c(FF)Z

    move-result v10

    if-nez v9, :cond_4

    if-eqz v10, :cond_e

    :cond_4
    if-eqz v10, :cond_5

    iput v4, v2, Landroidx/recyclerview/widget/m;->w:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, v2, Landroidx/recyclerview/widget/m;->p:F

    goto :goto_0

    :cond_5
    if-eqz v9, :cond_6

    iput v5, v2, Landroidx/recyclerview/widget/m;->w:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, v2, Landroidx/recyclerview/widget/m;->m:F

    :cond_6
    :goto_0
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/m;->f(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v4, :cond_8

    iget v9, v2, Landroidx/recyclerview/widget/m;->v:I

    if-ne v9, v5, :cond_8

    iput v8, v2, Landroidx/recyclerview/widget/m;->m:F

    iput v8, v2, Landroidx/recyclerview/widget/m;->p:F

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/m;->f(I)V

    iput v3, v2, Landroidx/recyclerview/widget/m;->w:I

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v5, :cond_e

    iget v9, v2, Landroidx/recyclerview/widget/m;->v:I

    if-ne v9, v5, :cond_e

    invoke-virtual {v2}, Landroidx/recyclerview/widget/m;->g()V

    iget v9, v2, Landroidx/recyclerview/widget/m;->w:I

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, v2, Landroidx/recyclerview/widget/m;->b:I

    if-ne v9, v4, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v14, v2, Landroidx/recyclerview/widget/m;->y:[I

    aput v11, v14, v3

    iget v12, v2, Landroidx/recyclerview/widget/m;->q:I

    sub-int/2addr v12, v11

    aput v12, v14, v4

    int-to-float v13, v11

    int-to-float v12, v12

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget v12, v2, Landroidx/recyclerview/widget/m;->o:I

    int-to-float v12, v12

    sub-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v12, v12, v10

    if-gez v12, :cond_9

    goto :goto_1

    :cond_9
    iget v12, v2, Landroidx/recyclerview/widget/m;->p:F

    iget-object v13, v2, Landroidx/recyclerview/widget/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v15

    iget-object v13, v2, Landroidx/recyclerview/widget/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v16

    iget v13, v2, Landroidx/recyclerview/widget/m;->q:I

    move/from16 v17, v13

    move v13, v9

    invoke-static/range {v12 .. v17}, Landroidx/recyclerview/widget/m;->e(FF[IIII)I

    move-result v12

    if-eqz v12, :cond_a

    iget-object v13, v2, Landroidx/recyclerview/widget/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v12, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_a
    iput v9, v2, Landroidx/recyclerview/widget/m;->p:F

    :cond_b
    :goto_1
    iget v9, v2, Landroidx/recyclerview/widget/m;->w:I

    if-ne v9, v5, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget-object v14, v2, Landroidx/recyclerview/widget/m;->x:[I

    aput v11, v14, v3

    iget v12, v2, Landroidx/recyclerview/widget/m;->r:I

    sub-int/2addr v12, v11

    aput v12, v14, v4

    int-to-float v11, v11

    int-to-float v12, v12

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget v11, v2, Landroidx/recyclerview/widget/m;->l:I

    int-to-float v11, v11

    sub-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v10, v11, v10

    if-gez v10, :cond_c

    goto :goto_2

    :cond_c
    iget v12, v2, Landroidx/recyclerview/widget/m;->m:F

    iget-object v10, v2, Landroidx/recyclerview/widget/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v15

    iget-object v10, v2, Landroidx/recyclerview/widget/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v16

    iget v10, v2, Landroidx/recyclerview/widget/m;->r:I

    move v13, v9

    move/from16 v17, v10

    invoke-static/range {v12 .. v17}, Landroidx/recyclerview/widget/m;->e(FF[IIII)I

    move-result v10

    if-eqz v10, :cond_d

    iget-object v11, v2, Landroidx/recyclerview/widget/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_d
    iput v9, v2, Landroidx/recyclerview/widget/m;->m:F

    :cond_e
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v7, :cond_f

    if-ne v2, v4, :cond_10

    :cond_f
    iput-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/m;

    :cond_10
    move v2, v4

    :goto_3
    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    return v4

    :cond_11
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v2, :cond_12

    return v3

    :cond_12
    invoke-virtual {v2}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v2

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v9

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    if-nez v10, :cond_13

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    if-nez v10, :cond_14

    aput v3, v12, v4

    aput v3, v12, v3

    :cond_14
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    aget v14, v12, v3

    int-to-float v14, v14

    aget v15, v12, v4

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v14, 0x3f000000    # 0.5f

    if-eqz v10, :cond_58

    const-string v15, "RecyclerView"

    if-eq v10, v4, :cond_27

    if-eq v10, v5, :cond_19

    if-eq v10, v7, :cond_18

    const/4 v2, 0x5

    if-eq v10, v2, :cond_17

    const/4 v2, 0x6

    if-eq v10, v2, :cond_16

    :cond_15
    :goto_4
    move-object/from16 v20, v13

    goto/16 :goto_27

    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->Q(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_17
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v14

    float-to-int v2, v2

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    goto :goto_4

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    goto :goto_4

    :cond_19
    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1a
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v14

    float-to-int v6, v6

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v5, v14

    float-to-int v5, v5

    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    sub-int/2addr v7, v6

    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    sub-int/2addr v8, v5

    iget v10, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    if-eq v10, v4, :cond_1f

    iget v10, v0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    if-eqz v2, :cond_1c

    if-lez v7, :cond_1b

    sub-int/2addr v7, v10

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_5

    :cond_1b
    add-int/2addr v7, v10

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_5
    if-eqz v7, :cond_1c

    move v11, v4

    goto :goto_6

    :cond_1c
    move v11, v3

    :goto_6
    if-eqz v9, :cond_1e

    if-lez v8, :cond_1d

    sub-int/2addr v8, v10

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_7

    :cond_1d
    add-int/2addr v8, v10

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_7
    if-eqz v8, :cond_1e

    move v11, v4

    :cond_1e
    if-eqz v11, :cond_1f

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    :cond_1f
    iget v10, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    if-ne v10, v4, :cond_15

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    aput v3, v10, v3

    aput v3, v10, v4

    if-eqz v2, :cond_20

    move v15, v7

    goto :goto_8

    :cond_20
    move v15, v3

    :goto_8
    if-eqz v9, :cond_21

    move/from16 v16, v8

    goto :goto_9

    :cond_21
    move/from16 v16, v3

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v14

    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    const/16 v17, 0x0

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, LK/l;->c(III[I[I)Z

    move-result v11

    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    if-eqz v11, :cond_22

    aget v11, v10, v3

    sub-int/2addr v7, v11

    aget v10, v10, v4

    sub-int/2addr v8, v10

    aget v10, v12, v3

    aget v11, v14, v3

    add-int/2addr v10, v11

    aput v10, v12, v3

    aget v10, v12, v4

    aget v11, v14, v4

    add-int/2addr v10, v11

    aput v10, v12, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_22
    aget v10, v14, v3

    sub-int/2addr v6, v10

    iput v6, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    aget v6, v14, v4

    sub-int/2addr v5, v6

    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    if-eqz v2, :cond_23

    move v2, v7

    goto :goto_a

    :cond_23
    move v2, v3

    :goto_a
    if-eqz v9, :cond_24

    move v3, v8

    :cond_24
    invoke-virtual {v0, v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->W(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_25
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/q;

    if-eqz v1, :cond_15

    if-nez v7, :cond_26

    if-eqz v8, :cond_15

    :cond_26
    invoke-virtual {v1, v0, v7, v8}, Landroidx/recyclerview/widget/q;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_4

    :cond_27
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView;->V:I

    int-to-float v10, v7

    const/16 v11, 0x3e8

    invoke-virtual {v1, v11, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz v2, :cond_28

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_b

    :cond_28
    move v1, v8

    :goto_b
    if-eqz v9, :cond_29

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual {v2, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_c

    :cond_29
    move v2, v8

    :goto_c
    cmpl-float v9, v1, v8

    if-nez v9, :cond_2b

    cmpl-float v9, v2, v8

    if-eqz v9, :cond_2a

    goto :goto_d

    :cond_2a
    move-object/from16 v20, v13

    goto/16 :goto_25

    :cond_2b
    :goto_d
    float-to-int v1, v1

    float-to-int v2, v2

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v9, :cond_2d

    const-string v1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_e
    move-object/from16 v20, v13

    goto/16 :goto_24

    :cond_2d
    iget-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz v10, :cond_2e

    :goto_f
    goto :goto_e

    :cond_2e
    invoke-virtual {v9}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v9

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v10

    iget v11, v0, Landroidx/recyclerview/widget/RecyclerView;->U:I

    if-eqz v9, :cond_2f

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v12, v11, :cond_30

    :cond_2f
    move v1, v3

    :cond_30
    if-eqz v10, :cond_31

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v12, v11, :cond_32

    :cond_31
    move v2, v3

    :cond_32
    if-nez v1, :cond_33

    if-nez v2, :cond_33

    goto :goto_f

    :cond_33
    int-to-float v11, v1

    int-to-float v12, v2

    invoke-virtual {v0, v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v14

    if-nez v14, :cond_2c

    if-nez v9, :cond_35

    if-eqz v10, :cond_34

    goto :goto_10

    :cond_34
    move v14, v3

    goto :goto_11

    :cond_35
    :goto_10
    move v14, v4

    :goto_11
    invoke-virtual {v0, v11, v12, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->T:Lw0/i;

    if-eqz v11, :cond_54

    iget-object v12, v11, Lw0/i;->e:Ljava/lang/Object;

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v15, v12, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v15, :cond_36

    goto/16 :goto_22

    :cond_36
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-nez v6, :cond_37

    goto/16 :goto_22

    :cond_37
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v12, v12, Landroidx/recyclerview/widget/RecyclerView;->U:I

    if-gt v6, v12, :cond_38

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v12, :cond_54

    :cond_38
    instance-of v6, v15, Landroidx/recyclerview/widget/Q;

    if-nez v6, :cond_39

    goto/16 :goto_22

    :cond_39
    if-nez v6, :cond_3a

    const/4 v12, 0x0

    goto :goto_12

    :cond_3a
    new-instance v12, Landroidx/recyclerview/widget/A;

    iget-object v3, v11, Lw0/i;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v11, v3}, Landroidx/recyclerview/widget/A;-><init>(Lw0/i;Landroid/content/Context;)V

    :goto_12
    if-nez v12, :cond_3b

    goto/16 :goto_22

    :cond_3b
    iget-object v3, v15, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_3c

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    goto :goto_13

    :cond_3c
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_3d

    invoke-virtual {v3}, LU3/b0;->c()I

    move-result v3

    goto :goto_14

    :cond_3d
    const/4 v3, 0x0

    :goto_14
    if-nez v3, :cond_40

    :goto_15
    move-object/from16 v20, v13

    :cond_3e
    :goto_16
    const/4 v0, -0x1

    :cond_3f
    :goto_17
    const/4 v3, -0x1

    goto/16 :goto_21

    :cond_40
    invoke-virtual {v15}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v19

    if-eqz v19, :cond_41

    invoke-virtual {v11, v15}, Lw0/i;->A(Landroidx/recyclerview/widget/I;)Landroidx/emoji2/text/f;

    move-result-object v11

    goto :goto_18

    :cond_41
    invoke-virtual {v15}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v19

    if-eqz v19, :cond_42

    invoke-virtual {v11, v15}, Lw0/i;->y(Landroidx/recyclerview/widget/I;)Landroidx/emoji2/text/f;

    move-result-object v11

    goto :goto_18

    :cond_42
    const/4 v11, 0x0

    :goto_18
    if-nez v11, :cond_43

    goto :goto_15

    :cond_43
    invoke-virtual {v15}, Landroidx/recyclerview/widget/I;->v()I

    move-result v5

    const/high16 v19, -0x80000000

    const v20, 0x7fffffff

    move/from16 v4, v19

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v24, v20

    move-object/from16 v20, v13

    move/from16 v13, v24

    :goto_19
    if-ge v8, v5, :cond_47

    move/from16 v23, v5

    invoke-virtual {v15, v8}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_44

    goto :goto_1a

    :cond_44
    invoke-static {v5, v11}, Lw0/i;->k(Landroid/view/View;Landroidx/emoji2/text/f;)I

    move-result v0

    if-gtz v0, :cond_45

    if-le v0, v4, :cond_45

    move v4, v0

    move-object/from16 v22, v5

    :cond_45
    if-ltz v0, :cond_46

    if-ge v0, v13, :cond_46

    move v13, v0

    move-object/from16 v21, v5

    :cond_46
    :goto_1a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v23

    goto :goto_19

    :cond_47
    invoke-virtual {v15}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v0

    if-eqz v0, :cond_49

    if-lez v1, :cond_48

    :goto_1b
    const/4 v0, 0x1

    goto :goto_1c

    :cond_48
    const/4 v0, 0x0

    goto :goto_1c

    :cond_49
    if-lez v2, :cond_48

    goto :goto_1b

    :goto_1c
    if-eqz v0, :cond_4a

    if-eqz v21, :cond_4a

    invoke-static/range {v21 .. v21}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v0

    goto :goto_17

    :cond_4a
    if-nez v0, :cond_4b

    if-eqz v22, :cond_4b

    invoke-static/range {v22 .. v22}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v0

    goto :goto_17

    :cond_4b
    if-eqz v0, :cond_4c

    move-object/from16 v21, v22

    :cond_4c
    if-nez v21, :cond_4d

    goto :goto_16

    :cond_4d
    invoke-static/range {v21 .. v21}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v4

    iget-object v5, v15, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_4e

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    move-object/from16 v16, v5

    goto :goto_1d

    :cond_4e
    const/16 v16, 0x0

    :goto_1d
    if-eqz v16, :cond_4f

    invoke-virtual/range {v16 .. v16}, LU3/b0;->c()I

    move-result v5

    goto :goto_1e

    :cond_4f
    const/4 v5, 0x0

    :goto_1e
    if-eqz v6, :cond_51

    move-object v6, v15

    check-cast v6, Landroidx/recyclerview/widget/Q;

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v6, v5}, Landroidx/recyclerview/widget/Q;->a(I)Landroid/graphics/PointF;

    move-result-object v5

    if-eqz v5, :cond_51

    iget v6, v5, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x0

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_50

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_51

    :cond_50
    const/4 v5, 0x1

    goto :goto_1f

    :cond_51
    const/4 v5, 0x0

    :goto_1f
    if-ne v5, v0, :cond_52

    const/4 v0, -0x1

    goto :goto_20

    :cond_52
    const/4 v0, 0x1

    :goto_20
    add-int/2addr v0, v4

    if-ltz v0, :cond_3e

    if-lt v0, v3, :cond_3f

    goto/16 :goto_16

    :goto_21
    if-ne v0, v3, :cond_53

    goto :goto_23

    :cond_53
    iput v0, v12, Landroidx/recyclerview/widget/x;->a:I

    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/I;->t0(Landroidx/recyclerview/widget/x;)V

    move-object/from16 v0, p0

    goto :goto_26

    :cond_54
    :goto_22
    move-object/from16 v20, v13

    :goto_23
    if-eqz v14, :cond_57

    if-eqz v10, :cond_55

    or-int/lit8 v9, v9, 0x2

    :cond_55
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v9, v3}, LK/l;->g(II)Z

    neg-int v0, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    iget-object v2, v1, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    const/4 v3, 0x0

    iput v3, v1, Landroidx/recyclerview/widget/T;->e:I

    iput v3, v1, Landroidx/recyclerview/widget/T;->d:I

    iget-object v3, v1, Landroidx/recyclerview/widget/T;->g:Landroid/view/animation/Interpolator;

    sget-object v4, Landroidx/recyclerview/widget/RecyclerView;->v0:Landroidx/recyclerview/widget/B;

    if-eq v3, v4, :cond_56

    iput-object v4, v1, Landroidx/recyclerview/widget/T;->g:Landroid/view/animation/Interpolator;

    new-instance v3, Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2, v4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, v1, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    :cond_56
    iget-object v8, v1, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    const/high16 v13, -0x80000000

    const v14, 0x7fffffff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v15, -0x80000000

    const v16, 0x7fffffff

    invoke-virtual/range {v8 .. v16}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/T;->a()V

    goto :goto_26

    :cond_57
    move-object/from16 v0, p0

    :goto_24
    const/4 v3, 0x0

    :goto_25
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    move-object/from16 v1, v20

    goto :goto_28

    :cond_58
    move-object/from16 v20, v13

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v14

    float-to-int v3, v3

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    if-eqz v9, :cond_59

    or-int/lit8 v2, v2, 0x2

    :cond_59
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LK/l;->g(II)Z

    :goto_27
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_28
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    return v0

    :cond_5a
    :goto_29
    return v3
.end method

.method public final p()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/S;->a(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->x(Landroidx/recyclerview/widget/S;)V

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/recyclerview/widget/S;->i:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/a0;

    iget-object v5, v4, Landroidx/recyclerview/widget/a0;->a:Ljava/lang/Object;

    check-cast v5, Ln/j;

    invoke-virtual {v5}, Ln/j;->clear()V

    iget-object v5, v4, Landroidx/recyclerview/widget/a0;->b:Ljava/lang/Object;

    check-cast v5, Ln/h;

    invoke-virtual {v5}, Ln/h;->a()V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    iget-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    iget-object v7, v6, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/b;->J(Ljava/util/ArrayList;)V

    iget-object v7, v6, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/b;->J(Ljava/util/ArrayList;)V

    iget-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/I;->S()V

    :cond_0
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v6, :cond_38

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/I;->u0()Z

    move-result v6

    if-eqz v6, :cond_38

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    iget-object v7, v6, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    iget-object v8, v6, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v8, Landroidx/recyclerview/widget/y;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v12, 0x0

    :goto_1
    const/4 v13, -0x1

    const/16 v14, 0x8

    if-ltz v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/a;

    iget v15, v15, Landroidx/recyclerview/widget/a;->a:I

    if-ne v15, v14, :cond_1

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_1
    move v12, v10

    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_3
    move v9, v13

    :goto_2
    const/4 v12, 0x4

    const/4 v15, 0x2

    if-eq v9, v13, :cond_23

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Landroidx/recyclerview/widget/a;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroidx/recyclerview/widget/a;

    iget v2, v13, Landroidx/recyclerview/widget/a;->a:I

    if-eq v2, v10, :cond_1d

    const/16 v18, 0x0

    iget-object v3, v8, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/b;

    if-eq v2, v15, :cond_b

    if-eq v2, v12, :cond_4

    goto/16 :goto_f

    :cond_4
    iget v2, v11, Landroidx/recyclerview/widget/a;->c:I

    iget v15, v13, Landroidx/recyclerview/widget/a;->b:I

    if-ge v2, v15, :cond_5

    add-int/lit8 v15, v15, -0x1

    iput v15, v13, Landroidx/recyclerview/widget/a;->b:I

    goto :goto_3

    :cond_5
    iget v10, v13, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v15, v10

    if-ge v2, v15, :cond_6

    add-int/lit8 v10, v10, -0x1

    iput v10, v13, Landroidx/recyclerview/widget/a;->c:I

    iget v2, v11, Landroidx/recyclerview/widget/a;->b:I

    const/4 v10, 0x1

    invoke-virtual {v3, v12, v2, v10}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object v2

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v2, v18

    :goto_4
    iget v10, v11, Landroidx/recyclerview/widget/a;->b:I

    iget v15, v13, Landroidx/recyclerview/widget/a;->b:I

    if-gt v10, v15, :cond_7

    add-int/lit8 v15, v15, 0x1

    iput v15, v13, Landroidx/recyclerview/widget/a;->b:I

    goto :goto_5

    :cond_7
    iget v12, v13, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v15, v12

    if-ge v10, v15, :cond_8

    sub-int/2addr v15, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x4

    invoke-virtual {v3, v12, v10, v15}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object v18

    iget v10, v13, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr v10, v15

    iput v10, v13, Landroidx/recyclerview/widget/a;->c:I

    :cond_8
    :goto_5
    move-object/from16 v10, v18

    invoke-virtual {v7, v14, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v11, v13, Landroidx/recyclerview/widget/a;->c:I

    if-lez v11, :cond_9

    invoke-virtual {v7, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v3, LJ/c;

    invoke-virtual {v3, v13}, LJ/c;->c(Ljava/lang/Object;)Z

    :goto_6
    if-eqz v2, :cond_a

    invoke-virtual {v7, v9, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_a
    if-eqz v10, :cond_22

    invoke-virtual {v7, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_f

    :cond_b
    iget v2, v11, Landroidx/recyclerview/widget/a;->b:I

    iget v10, v11, Landroidx/recyclerview/widget/a;->c:I

    if-ge v2, v10, :cond_d

    iget v12, v13, Landroidx/recyclerview/widget/a;->b:I

    if-ne v12, v2, :cond_c

    iget v12, v13, Landroidx/recyclerview/widget/a;->c:I

    sub-int v2, v10, v2

    if-ne v12, v2, :cond_c

    const/4 v2, 0x0

    :goto_7
    const/16 v17, 0x1

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_8
    const/16 v17, 0x0

    goto :goto_9

    :cond_d
    iget v12, v13, Landroidx/recyclerview/widget/a;->b:I

    add-int/lit8 v15, v10, 0x1

    if-ne v12, v15, :cond_e

    iget v12, v13, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr v2, v10

    if-ne v12, v2, :cond_e

    const/4 v2, 0x1

    goto :goto_7

    :cond_e
    const/4 v2, 0x1

    goto :goto_8

    :goto_9
    iget v12, v13, Landroidx/recyclerview/widget/a;->b:I

    if-ge v10, v12, :cond_f

    add-int/lit8 v12, v12, -0x1

    iput v12, v13, Landroidx/recyclerview/widget/a;->b:I

    goto :goto_a

    :cond_f
    iget v15, v13, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v12, v15

    if-ge v10, v12, :cond_10

    add-int/lit8 v15, v15, -0x1

    iput v15, v13, Landroidx/recyclerview/widget/a;->c:I

    const/4 v2, 0x2

    iput v2, v11, Landroidx/recyclerview/widget/a;->a:I

    const/4 v2, 0x1

    iput v2, v11, Landroidx/recyclerview/widget/a;->c:I

    iget v2, v13, Landroidx/recyclerview/widget/a;->c:I

    if-nez v2, :cond_22

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v2, LJ/c;

    invoke-virtual {v2, v13}, LJ/c;->c(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_10
    :goto_a
    iget v10, v11, Landroidx/recyclerview/widget/a;->b:I

    iget v12, v13, Landroidx/recyclerview/widget/a;->b:I

    if-gt v10, v12, :cond_11

    add-int/lit8 v12, v12, 0x1

    iput v12, v13, Landroidx/recyclerview/widget/a;->b:I

    goto :goto_b

    :cond_11
    iget v15, v13, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v12, v15

    if-ge v10, v12, :cond_12

    sub-int/2addr v12, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v15, 0x2

    invoke-virtual {v3, v15, v10, v12}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object v18

    iget v10, v11, Landroidx/recyclerview/widget/a;->b:I

    iget v12, v13, Landroidx/recyclerview/widget/a;->b:I

    sub-int/2addr v10, v12

    iput v10, v13, Landroidx/recyclerview/widget/a;->c:I

    :cond_12
    :goto_b
    move-object/from16 v10, v18

    if-eqz v17, :cond_13

    invoke-virtual {v7, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v2, LJ/c;

    invoke-virtual {v2, v11}, LJ/c;->c(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_13
    if-eqz v2, :cond_17

    if-eqz v10, :cond_15

    iget v2, v11, Landroidx/recyclerview/widget/a;->b:I

    iget v3, v10, Landroidx/recyclerview/widget/a;->b:I

    if-le v2, v3, :cond_14

    iget v3, v10, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroidx/recyclerview/widget/a;->b:I

    :cond_14
    iget v2, v11, Landroidx/recyclerview/widget/a;->c:I

    iget v3, v10, Landroidx/recyclerview/widget/a;->b:I

    if-le v2, v3, :cond_15

    iget v3, v10, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroidx/recyclerview/widget/a;->c:I

    :cond_15
    iget v2, v11, Landroidx/recyclerview/widget/a;->b:I

    iget v3, v13, Landroidx/recyclerview/widget/a;->b:I

    if-le v2, v3, :cond_16

    iget v3, v13, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroidx/recyclerview/widget/a;->b:I

    :cond_16
    iget v2, v11, Landroidx/recyclerview/widget/a;->c:I

    iget v3, v13, Landroidx/recyclerview/widget/a;->b:I

    if-le v2, v3, :cond_1b

    iget v3, v13, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroidx/recyclerview/widget/a;->c:I

    goto :goto_c

    :cond_17
    if-eqz v10, :cond_19

    iget v2, v11, Landroidx/recyclerview/widget/a;->b:I

    iget v3, v10, Landroidx/recyclerview/widget/a;->b:I

    if-lt v2, v3, :cond_18

    iget v3, v10, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroidx/recyclerview/widget/a;->b:I

    :cond_18
    iget v2, v11, Landroidx/recyclerview/widget/a;->c:I

    iget v3, v10, Landroidx/recyclerview/widget/a;->b:I

    if-lt v2, v3, :cond_19

    iget v3, v10, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroidx/recyclerview/widget/a;->c:I

    :cond_19
    iget v2, v11, Landroidx/recyclerview/widget/a;->b:I

    iget v3, v13, Landroidx/recyclerview/widget/a;->b:I

    if-lt v2, v3, :cond_1a

    iget v3, v13, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroidx/recyclerview/widget/a;->b:I

    :cond_1a
    iget v2, v11, Landroidx/recyclerview/widget/a;->c:I

    iget v3, v13, Landroidx/recyclerview/widget/a;->b:I

    if-lt v2, v3, :cond_1b

    iget v3, v13, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroidx/recyclerview/widget/a;->c:I

    :cond_1b
    :goto_c
    invoke-virtual {v7, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v2, v11, Landroidx/recyclerview/widget/a;->b:I

    iget v3, v11, Landroidx/recyclerview/widget/a;->c:I

    if-eq v2, v3, :cond_1c

    invoke-virtual {v7, v14, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_1c
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_d
    if-eqz v10, :cond_22

    invoke-virtual {v7, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_f

    :cond_1d
    iget v2, v11, Landroidx/recyclerview/widget/a;->c:I

    iget v3, v13, Landroidx/recyclerview/widget/a;->b:I

    if-ge v2, v3, :cond_1e

    const/16 v17, -0x1

    goto :goto_e

    :cond_1e
    const/16 v17, 0x0

    :goto_e
    iget v10, v11, Landroidx/recyclerview/widget/a;->b:I

    if-ge v10, v3, :cond_1f

    add-int/lit8 v17, v17, 0x1

    :cond_1f
    if-gt v3, v10, :cond_20

    iget v3, v13, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v10, v3

    iput v10, v11, Landroidx/recyclerview/widget/a;->b:I

    :cond_20
    iget v3, v13, Landroidx/recyclerview/widget/a;->b:I

    if-gt v3, v2, :cond_21

    iget v10, v13, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v2, v10

    iput v2, v11, Landroidx/recyclerview/widget/a;->c:I

    :cond_21
    add-int v3, v3, v17

    iput v3, v13, Landroidx/recyclerview/widget/a;->b:I

    invoke-virtual {v7, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v14, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_22
    :goto_f
    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_23
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_37

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/a;

    iget v9, v8, Landroidx/recyclerview/widget/a;->a:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_36

    iget-object v10, v6, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v10, LJ/c;

    iget-object v11, v6, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast v11, Landroidx/recyclerview/widget/C;

    const/4 v12, 0x2

    if-eq v9, v12, :cond_2d

    const/4 v12, 0x4

    if-eq v9, v12, :cond_25

    if-eq v9, v14, :cond_24

    :goto_11
    move/from16 v21, v2

    :goto_12
    const/4 v2, 0x2

    const/16 v19, 0x1

    goto/16 :goto_20

    :cond_24
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/b;->H(Landroidx/recyclerview/widget/a;)V

    goto :goto_11

    :cond_25
    iget v9, v8, Landroidx/recyclerview/widget/a;->b:I

    iget v12, v8, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v12, v9

    move v13, v9

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_13
    if-ge v9, v12, :cond_2a

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/C;->b(I)Landroidx/recyclerview/widget/U;

    move-result-object v21

    if-nez v21, :cond_26

    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/b;->d(I)Z

    move-result v21

    if-eqz v21, :cond_27

    :cond_26
    move/from16 v21, v2

    const/4 v2, 0x4

    goto :goto_15

    :cond_27
    move/from16 v21, v2

    const/4 v2, 0x1

    if-ne v14, v2, :cond_28

    const/4 v2, 0x4

    invoke-virtual {v6, v2, v13, v15}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/b;->H(Landroidx/recyclerview/widget/a;)V

    move v13, v9

    const/4 v15, 0x0

    goto :goto_14

    :cond_28
    const/4 v2, 0x4

    :goto_14
    const/4 v2, 0x1

    const/4 v14, 0x0

    goto :goto_16

    :goto_15
    if-nez v14, :cond_29

    invoke-virtual {v6, v2, v13, v15}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/b;->q(Landroidx/recyclerview/widget/a;)V

    move v13, v9

    const/4 v15, 0x0

    :cond_29
    const/4 v2, 0x1

    const/4 v14, 0x1

    :goto_16
    add-int/2addr v15, v2

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v21

    goto :goto_13

    :cond_2a
    move/from16 v21, v2

    iget v2, v8, Landroidx/recyclerview/widget/a;->c:I

    if-eq v15, v2, :cond_2b

    invoke-virtual {v10, v8}, LJ/c;->c(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    invoke-virtual {v6, v2, v13, v15}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object v8

    goto :goto_17

    :cond_2b
    const/4 v2, 0x4

    :goto_17
    if-nez v14, :cond_2c

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/b;->q(Landroidx/recyclerview/widget/a;)V

    goto :goto_12

    :cond_2c
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/b;->H(Landroidx/recyclerview/widget/a;)V

    goto :goto_12

    :cond_2d
    move/from16 v21, v2

    const/4 v2, 0x4

    iget v9, v8, Landroidx/recyclerview/widget/a;->b:I

    iget v12, v8, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v12, v9

    move v13, v9

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_18
    if-ge v13, v12, :cond_33

    invoke-virtual {v11, v13}, Landroidx/recyclerview/widget/C;->b(I)Landroidx/recyclerview/widget/U;

    move-result-object v20

    if-nez v20, :cond_2e

    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/b;->d(I)Z

    move-result v20

    if-eqz v20, :cond_2f

    :cond_2e
    const/4 v2, 0x2

    goto :goto_1a

    :cond_2f
    const/4 v2, 0x1

    if-ne v15, v2, :cond_30

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v9, v14}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroidx/recyclerview/widget/b;->H(Landroidx/recyclerview/widget/a;)V

    const/4 v15, 0x1

    goto :goto_19

    :cond_30
    const/4 v2, 0x2

    const/4 v15, 0x0

    :goto_19
    const/4 v2, 0x0

    goto :goto_1c

    :goto_1a
    if-nez v15, :cond_31

    invoke-virtual {v6, v2, v9, v14}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroidx/recyclerview/widget/b;->q(Landroidx/recyclerview/widget/a;)V

    const/4 v2, 0x1

    goto :goto_1b

    :cond_31
    const/4 v2, 0x0

    :goto_1b
    move v15, v2

    const/4 v2, 0x1

    :goto_1c
    if-eqz v15, :cond_32

    sub-int/2addr v13, v14

    sub-int/2addr v12, v14

    const/4 v14, 0x1

    :goto_1d
    const/16 v19, 0x1

    goto :goto_1e

    :cond_32
    add-int/lit8 v14, v14, 0x1

    goto :goto_1d

    :goto_1e
    add-int/lit8 v13, v13, 0x1

    move v15, v2

    const/4 v2, 0x4

    goto :goto_18

    :cond_33
    const/16 v19, 0x1

    iget v2, v8, Landroidx/recyclerview/widget/a;->c:I

    if-eq v14, v2, :cond_34

    invoke-virtual {v10, v8}, LJ/c;->c(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v9, v14}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object v8

    goto :goto_1f

    :cond_34
    const/4 v2, 0x2

    :goto_1f
    if-nez v15, :cond_35

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/b;->q(Landroidx/recyclerview/widget/a;)V

    goto :goto_20

    :cond_35
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/b;->H(Landroidx/recyclerview/widget/a;)V

    goto :goto_20

    :cond_36
    move/from16 v21, v2

    move/from16 v19, v10

    const/4 v2, 0x2

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/b;->H(Landroidx/recyclerview/widget/a;)V

    :goto_20
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v21

    const/16 v14, 0x8

    goto/16 :goto_10

    :cond_37
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_21

    :cond_38
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/b;->f()V

    :goto_21
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_3a

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    if-eqz v2, :cond_39

    goto :goto_22

    :cond_39
    move v2, v6

    goto :goto_23

    :cond_3a
    :goto_22
    move v2, v3

    :goto_23
    iget-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    if-eqz v7, :cond_3d

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v7, :cond_3d

    iget-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    if-nez v7, :cond_3b

    if-nez v2, :cond_3b

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-boolean v8, v8, Landroidx/recyclerview/widget/I;->f:Z

    if-eqz v8, :cond_3d

    :cond_3b
    if-eqz v7, :cond_3c

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-boolean v7, v7, LU3/b0;->b:Z

    if-eqz v7, :cond_3d

    :cond_3c
    move v7, v3

    goto :goto_24

    :cond_3d
    move v7, v6

    :goto_24
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    iput-boolean v7, v8, Landroidx/recyclerview/widget/S;->j:Z

    if-eqz v7, :cond_3e

    if-eqz v2, :cond_3e

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    if-nez v2, :cond_3e

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v2, :cond_3e

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/I;->u0()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_25

    :cond_3e
    move v3, v6

    :goto_25
    iput-boolean v3, v8, Landroidx/recyclerview/widget/S;->k:Z

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->b0:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-eqz v2, :cond_3f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    goto :goto_26

    :cond_3f
    move-object v2, v3

    :goto_26
    if-nez v2, :cond_40

    goto :goto_27

    :cond_40
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_41

    goto :goto_27

    :cond_41
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v3

    :goto_27
    const-wide/16 v6, -0x1

    const/4 v2, -0x1

    if-nez v3, :cond_42

    iput-wide v6, v1, Landroidx/recyclerview/widget/S;->m:J

    iput v2, v1, Landroidx/recyclerview/widget/S;->l:I

    iput v2, v1, Landroidx/recyclerview/widget/S;->n:I

    goto :goto_2b

    :cond_42
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-boolean v8, v8, LU3/b0;->b:Z

    if-eqz v8, :cond_43

    iget-wide v6, v3, Landroidx/recyclerview/widget/U;->e:J

    :cond_43
    iput-wide v6, v1, Landroidx/recyclerview/widget/S;->m:J

    iget-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    if-eqz v6, :cond_44

    :goto_28
    move v6, v2

    goto :goto_29

    :cond_44
    invoke-virtual {v3}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v6

    if-eqz v6, :cond_45

    iget v6, v3, Landroidx/recyclerview/widget/U;->d:I

    goto :goto_29

    :cond_45
    iget-object v6, v3, Landroidx/recyclerview/widget/U;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v6, :cond_46

    goto :goto_28

    :cond_46
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroidx/recyclerview/widget/U;)I

    move-result v6

    :goto_29
    iput v6, v1, Landroidx/recyclerview/widget/S;->l:I

    iget-object v3, v3, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    :cond_47
    :goto_2a
    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-nez v7, :cond_48

    instance-of v7, v3, Landroid/view/ViewGroup;

    if-eqz v7, :cond_48

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_48

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v2, :cond_47

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    goto :goto_2a

    :cond_48
    iput v6, v1, Landroidx/recyclerview/widget/S;->n:I

    :goto_2b
    iget-boolean v3, v1, Landroidx/recyclerview/widget/S;->j:Z

    if-eqz v3, :cond_49

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    if-eqz v3, :cond_49

    const/4 v3, 0x1

    goto :goto_2c

    :cond_49
    const/4 v3, 0x0

    :goto_2c
    iput-boolean v3, v1, Landroidx/recyclerview/widget/S;->h:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    iget-boolean v3, v1, Landroidx/recyclerview/widget/S;->k:Z

    iput-boolean v3, v1, Landroidx/recyclerview/widget/S;->g:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    invoke-virtual {v3}, LU3/b0;->c()I

    move-result v3

    iput v3, v1, Landroidx/recyclerview/widget/S;->e:I

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:[I

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->A([I)V

    iget-boolean v3, v1, Landroidx/recyclerview/widget/S;->j:Z

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    iget-object v4, v4, Landroidx/recyclerview/widget/a0;->a:Ljava/lang/Object;

    check-cast v4, Ln/j;

    if-eqz v3, :cond_4d

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v3}, Lw0/m;->k()I

    move-result v3

    const/4 v7, 0x0

    :goto_2d
    if-ge v7, v3, :cond_4d

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v8, v7}, Lw0/m;->j(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v9

    if-nez v9, :cond_4c

    invoke-virtual {v8}, Landroidx/recyclerview/widget/U;->g()Z

    move-result v9

    if-eqz v9, :cond_4a

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-boolean v9, v9, LU3/b0;->b:Z

    if-nez v9, :cond_4a

    goto :goto_2e

    :cond_4a
    invoke-static {v8}, Landroidx/recyclerview/widget/j;->c(Landroidx/recyclerview/widget/U;)V

    invoke-virtual {v8}, Landroidx/recyclerview/widget/U;->c()Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, LK/o;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v8}, LK/o;->a(Landroidx/recyclerview/widget/U;)V

    invoke-virtual {v4, v8}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/e0;

    if-nez v10, :cond_4b

    invoke-static {}, Landroidx/recyclerview/widget/e0;->a()Landroidx/recyclerview/widget/e0;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    iput-object v9, v10, Landroidx/recyclerview/widget/e0;->b:LK/o;

    iget v9, v10, Landroidx/recyclerview/widget/e0;->a:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v10, Landroidx/recyclerview/widget/e0;->a:I

    iget-boolean v9, v1, Landroidx/recyclerview/widget/S;->h:Z

    if-eqz v9, :cond_4c

    invoke-virtual {v8}, Landroidx/recyclerview/widget/U;->l()Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-virtual {v8}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v9

    if-nez v9, :cond_4c

    invoke-virtual {v8}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v9

    if-nez v9, :cond_4c

    invoke-virtual {v8}, Landroidx/recyclerview/widget/U;->g()Z

    move-result v9

    if-nez v9, :cond_4c

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroidx/recyclerview/widget/U;)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10, v8}, Ln/h;->d(JLjava/lang/Object;)V

    :cond_4c
    :goto_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_4d
    iget-boolean v3, v1, Landroidx/recyclerview/widget/S;->k:Z

    const/4 v5, 0x2

    if-eqz v3, :cond_55

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v3}, Lw0/m;->n()I

    move-result v3

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v3, :cond_4f

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v8, v7}, Lw0/m;->m(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v9

    if-nez v9, :cond_4e

    iget v9, v8, Landroidx/recyclerview/widget/U;->d:I

    if-ne v9, v2, :cond_4e

    iget v9, v8, Landroidx/recyclerview/widget/U;->c:I

    iput v9, v8, Landroidx/recyclerview/widget/U;->d:I

    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_4f
    iget-boolean v2, v1, Landroidx/recyclerview/widget/S;->f:Z

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/recyclerview/widget/S;->f:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    invoke-virtual {v3, v7, v1}, Landroidx/recyclerview/widget/I;->W(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)V

    iput-boolean v2, v1, Landroidx/recyclerview/widget/S;->f:Z

    const/4 v3, 0x0

    :goto_30
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v2}, Lw0/m;->k()I

    move-result v2

    if-ge v3, v2, :cond_54

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v2, v3}, Lw0/m;->j(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v7

    if-eqz v7, :cond_50

    goto :goto_31

    :cond_50
    invoke-virtual {v4, v2}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/e0;

    if-eqz v7, :cond_51

    iget v7, v7, Landroidx/recyclerview/widget/e0;->a:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_51

    goto :goto_31

    :cond_51
    invoke-static {v2}, Landroidx/recyclerview/widget/j;->c(Landroidx/recyclerview/widget/U;)V

    const/16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/U;->d(I)Z

    move-result v7

    invoke-virtual {v2}, Landroidx/recyclerview/widget/U;->c()Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, LK/o;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8, v2}, LK/o;->a(Landroidx/recyclerview/widget/U;)V

    if-eqz v7, :cond_52

    invoke-virtual {v0, v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->T(Landroidx/recyclerview/widget/U;LK/o;)V

    goto :goto_31

    :cond_52
    invoke-virtual {v4, v2}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/e0;

    if-nez v7, :cond_53

    invoke-static {}, Landroidx/recyclerview/widget/e0;->a()Landroidx/recyclerview/widget/e0;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    iget v2, v7, Landroidx/recyclerview/widget/e0;->a:I

    or-int/2addr v2, v5

    iput v2, v7, Landroidx/recyclerview/widget/e0;->a:I

    iput-object v8, v7, Landroidx/recyclerview/widget/e0;->b:LK/o;

    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    :goto_32
    const/4 v2, 0x1

    goto :goto_33

    :cond_55
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    goto :goto_32

    :goto_33
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->P(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->e0(Z)V

    iput v5, v1, Landroidx/recyclerview/widget/S;->d:I

    return-void
.end method

.method public final q()V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/S;->a(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->f()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    invoke-virtual {v1}, LU3/b0;->c()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/S;->e:I

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/S;->c:I

    iput-boolean v1, v0, Landroidx/recyclerview/widget/S;->g:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/I;->W(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)V

    iput-boolean v1, v0, Landroidx/recyclerview/widget/S;->f:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iget-boolean v2, v0, Landroidx/recyclerview/widget/S;->j:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Landroidx/recyclerview/widget/S;->j:Z

    const/4 v2, 0x4

    iput v2, v0, Landroidx/recyclerview/widget/S;->d:I

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->P(Z)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->e0(Z)V

    return-void
.end method

.method public final r(II)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v2, v0, p1

    sub-int v3, v1, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/K;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/recyclerview/widget/K;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:I

    return-void
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/U;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/U;->j:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Landroidx/recyclerview/widget/U;->j:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v0, v0, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/x;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->U(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/I;->f0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p0

    return p0
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    :goto_0
    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public final scrollBy(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->W(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    const-string p0, "RecyclerView"

    const-string p1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->z:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->z:I

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setNestedScrollingEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object p0

    iget-boolean v0, p0, LK/l;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, LK/l;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, LK/x;->l(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, LK/l;->a:Z

    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LK/l;->g(II)Z

    move-result p0

    return p0
.end method

.method public final stopNestedScroll()V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LK/l;->h(I)V

    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not suppressLayout in layout or scroll"

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    iget-object v0, p1, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p1, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/x;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public final v()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Landroidx/recyclerview/widget/S;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    iget-object p0, p0, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public final y(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final z(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/m;

    iget v6, v5, Landroidx/recyclerview/widget/m;->v:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ne v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v5, v6, v9}, Landroidx/recyclerview/widget/m;->d(FF)Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroidx/recyclerview/widget/m;->c(FF)Z

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_4

    if-nez v6, :cond_0

    if-eqz v9, :cond_4

    :cond_0
    if-eqz v9, :cond_1

    iput v7, v5, Landroidx/recyclerview/widget/m;->w:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v5, Landroidx/recyclerview/widget/m;->p:F

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    iput v8, v5, Landroidx/recyclerview/widget/m;->w:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v5, Landroidx/recyclerview/widget/m;->m:F

    :cond_2
    :goto_1
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/m;->f(I)V

    goto :goto_2

    :cond_3
    if-ne v6, v8, :cond_4

    :goto_2
    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/m;

    return v7

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method
