.class public final synthetic Lio/mesalabs/unica/settings/pif/PIFUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/settings/pif/PIFUtils$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/mesalabs/unica/settings/pif/PIFUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/mesalabs/unica/settings/pif/PIFUtils$$ExternalSyntheticLambda0;->f$2:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/mesalabs/unica/settings/pif/PIFUtils$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/mesalabs/unica/settings/pif/PIFUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lio/mesalabs/unica/settings/pif/PIFUtils$$ExternalSyntheticLambda0;->f$2:Landroidx/preference/Preference;

    invoke-static {v0, v1, p0}, Lio/mesalabs/unica/settings/pif/PIFUtils;->lambda$updatePIF$0(Lorg/json/JSONObject;Landroid/content/Context;Landroidx/preference/Preference;)V

    return-void
.end method
