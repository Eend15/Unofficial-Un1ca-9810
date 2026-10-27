.class public final synthetic Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILandroid/widget/TextView;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;->f$0:I

    iput-object p2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;->f$1:Landroid/widget/TextView;

    iput p3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 22

    .line 0
    iget v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;->f$0:I

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;->f$1:Landroid/widget/TextView;

    iget v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;->f$2:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lio/mesalabs/unica/camera/QuickApertureControl;->lambda$installStockFeedback$4(ILandroid/widget/TextView;ILandroid/view/View;IIIIIIII)V

    return-void
.end method
