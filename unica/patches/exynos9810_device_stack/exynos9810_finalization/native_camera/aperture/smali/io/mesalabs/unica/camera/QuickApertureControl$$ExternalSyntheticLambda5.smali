.class public final synthetic Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:[I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;[III)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;->f$1:[I

    iput p3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;->f$2:I

    iput p4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;->f$1:[I

    iget v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;->f$2:I

    iget p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->lambda$installStockFeedback$6(Landroid/widget/TextView;[III)V

    return-void
.end method
