.class public final synthetic Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->lambda$onCreatePreferences$0$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
