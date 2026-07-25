.class public final synthetic Lio/mesalabs/unica/settings/pif/PIFUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/settings/pif/PIFUtils$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lio/mesalabs/unica/settings/pif/PIFUtils$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lio/mesalabs/unica/settings/pif/PIFUtils;->lambda$updatePIF$1(Landroid/content/Context;)V

    return-void
.end method
