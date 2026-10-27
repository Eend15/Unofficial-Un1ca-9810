.class public final synthetic Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->lambda$onEngineState$2(Ljava/lang/Object;)V

    return-void
.end method
