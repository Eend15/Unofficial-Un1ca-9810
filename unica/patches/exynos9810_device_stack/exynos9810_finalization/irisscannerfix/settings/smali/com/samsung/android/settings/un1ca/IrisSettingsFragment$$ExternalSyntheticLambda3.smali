.class public final synthetic Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->lambda$showEnrollError$6$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;)V

    return-void
.end method
