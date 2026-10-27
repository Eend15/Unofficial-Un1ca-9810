.class final Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;
.super Ljava/lang/Object;
.source "ApertureAdapterItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/mesalabs/unica/camera/ApertureAdapterItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Saved"
.end annotation


# instance fields
.field final holder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final textParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/widget/TextView;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;->holder:Ljava/lang/ref/WeakReference;

    .line 26
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    iput-object p1, p0, Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;->textParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method
