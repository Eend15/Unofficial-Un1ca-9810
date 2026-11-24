.class public final Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IrisSettingsFragment.java"


# static fields
.field static final ARG_INTELLIGENT_SCAN:Ljava/lang/String; = "un1ca_intelligent_scan"

.field static final BIO_CHOOSE_LOCK:Ljava/lang/String; = "com.samsung.android.settings.biometrics.BiometricsChooseLockGeneric"

.field static final BOOST_PROP:Ljava/lang/String; = "sys.un1ca.iris_boost"

.field static final CHOOSE_LOCK:Ljava/lang/String; = "com.android.settings.password.ChooseLockGeneric"

.field static final CREDENTIAL_TYPE_NONE:I = -0x1

.field static final CREDENTIAL_TYPE_PATTERN:I = 0x1

.field static final ENROLL_EYE_SAFETY:I = -0x9

.field static final ENROLL_HW:I = -0x6

.field static final ENROLL_SENSOR:I = -0x4

.field static final ENROLL_TIMEOUT:I = -0x2

.field static final ENROLL_TOO_CLOSE:I = -0x3

.field static final EXTRA_GK_PW_HANDLE:Ljava/lang/String; = "gk_pw_handle"

.field static final FACE_LOCK_SETTINGS:Ljava/lang/String; = "com.samsung.android.settings.biometrics.face.FaceLockSettings"

.field static final FACE_STAGE:Ljava/lang/String; = "lock_screen_face"

.field static final IRIS_PKG:Ljava/lang/String; = "com.samsung.android.server.iris"

.field static final KEY_FACE_STAY:Ljava/lang/String; = "face_stay_on_lock_screen"

.field static final KEY_INTEL_SCREEN_ON:Ljava/lang/String; = "un1ca_intelligent_scan_screen_on"

.field static final KEY_PREVIEW:Ljava/lang/String; = "un1ca_iris_preview"

.field static final KEY_SCREEN_ON:Ljava/lang/String; = "un1ca_iris_unlock_screen_on"

.field static final KEY_STAY:Ljava/lang/String; = "un1ca_iris_stay_on_lockscreen"

.field static final KEY_UNLOCK:Ljava/lang/String; = "un1ca_iris_unlock"

.field static final REQUEST_CHOOSE_LOCK:I = 0x4

.field static final REQUEST_CONFIRM:I = 0x1

.field static final REQUEST_ENROLL:I = 0x2

.field static final REQUEST_FACE_ENROLL:I = 0x3

.field static final SEM_TYPE_FACE:I = 0x100

.field static final SETUP_BIO_CHOOSE_LOCK:Ljava/lang/String; = "com.samsung.android.settings.biometrics.SetupBiometricsChooseLockGeneric"

.field static final STRINGS_PKG:Ljava/lang/String; = "com.samsung.android.irissettings"

.field static final TAG:Ljava/lang/String; = "UN1CA-IrisSettings"


# instance fields
.field private mBorrowedHandle:Z

.field private mContext:Landroid/content/Context;

.field private mEnrollAfterConfirm:Z

.field private mFromSetupWizard:Z

.field private mGkHandle:J

.field private mHadIrises:Z

.field private mIntelligentScan:Z

.field private mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mLockUtils:Ljava/lang/Object;

.field private mManage:Landroidx/preference/PreferenceCategory;

.field private mPreview:Landroidx/preference/SwitchPreference;

.field private mRegister:Landroidx/preference/Preference;

.field private mRemove:Landroidx/preference/Preference;

.field private mRetriedStaleToken:Z

.field private mScreenOn:Landroidx/preference/SwitchPreference;

.field private mStay:Landroidx/preference/SwitchPreference;

