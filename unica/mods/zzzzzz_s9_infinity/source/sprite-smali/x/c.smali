.class public final Lx/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field public final synthetic a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/c;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-void
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lx/c;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    iget-object p0, p0, Lx/c;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p(I)V

    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method
