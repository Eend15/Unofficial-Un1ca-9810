.class public final synthetic Lio/mesalabs/unica/settings/keybox/KeyboxLoadPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/settings/keybox/KeyboxLoadPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/settings/keybox/KeyboxLoadPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/settings/keybox/KeyboxLoadPreferenceController$$ExternalSyntheticLambda0;->f$0:Lio/mesalabs/unica/settings/keybox/KeyboxLoadPreferenceController;

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

    iget-object p0, p0, Lio/mesalabs/unica/settings/keybox/KeyboxLoadPreferenceController$$ExternalSyntheticLambda0;->f$0:Lio/mesalabs/unica/settings/keybox/KeyboxLoadPreferenceController;

    iget-object v0, p0, Lio/mesalabs/unica/settings/keybox/KeyboxLoadPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/mesalabs/unica/settings/keybox/KeyboxUtils;->setKeyboxData(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, p0, Lio/mesalabs/unica/settings/keybox/KeyboxLoadPreferenceController;->mClearPreference:Landroidx/preference/SecPreference;

    if-eqz p0, :cond_0

    invoke-static {v0}, Lio/mesalabs/unica/settings/keybox/KeyboxUtils;->hasKeyboxData(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
