.class public final synthetic Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->lambda$toggle$3$com-samsung-android-settings-un1ca-IrisSettingsFragment(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