.field private mUnlock:Landroidx/preference/SwitchPreference;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$Nuc6B18G-FkKeQI_Qugeadn0VSA(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRemoved(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->onRemoved()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private adoptHandle(Landroid/content/Intent;)V
    .registers 6

    .line 392
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_b

    const-string v2, "gk_pw_handle"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_c

    :cond_b
    move-wide v2, v0

    .line 393
    :goto_c
    cmp-long p1, v2, v0

    if-eqz p1, :cond_20

    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_17

    goto :goto_20

    .line 394
    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 395
    iput-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 396
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 397
    return-void

    .line 393
    :cond_20
    :goto_20
    return-void
.end method

.method private chooseLock()Z
    .registers 11

    .line 355
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mFromSetupWizard:Z

    const-string v1, "com.samsung.android.settings.biometrics.SetupBiometricsChooseLockGeneric"

    const-string v2, "com.android.settings.password.ChooseLockGeneric"

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsChooseLockGeneric"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_17

    .line 356
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v5

    aput-object v3, v0, v6

    aput-object v2, v0, v4

    goto :goto_1d

    .line 357
    :cond_17
    new-array v0, v4, [Ljava/lang/String;

    aput-object v3, v0, v5

    aput-object v2, v0, v6

    .line 358
    :goto_1d
    array-length v2, v0

    move v3, v5

    :goto_1f
    if-ge v3, v2, :cond_7e

    aget-object v4, v0, v3

    .line 359
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 363
    const-string v8, "request_gk_pw_handle"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    const-string v8, "hide_insecure_options"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    const-string v8, "set_biometric_lock"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    const-string v8, "un1ca_for_iris"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    const-string v8, "for_biometrics"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    :cond_51
    const-string v8, "requested_min_complexity"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string v8, "android.intent.extra.USER_ID"

    iget v9, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const/4 v8, 0x4

    :try_start_5e
    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    .line 374
    return v6

    .line 375
    :catchall_62
    move-exception v7

    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "UN1CA-IrisSettings"

    invoke-static {v8, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 379
    :cond_7e
    return v5
.end method

.method private confirmCredential()Z
    .registers 6

    .line 324
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    const-string v2, "getCredentialTypeForUser"

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->invokeInt(Ljava/lang/Object;Ljava/lang/String;II)I

    move-result v0

    .line 325
    if-ne v0, v3, :cond_12

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->chooseLock()Z

    move-result v0

    return v0

    .line 330
    :cond_12
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 331
    const-string v0, "com.android.settings.password.ConfirmLockPattern$InternalActivity"

    goto :goto_1a

    .line 332
    :cond_18
    const-string v0, "com.android.settings.password.ConfirmLockPassword$InternalActivity"

    .line 333
    :goto_1a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 336
    const-string v2, "request_gk_pw_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    const-string v2, "return_credentials"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const-string v2, "force_verify"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string v2, "foreground_only"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    const-string v2, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->pageTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    :try_start_59
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    .line 345
    return v1

    .line 346
    :catchall_5d
    move-exception v0

    .line 347
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "cannot confirm credential"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method private confirmRemove()V
    .registers 5

    .line 603
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_f

    .line 604
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "sec_intelligentscan_remove_intelligentscan_dialog_title"

    const-string v2, "Remove face and iris data?"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 606
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "iris_delete_popup_title"

    const-string v2, "Remove iris data?"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    :goto_19
    iget-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v1, :cond_28

    .line 608
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "sec_intelligentscan_remove_intelligentscan_dialog_body_for_feature"

    const-string v3, "Intelligent Scan features will be turned off."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 610
    :cond_28
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "iris_delete_popup_message_with_related_func"

    const-string v3, "Features that use irises will be turned off."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    :goto_32
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 613
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 614
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 615
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 616
    const-string v2, "common_remove"

    const-string v3, "Remove"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 618
    return-void
.end method

.method private enableIntelligentScanDefaults()V
    .registers 5

    .line 493
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 494
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 495
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "un1ca_iris_unlock"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "un1ca_intelligent_scan_screen_on"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_37

    .line 497
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 500
    :cond_37
    return-void
.end method

.method private enrolled()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 661
    if-eqz v0, :cond_b

    return-object v0

    .line 664
    :cond_b
    goto :goto_14

    .line 662
    :catchall_c
    move-exception v0

    .line 663
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "getEnrolledIrises"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    :goto_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private finish()V
    .registers 3

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_10

    .line 308
    iget-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mFromSetupWizard:Z

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->reportSetupResult()V

    .line 309
    :cond_d
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 311
    :cond_10
    return-void
.end method

.method private hasEnrolledFace()Z
    .registers 6

    .line 670
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "face"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 671
    if-nez v1, :cond_c

    return v0

    .line 672
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "hasEnrolledTemplates"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_31

    return v0

    .line 673
    :catchall_31
    move-exception v1

    .line 674
    return v0
.end method

.method private static invokeInt(Ljava/lang/Object;Ljava/lang/String;II)I
    .registers 6

    .line 730
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 731
    if-nez p0, :cond_1d

    :goto_1c
    goto :goto_24

    :cond_1d
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p3
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_25

    goto :goto_1c

    :goto_24
    return p3

    .line 732
    :catchall_25
    move-exception p0

    .line 733
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UN1CA-IrisSettings"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    return p3
.end method

.method private isFaceUnlockEnabled()Z
    .registers 6

    .line 680
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBiometricState"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    .line 681
    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 680
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_36

    .line 682
    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    move v0, v2

    :cond_35
    return v0

    .line 683
    :catchall_36
    move-exception v1

    .line 684
    return v0
.end method

.method private isSecure()Z
    .registers 4

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isSecure"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return v0

    .line 385
    :catchall_29
    move-exception v0

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method private leaveIfNothingEnrolled()V
    .registers 2

    .line 525
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_18

    .line 526
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_20

    :cond_16
    const/4 v0, 0x0

    goto :goto_20

    .line 527
    :cond_18
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 528
    :goto_20
    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 529
    :cond_29
    return-void
.end method

.method private static myUserId()I
    .registers 4

    .line 749
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/UserHandle;

    const-string v2, "myUserId"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    return v0

    .line 750
    :catchall_19
    move-exception v1

    .line 751
    return v0
.end method

.method private onFaceEnrollResult(Landroid/content/Intent;)V
    .registers 3

    .line 446
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->markIntelligentChooser(Z)V

    .line 447
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->adoptHandle(Landroid/content/Intent;)V

    .line 448
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result p1

    if-nez p1, :cond_11

    .line 449
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    .line 450
    return-void

    .line 452
    :cond_11
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 454
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    goto :goto_26

    .line 456
    :cond_23
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enableIntelligentScanDefaults()V

    .line 458
    :goto_26
    return-void
.end method

.method private onRemoved()V
    .registers 3

    .line 646
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 655
    return-void
.end method

.method private pageTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 756
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_d

    .line 757
    const-string v0, "bio_intelligentscan_title"

    const-string v1, "Intelligent Scan"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    .line 758
    :cond_d
    invoke-static {p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 756
    :goto_11
    return-object p1
.end method

.method private refresh()V
    .registers 8

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_a

    goto/16 :goto_123

    .line 270
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mFromSetupWizard:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->reportSetupResult()V

    .line 271
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 272
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v2

    .line 273
    iget-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const-string v4, "un1ca_iris_stay_on_lockscreen"

    const-string v5, "un1ca_iris_unlock"

    const/4 v6, 0x0

    if-eqz v3, :cond_a8

    .line 274
    if-eqz v0, :cond_2e

    if-eqz v2, :cond_2e

    move v3, v1

    goto :goto_2f

    :cond_2e
    move v3, v6

    .line 275
    :goto_2f
    if-nez v0, :cond_36

    if-eqz v2, :cond_34

    goto :goto_36

    :cond_34
    move v0, v6

    goto :goto_37

    :cond_36
    :goto_36
    move v0, v1

    .line 276
    :goto_37
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    .line 277
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    xor-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_56

    move v0, v1

    goto :goto_57

    :cond_56
    move v0, v6

    .line 280
    :goto_57
    if-eqz v3, :cond_63

    if-eqz v0, :cond_63

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isFaceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    move v0, v1

    goto :goto_64

    :cond_63
    move v0, v6

    .line 281
    :goto_64
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 282
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 283
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 284
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "un1ca_intelligent_scan_screen_on"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_85

    move v3, v1

    goto :goto_86

    :cond_85
    move v3, v6

    :goto_86
    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 285
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 286
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_9e

    move v3, v1

    goto :goto_9f

    :cond_9e
    move v3, v6

    :goto_9f
    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 287
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mPreview:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 288
    goto :goto_10d

    .line 289
    :cond_a8
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    or-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    .line 290
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 292
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 293
    if-eqz v0, :cond_c9

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_c9

    move v2, v1

    goto :goto_ca

    :cond_c9
    move v2, v6

    .line 294
    :goto_ca
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "un1ca_iris_unlock_screen_on"

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_eb

    move v3, v1

    goto :goto_ec

    :cond_eb
    move v3, v6

    :goto_ec
    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_104

    move v3, v1

    goto :goto_105

    :cond_104
    move v3, v6

    :goto_105
    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mPreview:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 302
    :goto_10d
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mPreview:Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "un1ca_iris_preview"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_11e

    goto :goto_11f

    :cond_11e
    move v1, v6

    :goto_11f
    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 303
    return-void

    .line 268
    :cond_123
    :goto_123
    return-void
.end method

.method private releaseHandle()V
    .registers 7

    .line 400
    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 401
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    if-nez v0, :cond_31

    .line 403
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeGatekeeperPasswordHandle"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 404
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2f

    goto :goto_30

    .line 405
    :catchall_2f
    move-exception v0

    :goto_30
    nop

    .line 407
    :cond_31
    iput-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 409
    return-void
.end method

.method private removeAll()V
    .registers 6

    .line 621
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_b

    .line 622
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 623
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->removeFaceTemplates()V

    .line 625
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    .line 626
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 627
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->onRemoved()V

    .line 628
    return-void

    .line 630
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 632
    :try_start_27
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    check-cast v1, Lcom/samsung/android/camera/iris/Iris;

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    new-instance v4, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_36

    .line 641
    goto :goto_3e

    .line 639
    :catchall_36
    move-exception v1

    .line 640
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "remove failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    :goto_3e
    goto :goto_1d

    .line 643
    :cond_3f
    return-void
.end method

.method private removeFaceTemplates()V
    .registers 12

    .line 699
    const-string v0, "android.hardware.face.FaceManager$RemovalCallback"

    const-string v1, "android.hardware.face.Face"

    const-string v2, "face"

    const/4 v3, 0x0

    :try_start_7
    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 700
    if-nez v4, :cond_10

    return-void

    .line 701
    :cond_10
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 702
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 703
    const-class v7, Ljava/lang/CharSequence;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8, v9}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string v7, ""

    .line 704
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "removeAll"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v8, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_58

    .line 723
    goto :goto_c0

    .line 706
    :catchall_58
    move-exception v4

    .line 708
    :try_start_59
    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 709
    if-eqz v2, :cond_b7

    .line 710
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getEnrolledFaces"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 711
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 712
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 713
    if-eqz v4, :cond_b7

    .line 714
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 715
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "remove"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v8, v0}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    .line 716
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v7, v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b6
    .catchall {:try_start_59 .. :try_end_b6} :catchall_b8

    .line 717
    goto :goto_8f

    .line 722
    :cond_b7
    goto :goto_c0

    .line 720
    :catchall_b8
    move-exception v0

    .line 721
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "removeFaceTemplates failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    :goto_c0
    return-void
.end method

.method private reportSetupResult()V
    .registers 3

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_1a

    .line 317
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    const/4 v1, -0x1

    :goto_17
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 319
    :cond_1a
    return-void
.end method

.method private setFaceUnlockEnabled(Z)V
    .registers 7

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setBiometricState"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    .line 691
    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    .line 694
    goto :goto_3d

    .line 692
    :catchall_35
    move-exception p1

    .line 693
    const-string v0, "UN1CA-IrisSettings"

    const-string v1, "setBiometricState failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    :goto_3d
    return-void
.end method

.method private static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 740
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "set"

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 741
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    .line 744
    goto :goto_36

    .line 742
    :catchall_1d
    move-exception p1

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UN1CA-IrisSettings"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    :goto_36
    return-void
.end method

.method private showEnrollError(I)Z
    .registers 6

    .line 505
    nop

    .line 506
    const-string v0, "iris_sensor_not_working_popup_title"

    const-string v1, "iris_failed_to_register"

    packed-switch p1, :pswitch_data_64

    .line 511
    :pswitch_8
    const/4 p1, 0x0

    return p1

    .line 508
    :pswitch_a
    const-string p1, "iris_proximity_restriction_popop_message"

    move-object v0, v1

    goto :goto_17

    .line 509
    :pswitch_e
    const-string p1, "iris_sensor_not_working_msg"

    goto :goto_17

    .line 510
    :pswitch_11
    const-string p1, "iris_hw_problem_msg"

    goto :goto_17

    .line 507
    :pswitch_14
    const-string p1, "iris_eye_safety_msg"

    move-object v0, v1

    .line 513
    :goto_17
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 514
    const-string v3, "Couldn\'t register irises"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 515
    const-string v2, ""

    invoke-static {v1, p1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 516
    const-string v1, "lockpattern_retry_button_text"

    const-string v2, "Retry"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    .line 518
    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    .line 519
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 521
    const/4 p1, 0x1

    return p1

    :pswitch_data_64
    .packed-switch -0x9
        :pswitch_14
        :pswitch_8
        :pswitch_8
        :pswitch_11
        :pswitch_8
        :pswitch_e
        :pswitch_a
        :pswitch_14
    .end packed-switch
.end method

.method private startEnroll(Z)V
    .registers 10

    .line 461
    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 462
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 463
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 464
    return-void

    .line 466
    :cond_f
    nop

    .line 468
    :try_start_10
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v2

    .line 469
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "verifyGatekeeperPasswordHandle"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v5

    .line 470
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 471
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getGatekeeperHAT"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_5b
    .catchall {:try_start_10 .. :try_end_5b} :catchall_5c

    .line 475
    goto :goto_65

    .line 473
    :catchall_5c
    move-exception v0

    .line 474
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "auth token"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 476
    :goto_65
    if-nez v0, :cond_70

    .line 478
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 479
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 480
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 481
    return-void

    .line 483
    :cond_70
    nop

    .line 484
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.server.iris"

    const-string v5, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 485
    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 486
    const-string v0, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    if-eqz p1, :cond_96

    const-string p1, "iris_enroll_retry"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    :cond_96
    const/4 p1, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 490
    return-void
.end method

.method private startFaceEnroll()V
    .registers 7

    .line 430
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.face.FaceLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 431
    const-string v2, "previousStage"

    const-string v3, "lock_screen_face"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v2, "requested_min_complexity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    iget-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_34

    const-string v2, "gk_pw_handle"

    iget-wide v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 436
    :cond_34
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->markIntelligentChooser(Z)V

    .line 437
    :cond_3c
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    .line 442
    goto :goto_4f

    .line 438
    :catchall_41
    move-exception v1

    .line 439
    invoke-static {v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->markIntelligentChooser(Z)V

    .line 440
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "cannot launch face enrollment"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 443
    :goto_4f
    return-void
.end method

.method private startRequestedEnroll(Z)V
    .registers 3

    .line 414
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-nez v0, :cond_e

    .line 415
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startFaceEnroll()V

    goto :goto_11

    .line 417
    :cond_e
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 419
    :goto_11
    return-void
.end method

.method static text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 770
    const-string v0, "com.samsung.android.irissettings"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x2

    if-ge v1, v2, :cond_39

    aget-object v2, v0, v1

    .line 772
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_27

    .line 773
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 774
    :goto_27
    const-string v4, "string"

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 775
    if-eqz v2, :cond_35

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_34

    return-object p0

    .line 776
    :catchall_34
    move-exception v2

    :cond_35
    nop

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 778
    :cond_39
    return-object p2
.end method

.method static title(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 762
    const-string v0, "bio_iris_scanner_title"

    const-string v1, "Irises"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;
    .registers 9

    .line 242
    new-instance v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    invoke-virtual {v0, p2}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setPersistent(Z)V

    .line 245
    invoke-virtual {v0, p4}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v0, p5}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    iget-object p4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-static {p4, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_23

    move v1, p4

    :cond_23
    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 248
    new-instance p3, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 264
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$confirmRemove$8$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 616
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->removeAll()V

    return-void
.end method

.method synthetic lambda$onCreatePreferences$0$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 2

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmRemove()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$1$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 2

    .line 157
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$2$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/Context;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    .line 170
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 171
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "un1ca_iris_unlock"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    const/4 p3, 0x1

    if-eqz p2, :cond_29

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "un1ca_intelligent_scan_screen_on"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_29

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    :cond_29
    if-nez p2, :cond_3c

    .line 177
    nop

    .line 178
    const-string p2, "sec_intelligentscan_turn_off_toast_message_intelligentscan"

    const-string v0, "Turning off Intelligent Scan unlock will also turn off face and iris unlock."

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 177
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 182
    :cond_3c
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return p3
.end method

.method synthetic lambda$onCreatePreferences$3$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 5

    .line 219
    nop

    .line 220
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.server.iris"

    const-string v2, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 221
    const-string v0, "from_iris_settings"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 223
    return v1
.end method

.method synthetic lambda$onRemoved$9$com-samsung-android-settings-un1ca-IrisSettingsFragment()V
    .registers 4

    .line 647
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 648
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 649
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "un1ca_iris_unlock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    goto :goto_24

    .line 652
    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 654
    :goto_24
    return-void
.end method

.method synthetic lambda$showEnrollError$5$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 517
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    return-void
.end method

.method synthetic lambda$showEnrollError$6$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 518
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    return-void
.end method

.method synthetic lambda$showEnrollError$7$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;)V
    .registers 2

    .line 519
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    return-void
.end method

.method synthetic lambda$toggle$4$com-samsung-android-settings-un1ca-IrisSettingsFragment(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 249
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 250
    iget-object p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    const-string p3, "un1ca_iris_stay_on_lockscreen"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2c

    iget-boolean p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-nez p3, :cond_21

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isFaceUnlockEnabled()Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 253
    :cond_21
    iget-object p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "face_stay_on_lock_screen"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    :cond_2c
    const-string p3, "un1ca_iris_unlock"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_55

    if-ne p2, p3, :cond_55

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isFaceUnlockEnabled()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "un1ca_intelligent_scan_screen_on"

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_55

    .line 257
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    :cond_55
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return p3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .line 532
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 533
    const-string v0, ")"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "UN1CA-IrisSettings"

    const/4 v5, 0x1

    if-ne p1, v5, :cond_4f

    .line 534
    const/4 p1, -0x1

    if-ne p2, p1, :cond_31

    if-eqz p3, :cond_31

    const-string p1, "gk_pw_handle"

    invoke-virtual {p3, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_1d

    goto :goto_31

    .line 539
    :cond_1d
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 540
    invoke-virtual {p3, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 541
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    if-eqz p1, :cond_123

    .line 542
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 543
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto/16 :goto_123

    .line 535
    :cond_31
    :goto_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "credential not confirmed ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 537
    return-void

    .line 545
    :cond_4f
    const/4 v6, 0x4

    if-ne p1, v6, :cond_95

    .line 546
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->adoptHandle(Landroid/content/Intent;)V

    .line 547
    iget-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_66

    .line 548
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    if-eqz p1, :cond_123

    .line 549
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 550
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto/16 :goto_123

    .line 552
    :cond_66
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 554
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    move-result p1

    if-nez p1, :cond_123

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    goto/16 :goto_123

    .line 556
    :cond_77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no screen lock set ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 558
    return-void

    .line 560
    :cond_95
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b2

    .line 561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "face enroll result "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->onFaceEnrollResult(Landroid/content/Intent;)V

    goto :goto_123

    .line 563
    :cond_b2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_123

    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enroll result "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string p1, "sys.un1ca.iris_boost"

    const-string p3, "0"

    invoke-static {p1, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :try_start_d2
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I
    :try_end_d7
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_d8

    .line 570
    goto :goto_de

    .line 568
    :catchall_d8
    move-exception p1

    .line 569
    const-string p3, "postEnroll"

    invoke-static {v4, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    :goto_de
    const/4 p1, -0x4

    if-ne p2, p1, :cond_f0

    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    if-nez p1, :cond_f0

    .line 574
    iput-boolean v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    .line 575
    const-string p1, "sensor error, retrying once with a new token"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 577
    return-void

    .line 579
    :cond_f0
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    .line 580
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11a

    .line 581
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz p1, :cond_104

    .line 582
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enableIntelligentScanDefaults()V

    goto :goto_10f

    .line 586
    :cond_104
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "un1ca_iris_unlock"

    invoke-static {p1, p3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 588
    :goto_10f
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mFromSetupWizard:Z

    if-eqz p1, :cond_11a

    .line 590
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->reportSetupResult()V

    .line 591
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 592
    return-void

    .line 595
    :cond_11a
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->showEnrollError(I)Z

    move-result p1

    if-nez p1, :cond_123

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    .line 597
    :cond_123
    :goto_123
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 598
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    const-string v3, "un1ca_intelligent_scan"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v2

    :goto_1f
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    .line 94
    if-eqz v0, :cond_2d

    const-string v3, "un1ca_from_setup_wizard"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v3, v1

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mFromSetupWizard:Z

    .line 96
    :try_start_30
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 97
    const-string v3, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_55

    .line 101
    goto :goto_5d

    .line 99
    :catchall_55
    move-exception v3

    .line 100
    const-string v4, "UN1CA-IrisSettings"

    const-string v5, "iris framework unavailable"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :goto_5d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_db

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    if-nez v3, :cond_6a

    goto/16 :goto_db

    .line 107
    :cond_6a
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->pageTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    if-eqz p1, :cond_7a

    return-void

    .line 110
    :cond_7a
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-static {p1, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->clearIfInsecure(Landroid/content/Context;I)I

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 114
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz p1, :cond_9d

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9b

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result p1

    if-nez p1, :cond_99

    goto :goto_9b

    :cond_99
    move p1, v2

    goto :goto_a5

    :cond_9b
    :goto_9b
    move p1, v1

    goto :goto_a5

    .line 116
    :cond_9d
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 117
    :goto_a5
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_b0

    const-string v5, "gk_pw_handle"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    goto :goto_b1

    :cond_b0
    move-wide v5, v3

    .line 118
    :goto_b1
    cmp-long v0, v5, v3

    if-eqz v0, :cond_bf

    .line 119
    iput-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 120
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 121
    if-eqz p1, :cond_da

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto :goto_da

    .line 122
    :cond_bf
    if-eqz p1, :cond_cf

    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_cf

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-nez v0, :cond_cf

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startFaceEnroll()V

    goto :goto_da

    .line 127
    :cond_cf
    iput-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    move-result p1

    if-nez p1, :cond_da

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 130
    :cond_da
    :goto_da
    return-void

    .line 104
    :cond_db
    :goto_db
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 105
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14

    .line 133
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 136
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 137
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 139
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 140
    const-string v2, "sec_biometrics_disclaimer_main_guide_intelligentscan"

    const-string v3, "Intelligent Scan improves accuracy and security by using both iris and face data."

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 145
    :cond_28
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 147
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_4a

    .line 149
    const-string v2, "sec_intelligentscan_remove_face_and_iris"

    const-string v3, "Remove face and iris data"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    .line 150
    :cond_4a
    const-string v2, "my_irises"

    const-string v3, "Remove iris data"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    :goto_52
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 153
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_7c

    .line 155
    const-string v2, "sec_intelligentscan_register_face_and_iris"

    const-string v3, "Register face and irises"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_84

    .line 156
    :cond_7c
    const-string v2, "register_irises"

    const-string v3, "Register irises"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    :goto_84
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 160
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 162
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const-string v9, "Stay on Lock screen"

    const-string v10, "sec_biometrics_common_option_title_stay_on_lock_screen"

    if-eqz v2, :cond_118

    .line 163
    new-instance v2, Landroidx/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    .line 164
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v3, "un1ca_iris_unlock"

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setPersistent(Z)V

    .line 166
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v2, "sec_intelligentscan_unlock_title"

    const-string v3, "Intelligent Scan unlock"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v2, "sec_intelligentscan_unlock_summary"

    const-string v3, "Unlock your phone using combined face and iris scanning."

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 187
    nop

    .line 188
    const-string v1, "sec_intelligentscan_unlock_when_turns_on_title"

    const-string v2, "Screen-on Intelligent Scan"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    const-string v1, "sec_intelligentscan_unlock_when_turns_on_summary"

    const-string v2, "Unlock your phone with Intelligent Scan as soon as the screen turns on, without swiping first."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 187
    const-string v5, "un1ca_intelligent_scan_screen_on"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    .line 191
    nop

    .line 192
    invoke-static {p1, v10, v9}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    const-string v1, "sec_intelligentscan_stay_on_lock_screen_summary"

    const-string v2, "When you unlock with Intelligent Scan, stay on the Lock screen until you swipe."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 191
    const-string v5, "un1ca_iris_stay_on_lockscreen"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    goto :goto_163

    .line 196
    :cond_118
    nop

    .line 197
    const-string v1, "iris_unlock"

    const-string v2, "Iris unlock"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 198
    const-string v1, "iris_unlock_summary"

    const-string v2, "Unlock your phone with your irises."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 196
    const-string v5, "un1ca_iris_unlock"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    .line 199
    nop

    .line 200
    const-string v1, "use_iris_first_lock"

    const-string v2, "Iris unlock when screen turns on"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    const-string v1, "use_iris_first_lock_summary"

    const-string v2, "Unlock your phone with your irises as soon as the screen turns on, without swiping first."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 199
    const-string v5, "un1ca_iris_unlock_screen_on"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    .line 203
    nop

    .line 204
    invoke-static {p1, v10, v9}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    const-string v1, "iris_stay_on_lockscreen_summary"

    const-string v2, "When you unlock with iris recognition, stay on the Lock screen until you swipe."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 203
    const-string v5, "un1ca_iris_stay_on_lockscreen"

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    .line 208
    :goto_163
    nop

    .line 209
    const-string v1, "un1ca_iris_preview_title"

    const-string v2, "Show camera preview"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 210
    const-string v1, "un1ca_iris_preview_summary"

    const-string v2, "Show the camera preview at the top of the screen while your irises are scanned."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 208
    const-string v5, "un1ca_iris_preview"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mPreview:Landroidx/preference/SwitchPreference;

    .line 214
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 216
    new-instance v1, Landroidx/preference/Preference;

    invoke-direct {v1, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 217
    const-string v2, "tips_for_iris"

    const-string v3, "Tips for using iris recognition"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    new-instance p1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 225
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 227
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 229
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 238
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 239
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 232
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 234
    return-void
.end method
