.class public final Lio/mesalabs/unica/settings/keybox/KeyboxPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "KeyboxPreferenceController.java"


# instance fields
.field public final synthetic this$0:Lio/mesalabs/unica/settings/keybox/KeyboxPreferenceController;


# direct methods
.method public constructor <init>(Lio/mesalabs/unica/settings/keybox/KeyboxPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lio/mesalabs/unica/settings/keybox/KeyboxPreferenceController$1;->this$0:Lio/mesalabs/unica/settings/keybox/KeyboxPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lio/mesalabs/unica/settings/keybox/KeyboxPreferenceController$1;->this$0:Lio/mesalabs/unica/settings/keybox/KeyboxPreferenceController;

    iget-object p1, p0, Lio/mesalabs/unica/settings/keybox/KeyboxPreferenceController;->mTogglePreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/settings/keybox/KeyboxPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
