.class public final synthetic Lio/mesalabs/unica/settings/pif/PIFCustomPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/settings/pif/PIFCustomPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/settings/pif/PIFCustomPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/settings/pif/PIFCustomPreferenceController$$ExternalSyntheticLambda0;->f$0:Lio/mesalabs/unica/settings/pif/PIFCustomPreferenceController;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroidx/activity/result/ActivityResult;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lio/mesalabs/unica/settings/pif/PIFCustomPreferenceController$$ExternalSyntheticLambda0;->f$0:Lio/mesalabs/unica/settings/pif/PIFCustomPreferenceController;

    iget-object v0, p0, Lio/mesalabs/unica/settings/pif/PIFCustomPreferenceController;->mTogglePreference:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lio/mesalabs/unica/settings/pif/PIFCustomPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lio/mesalabs/unica/settings/pif/PIFUtils;->loadCustomPropsFromUri(Landroid/content/Context;Landroidx/preference/Preference;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
