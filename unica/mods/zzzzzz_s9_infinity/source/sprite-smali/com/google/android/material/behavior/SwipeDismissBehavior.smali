.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Lx/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lx/a;"
    }
.end annotation


# instance fields
.field public a:LM/d;

.field public b:Z

.field public c:I

.field public d:F

.field public e:F

.field public final f:LJ0/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    new-instance v0, LJ0/b;

    invoke-direct {v0, p0}, LJ0/b;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:LJ0/b;

    return-void
.end method


# virtual methods
.method public f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    :goto_0
    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LM/d;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:LJ0/b;

    new-instance v0, LM/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, LM/d;-><init>(Landroid/content/Context;Landroidx/coordinatorlayout/widget/CoordinatorLayout;LK/I;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LM/d;

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LM/d;

    invoke-virtual {p0, p3}, LM/d;->p(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public final g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    sget-object p1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/high16 p1, 0x100000

    invoke-static {p2, p1}, LK/D;->d(Landroid/view/View;I)V

    invoke-static {p2, p3}, LK/D;->c(Landroid/view/View;I)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->r(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, LL/c;->j:LL/c;

    new-instance v0, LA1/e;

    invoke-direct {v0, p0}, LA1/e;-><init>(Ljava/lang/Object;)V

    invoke-static {p2, p1, v0}, LK/D;->e(Landroid/view/View;LL/c;LL/m;)V

    :cond_0
    return p3
.end method

.method public final q(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LM/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, LM/d;->j(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public r(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
