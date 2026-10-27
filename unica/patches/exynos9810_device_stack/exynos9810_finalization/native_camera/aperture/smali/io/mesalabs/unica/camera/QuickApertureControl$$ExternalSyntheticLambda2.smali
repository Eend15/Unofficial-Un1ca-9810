.class public final synthetic Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/camera/QuickApertureControl$Session;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda2;->f$0:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda2;->f$0:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->lambda$onLensInfo$2(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V

    return-void
.end method
