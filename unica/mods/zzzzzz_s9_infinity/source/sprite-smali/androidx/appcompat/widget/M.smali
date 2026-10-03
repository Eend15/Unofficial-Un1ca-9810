.class public final Landroidx/appcompat/widget/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic d:Landroidx/appcompat/widget/H;

.field public final synthetic e:Landroidx/appcompat/widget/N;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/N;Landroidx/appcompat/widget/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/M;->e:Landroidx/appcompat/widget/N;

    iput-object p2, p0, Landroidx/appcompat/widget/M;->d:Landroidx/appcompat/widget/H;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/M;->e:Landroidx/appcompat/widget/N;

    iget-object v0, v0, Landroidx/appcompat/widget/N;->G:Landroidx/appcompat/widget/P;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/M;->d:Landroidx/appcompat/widget/H;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
