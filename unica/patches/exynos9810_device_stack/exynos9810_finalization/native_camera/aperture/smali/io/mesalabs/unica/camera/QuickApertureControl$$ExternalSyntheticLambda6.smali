.class public final synthetic Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 0
    iget-object p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Runnable;

    invoke-static/range {p0 .. p9}, Lio/mesalabs/unica/camera/QuickApertureControl;->lambda$installStockFeedback$7(Ljava/lang/Runnable;Landroid/view/View;IIIIIIII)V

    return-void
.end method
