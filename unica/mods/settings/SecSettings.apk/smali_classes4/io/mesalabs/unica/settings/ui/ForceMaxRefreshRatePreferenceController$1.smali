.class public final Lio/mesalabs/unica/settings/ui/ForceMaxRefreshRatePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ForceMaxRefreshRatePreferenceController.java"


# instance fields
.field public final synthetic this$0:Lio/mesalabs/unica/settings/ui/ForceMaxRefreshRatePreferenceController;


# direct methods
.method public constructor <init>(Lio/mesalabs/unica/settings/ui/ForceMaxRefreshRatePreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lio/mesalabs/unica/settings/ui/ForceMaxRefreshRatePreferenceController$1;->this$0:Lio/mesalabs/unica/settings/ui/ForceMaxRefreshRatePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lio/mesalabs/unica/settings/ui/ForceMaxRefreshRatePreferenceController$1;->this$0:Lio/mesalabs/unica/settings/ui/ForceMaxRefreshRatePreferenceController;

    iget-object p1, p0, Lio/mesalabs/unica/settings/ui/ForceMaxRefreshRatePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/settings/ui/ForceMaxRefreshRatePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
