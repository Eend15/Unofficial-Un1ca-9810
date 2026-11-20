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

.field static final STRINGS_PKG:Ljava/lang/String; = "com.samsung.android.irissettings"

.field static final TAG:Ljava/lang/String; = "UN1CA-IrisSettings"


# instance fields
.field private mBorrowedHandle:Z

.field private mContext:Landroid/content/Context;

.field private mEnrollAfterConfirm:Z

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

    .line 367
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_b

    const-string v2, "gk_pw_handle"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_c

    :cond_b
    move-wide v2, v0

    .line 368
    :goto_c
    cmp-long p1, v2, v0

    if-eqz p1, :cond_20

    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_17

    goto :goto_20

    .line 369
    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 370
    iput-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 371
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 372
    return-void

    .line 368
    :cond_20
    :goto_20
    return-void
.end method

.method private chooseLock()Z
    .registers 9

    .line 336
    const-string v0, "com.samsung.android.settings.biometrics.BiometricsChooseLockGeneric"

    const-string v1, "com.android.settings.password.ChooseLockGeneric"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    const/4 v3, 0x2

    if-ge v2, v3, :cond_60

    aget-object v3, v0, v2

    .line 337
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 341
    const-string v5, "request_gk_pw_handle"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string v5, "hide_insecure_options"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    const-string v5, "set_biometric_lock"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const-string v5, "un1ca_for_iris"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    const-string v5, "requested_min_complexity"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v5, "android.intent.extra.USER_ID"

    iget v7, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const/4 v5, 0x4

    :try_start_40
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    .line 349
    return v6

    .line 350
    :catchall_44
    move-exception v4

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UN1CA-IrisSettings"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 354
    :cond_60
    return v1
.end method

.method private confirmCredential()Z
    .registers 6

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    const-string v2, "getCredentialTypeForUser"

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->invokeInt(Ljava/lang/Object;Ljava/lang/String;II)I

    move-result v0

    .line 308
    if-ne v0, v3, :cond_12

    .line 311
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->chooseLock()Z

    move-result v0

    return v0

    .line 313
    :cond_12
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 314
    const-string v0, "com.android.settings.password.ConfirmLockPattern$InternalActivity"

    goto :goto_1a

    .line 315
    :cond_18
    const-string v0, "com.android.settings.password.ConfirmLockPassword$InternalActivity"

    .line 316
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

    .line 319
    const-string v2, "request_gk_pw_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    const-string v2, "return_credentials"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const-string v2, "force_verify"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    const-string v2, "foreground_only"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    const-string v2, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->pageTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    :try_start_59
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    .line 328
    return v1

    .line 329
    :catchall_5d
    move-exception v0

    .line 330
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "cannot confirm credential"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method private confirmRemove()V
    .registers 5

    .line 572
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_f

    .line 573
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "sec_intelligentscan_remove_intelligentscan_dialog_title"

    const-string v2, "Remove face and iris data?"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 575
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "iris_delete_popup_title"

    const-string v2, "Remove iris data?"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    :goto_19
    iget-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v1, :cond_28

    .line 577
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "sec_intelligentscan_remove_intelligentscan_dialog_body_for_feature"

    const-string v3, "Intelligent Scan features will be turned off."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 579
    :cond_28
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "iris_delete_popup_message_with_related_func"

    const-string v3, "Features that use irises will be turned off."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    :goto_32
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 583
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 584
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 585
    const-string v2, "common_remove"

    const-string v3, "Remove"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 587
    return-void
.end method

.method private enableIntelligentScanDefaults()V
    .registers 5

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 469
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 470
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "un1ca_iris_unlock"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 471
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "un1ca_intelligent_scan_screen_on"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_37

    .line 472
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
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

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 630
    if-eqz v0, :cond_b

    return-object v0

    .line 633
    :cond_b
    goto :goto_14

    .line 631
    :catchall_c
    move-exception v0

    .line 632
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "getEnrolledIrises"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    :goto_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private finish()V
    .registers 2

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 302
    :cond_9
    return-void
.end method

.method private hasEnrolledFace()Z
    .registers 6

    .line 639
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "face"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 640
    if-nez v1, :cond_c

    return v0

    .line 641
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

    .line 642
    :catchall_31
    move-exception v1

    .line 643
    return v0
.end method

.method private static invokeInt(Ljava/lang/Object;Ljava/lang/String;II)I
    .registers 6

    .line 699
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

    .line 700
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

    .line 701
    :catchall_25
    move-exception p0

    .line 702
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

    .line 703
    return p3
.end method

.method private isFaceUnlockEnabled()Z
    .registers 6

    .line 649
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

    .line 650
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

    .line 649
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_36

    .line 651
    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    move v0, v2

    :cond_35
    return v0

    .line 652
    :catchall_36
    move-exception v1

    .line 653
    return v0
.end method

.method private isSecure()Z
    .registers 4

    .line 359
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

    .line 360
    :catchall_29
    move-exception v0

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method private leaveIfNothingEnrolled()V
    .registers 2

    .line 500
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_18

    .line 501
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

    .line 502
    :cond_18
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 503
    :goto_20
    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 504
    :cond_29
    return-void
.end method

.method private static myUserId()I
    .registers 4

    .line 718
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

    .line 719
    :catchall_19
    move-exception v1

    .line 720
    return v0
.end method

.method private onFaceEnrollResult(Landroid/content/Intent;)V
    .registers 3

    .line 421
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->markIntelligentChooser(Z)V

    .line 422
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->adoptHandle(Landroid/content/Intent;)V

    .line 423
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result p1

    if-nez p1, :cond_11

    .line 424
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    .line 425
    return-void

    .line 427
    :cond_11
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 429
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    goto :goto_26

    .line 431
    :cond_23
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enableIntelligentScanDefaults()V

    .line 433
    :goto_26
    return-void
.end method

.method private onRemoved()V
    .registers 3

    .line 615
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    return-void
.end method

.method private pageTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 725
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_d

    .line 726
    const-string v0, "bio_intelligentscan_title"

    const-string v1, "Intelligent Scan"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    .line 727
    :cond_d
    invoke-static {p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 725
    :goto_11
    return-object p1
.end method

.method private refresh()V
    .registers 8

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_a

    goto/16 :goto_11c

    .line 265
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 266
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v2

    .line 267
    iget-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const-string v4, "un1ca_iris_stay_on_lockscreen"

    const-string v5, "un1ca_iris_unlock"

    const/4 v6, 0x0

    if-eqz v3, :cond_a1

    .line 268
    if-eqz v0, :cond_27

    if-eqz v2, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v6

    .line 269
    :goto_28
    if-nez v0, :cond_2f

    if-eqz v2, :cond_2d

    goto :goto_2f

    :cond_2d
    move v0, v6

    goto :goto_30

    :cond_2f
    :goto_2f
    move v0, v1

    .line 270
    :goto_30
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    .line 271
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    xor-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4f

    move v0, v1

    goto :goto_50

    :cond_4f
    move v0, v6

    .line 274
    :goto_50
    if-eqz v3, :cond_5c

    if-eqz v0, :cond_5c

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isFaceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_5c

    move v0, v1

    goto :goto_5d

    :cond_5c
    move v0, v6

    .line 275
    :goto_5d
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 276
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 277
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 278
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "un1ca_intelligent_scan_screen_on"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_7e

    move v3, v1

    goto :goto_7f

    :cond_7e
    move v3, v6

    :goto_7f
    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 279
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 280
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_97

    move v3, v1

    goto :goto_98

    :cond_97
    move v3, v6

    :goto_98
    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 281
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mPreview:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 282
    goto :goto_106

    .line 283
    :cond_a1
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    or-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    .line 284
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 286
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 287
    if-eqz v0, :cond_c2

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_c2

    move v2, v1

    goto :goto_c3

    :cond_c2
    move v2, v6

    .line 288
    :goto_c3
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "un1ca_iris_unlock_screen_on"

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_e4

    move v3, v1

    goto :goto_e5

    :cond_e4
    move v3, v6

    :goto_e5
    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_fd

    move v3, v1

    goto :goto_fe

    :cond_fd
    move v3, v6

    :goto_fe
    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mPreview:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 296
    :goto_106
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mPreview:Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "un1ca_iris_preview"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_117

    goto :goto_118

    :cond_117
    move v1, v6

    :goto_118
    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 297
    return-void

    .line 264
    :cond_11c
    :goto_11c
    return-void
.end method

.method private releaseHandle()V
    .registers 7

    .line 375
    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 376
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    if-nez v0, :cond_31

    .line 378
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

    .line 379
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2f

    goto :goto_30

    .line 380
    :catchall_2f
    move-exception v0

    :goto_30
    nop

    .line 382
    :cond_31
    iput-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 384
    return-void
.end method

.method private removeAll()V
    .registers 6

    .line 590
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_b

    .line 591
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 592
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->removeFaceTemplates()V

    .line 594
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    .line 595
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 596
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->onRemoved()V

    .line 597
    return-void

    .line 599
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 601
    :try_start_27
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    check-cast v1, Lcom/samsung/android/camera/iris/Iris;

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    new-instance v4, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_36

    .line 610
    goto :goto_3e

    .line 608
    :catchall_36
    move-exception v1

    .line 609
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "remove failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    :goto_3e
    goto :goto_1d

    .line 612
    :cond_3f
    return-void
.end method

.method private removeFaceTemplates()V
    .registers 12

    .line 668
    const-string v0, "android.hardware.face.FaceManager$RemovalCallback"

    const-string v1, "android.hardware.face.Face"

    const-string v2, "face"

    const/4 v3, 0x0

    :try_start_7
    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 669
    if-nez v4, :cond_10

    return-void

    .line 670
    :cond_10
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 671
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 672
    const-class v7, Ljava/lang/CharSequence;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8, v9}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string v7, ""

    .line 673
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
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

    .line 692
    goto :goto_c0

    .line 675
    :catchall_58
    move-exception v4

    .line 677
    :try_start_59
    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 678
    if-eqz v2, :cond_b7

    .line 679
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

    .line 680
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 681
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 682
    if-eqz v4, :cond_b7

    .line 683
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 684
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "remove"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v8, v0}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    .line 685
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v7, v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b6
    .catchall {:try_start_59 .. :try_end_b6} :catchall_b8

    .line 686
    goto :goto_8f

    .line 691
    :cond_b7
    goto :goto_c0

    .line 689
    :catchall_b8
    move-exception v0

    .line 690
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "removeFaceTemplates failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    :goto_c0
    return-void
.end method

.method private setFaceUnlockEnabled(Z)V
    .registers 7

    .line 659
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

    .line 660
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

    .line 663
    goto :goto_3d

    .line 661
    :catchall_35
    move-exception p1

    .line 662
    const-string v0, "UN1CA-IrisSettings"

    const-string v1, "setBiometricState failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    :goto_3d
    return-void
.end method

.method private static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 709
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

    .line 710
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    .line 713
    goto :goto_36

    .line 711
    :catchall_1d
    move-exception p1

    .line 712
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

    .line 714
    :goto_36
    return-void
.end method

.method private showEnrollError(I)Z
    .registers 6

    .line 480
    nop

    .line 481
    const-string v0, "iris_sensor_not_working_popup_title"

    const-string v1, "iris_failed_to_register"

    packed-switch p1, :pswitch_data_64

    .line 486
    :pswitch_8
    const/4 p1, 0x0

    return p1

    .line 483
    :pswitch_a
    const-string p1, "iris_proximity_restriction_popop_message"

    move-object v0, v1

    goto :goto_17

    .line 484
    :pswitch_e
    const-string p1, "iris_sensor_not_working_msg"

    goto :goto_17

    .line 485
    :pswitch_11
    const-string p1, "iris_hw_problem_msg"

    goto :goto_17

    .line 482
    :pswitch_14
    const-string p1, "iris_eye_safety_msg"

    move-object v0, v1

    .line 488
    :goto_17
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 489
    const-string v3, "Couldn\'t register irises"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 490
    const-string v2, ""

    invoke-static {v1, p1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 491
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

    .line 493
    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    .line 494
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 496
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

    .line 436
    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 437
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 438
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 439
    return-void

    .line 441
    :cond_f
    nop

    .line 443
    :try_start_10
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v2

    .line 444
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "verifyGatekeeperPasswordHandle"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v5

    .line 445
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 446
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

    .line 447
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

    .line 450
    goto :goto_65

    .line 448
    :catchall_5c
    move-exception v0

    .line 449
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "auth token"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 451
    :goto_65
    if-nez v0, :cond_70

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 454
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 456
    return-void

    .line 458
    :cond_70
    nop

    .line 459
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.server.iris"

    const-string v5, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 460
    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 461
    const-string v0, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    if-eqz p1, :cond_96

    const-string p1, "iris_enroll_retry"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 464
    :cond_96
    const/4 p1, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 465
    return-void
.end method

.method private startFaceEnroll()V
    .registers 7

    .line 405
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

    .line 406
    const-string v2, "previousStage"

    const-string v3, "lock_screen_face"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    const-string v2, "requested_min_complexity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    iget-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_34

    const-string v2, "gk_pw_handle"

    iget-wide v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 411
    :cond_34
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->markIntelligentChooser(Z)V

    .line 412
    :cond_3c
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    .line 417
    goto :goto_4f

    .line 413
    :catchall_41
    move-exception v1

    .line 414
    invoke-static {v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->markIntelligentChooser(Z)V

    .line 415
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "cannot launch face enrollment"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 418
    :goto_4f
    return-void
.end method

.method private startRequestedEnroll(Z)V
    .registers 3

    .line 389
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-nez v0, :cond_e

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startFaceEnroll()V

    goto :goto_11

    .line 392
    :cond_e
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 394
    :goto_11
    return-void
.end method

.method static text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 739
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

    .line 741
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_27

    .line 742
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 743
    :goto_27
    const-string v4, "string"

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 744
    if-eqz v2, :cond_35

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_34

    return-object p0

    .line 745
    :catchall_34
    move-exception v2

    :cond_35
    nop

    .line 739
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 747
    :cond_39
    return-object p2
.end method

.method static title(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 731
    const-string v0, "bio_iris_scanner_title"

    const-string v1, "Irises"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;
    .registers 9

    .line 238
    new-instance v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 239
    invoke-virtual {v0, p2}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setPersistent(Z)V

    .line 241
    invoke-virtual {v0, p4}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v0, p5}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 243
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

    .line 244
    new-instance p3, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 260
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$confirmRemove$8$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 585
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->removeAll()V

    return-void
.end method

.method synthetic lambda$onCreatePreferences$0$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 2

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmRemove()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$1$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 2

    .line 153
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$2$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/Context;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    .line 166
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 167
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "un1ca_iris_unlock"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    const/4 p3, 0x1

    if-eqz p2, :cond_29

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "un1ca_intelligent_scan_screen_on"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_29

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    :cond_29
    if-nez p2, :cond_3c

    .line 173
    nop

    .line 174
    const-string p2, "sec_intelligentscan_turn_off_toast_message_intelligentscan"

    const-string v0, "Turning off Intelligent Scan unlock will also turn off face and iris unlock."

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 173
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 178
    :cond_3c
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return p3
.end method

.method synthetic lambda$onCreatePreferences$3$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 5

    .line 215
    nop

    .line 216
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.server.iris"

    const-string v2, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 217
    const-string v0, "from_iris_settings"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 219
    return v1
.end method

.method synthetic lambda$onRemoved$9$com-samsung-android-settings-un1ca-IrisSettingsFragment()V
    .registers 4

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 617
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 618
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "un1ca_iris_unlock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 619
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    goto :goto_24

    .line 621
    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 623
    :goto_24
    return-void
.end method

.method synthetic lambda$showEnrollError$5$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 492
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    return-void
.end method

.method synthetic lambda$showEnrollError$6$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 493
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    return-void
.end method

.method synthetic lambda$showEnrollError$7$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;)V
    .registers 2

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    return-void
.end method

.method synthetic lambda$toggle$4$com-samsung-android-settings-un1ca-IrisSettingsFragment(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 245
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 246
    iget-object p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    const-string p3, "un1ca_iris_stay_on_lockscreen"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2c

    iget-boolean p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-nez p3, :cond_21

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isFaceUnlockEnabled()Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 249
    :cond_21
    iget-object p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "face_stay_on_lock_screen"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
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

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "un1ca_intelligent_scan_screen_on"

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_55

    .line 253
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    :cond_55
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    return p3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .line 507
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 508
    const-string v0, ")"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "UN1CA-IrisSettings"

    const/4 v5, 0x1

    if-ne p1, v5, :cond_4f

    .line 509
    const/4 p1, -0x1

    if-ne p2, p1, :cond_31

    if-eqz p3, :cond_31

    const-string p1, "gk_pw_handle"

    invoke-virtual {p3, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_1d

    goto :goto_31

    .line 514
    :cond_1d
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 515
    invoke-virtual {p3, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 516
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    if-eqz p1, :cond_118

    .line 517
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 518
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto/16 :goto_118

    .line 510
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

    .line 511
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 512
    return-void

    .line 520
    :cond_4f
    const/4 v6, 0x4

    if-ne p1, v6, :cond_95

    .line 521
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->adoptHandle(Landroid/content/Intent;)V

    .line 522
    iget-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_66

    .line 523
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    if-eqz p1, :cond_118

    .line 524
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 525
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto/16 :goto_118

    .line 527
    :cond_66
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 529
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    move-result p1

    if-nez p1, :cond_118

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    goto/16 :goto_118

    .line 531
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

    .line 532
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 533
    return-void

    .line 535
    :cond_95
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b2

    .line 536
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

    .line 537
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->onFaceEnrollResult(Landroid/content/Intent;)V

    goto :goto_118

    .line 538
    :cond_b2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_118

    .line 539
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

    .line 540
    const-string p1, "sys.un1ca.iris_boost"

    const-string p3, "0"

    invoke-static {p1, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :try_start_d2
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I
    :try_end_d7
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_d8

    .line 545
    goto :goto_de

    .line 543
    :catchall_d8
    move-exception p1

    .line 544
    const-string p3, "postEnroll"

    invoke-static {v4, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    :goto_de
    const/4 p1, -0x4

    if-ne p2, p1, :cond_f0

    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    if-nez p1, :cond_f0

    .line 549
    iput-boolean v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    .line 550
    const-string p1, "sensor error, retrying once with a new token"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 552
    return-void

    .line 554
    :cond_f0
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    .line 555
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10f

    .line 556
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz p1, :cond_104

    .line 557
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enableIntelligentScanDefaults()V

    goto :goto_10f

    .line 561
    :cond_104
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "un1ca_iris_unlock"

    invoke-static {p1, p3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 564
    :cond_10f
    :goto_10f
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->showEnrollError(I)Z

    move-result p1

    if-nez p1, :cond_118

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    .line 566
    :cond_118
    :goto_118
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 567
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 90
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

    .line 92
    :try_start_21
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 93
    const-string v3, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_46

    .line 97
    goto :goto_4e

    .line 95
    :catchall_46
    move-exception v3

    .line 96
    const-string v4, "UN1CA-IrisSettings"

    const-string v5, "iris framework unavailable"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :goto_4e
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_cc

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    if-nez v3, :cond_5b

    goto/16 :goto_cc

    .line 103
    :cond_5b
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->pageTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    if-eqz p1, :cond_6b

    return-void

    .line 106
    :cond_6b
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-static {p1, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->clearIfInsecure(Landroid/content/Context;I)I

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 110
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz p1, :cond_8e

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8c

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result p1

    if-nez p1, :cond_8a

    goto :goto_8c

    :cond_8a
    move p1, v2

    goto :goto_96

    :cond_8c
    :goto_8c
    move p1, v1

    goto :goto_96

    .line 112
    :cond_8e
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 113
    :goto_96
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_a1

    const-string v5, "gk_pw_handle"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    goto :goto_a2

    :cond_a1
    move-wide v5, v3

    .line 114
    :goto_a2
    cmp-long v0, v5, v3

    if-eqz v0, :cond_b0

    .line 115
    iput-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 116
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 117
    if-eqz p1, :cond_cb

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto :goto_cb

    .line 118
    :cond_b0
    if-eqz p1, :cond_c0

    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_c0

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startFaceEnroll()V

    goto :goto_cb

    .line 123
    :cond_c0
    iput-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    move-result p1

    if-nez p1, :cond_cb

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 126
    :cond_cb
    :goto_cb
    return-void

    .line 100
    :cond_cc
    :goto_cc
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 101
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 132
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 133
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 135
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 136
    const-string v2, "sec_biometrics_disclaimer_main_guide_intelligentscan"

    const-string v3, "Intelligent Scan improves accuracy and security by using both iris and face data."

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 141
    :cond_28
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 143
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_4a

    .line 145
    const-string v2, "sec_intelligentscan_remove_face_and_iris"

    const-string v3, "Remove face and iris data"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    .line 146
    :cond_4a
    const-string v2, "my_irises"

    const-string v3, "Remove iris data"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    :goto_52
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 149
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_7c

    .line 151
    const-string v2, "sec_intelligentscan_register_face_and_iris"

    const-string v3, "Register face and irises"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_84

    .line 152
    :cond_7c
    const-string v2, "register_irises"

    const-string v3, "Register irises"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    :goto_84
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 156
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 158
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const-string v9, "Stay on Lock screen"

    const-string v10, "sec_biometrics_common_option_title_stay_on_lock_screen"

    if-eqz v2, :cond_118

    .line 159
    new-instance v2, Landroidx/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    .line 160
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v3, "un1ca_iris_unlock"

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setPersistent(Z)V

    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v2, "sec_intelligentscan_unlock_title"

    const-string v3, "Intelligent Scan unlock"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v2, "sec_intelligentscan_unlock_summary"

    const-string v3, "Unlock your phone using combined face and iris scanning."

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 183
    nop

    .line 184
    const-string v1, "sec_intelligentscan_unlock_when_turns_on_title"

    const-string v2, "Screen-on Intelligent Scan"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    const-string v1, "sec_intelligentscan_unlock_when_turns_on_summary"

    const-string v2, "Unlock your phone with Intelligent Scan as soon as the screen turns on, without swiping first."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 183
    const-string v5, "un1ca_intelligent_scan_screen_on"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    .line 187
    nop

    .line 188
    invoke-static {p1, v10, v9}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    const-string v1, "sec_intelligentscan_stay_on_lock_screen_summary"

    const-string v2, "When you unlock with Intelligent Scan, stay on the Lock screen until you swipe."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 187
    const-string v5, "un1ca_iris_stay_on_lockscreen"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    goto :goto_163

    .line 192
    :cond_118
    nop

    .line 193
    const-string v1, "iris_unlock"

    const-string v2, "Iris unlock"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    const-string v1, "iris_unlock_summary"

    const-string v2, "Unlock your phone with your irises."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 192
    const-string v5, "un1ca_iris_unlock"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    .line 195
    nop

    .line 196
    const-string v1, "use_iris_first_lock"

    const-string v2, "Iris unlock when screen turns on"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    const-string v1, "use_iris_first_lock_summary"

    const-string v2, "Unlock your phone with your irises as soon as the screen turns on, without swiping first."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 195
    const-string v5, "un1ca_iris_unlock_screen_on"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    .line 199
    nop

    .line 200
    invoke-static {p1, v10, v9}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    const-string v1, "iris_stay_on_lockscreen_summary"

    const-string v2, "When you unlock with iris recognition, stay on the Lock screen until you swipe."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 199
    const-string v5, "un1ca_iris_stay_on_lockscreen"

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    .line 204
    :goto_163
    nop

    .line 205
    const-string v1, "un1ca_iris_preview_title"

    const-string v2, "Show camera preview"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 206
    const-string v1, "un1ca_iris_preview_summary"

    const-string v2, "Show the camera preview at the top of the screen while your irises are scanned."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 204
    const-string v5, "un1ca_iris_preview"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mPreview:Landroidx/preference/SwitchPreference;

    .line 210
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 212
    new-instance v1, Landroidx/preference/Preference;

    invoke-direct {v1, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 213
    const-string v2, "tips_for_iris"

    const-string v3, "Tips for using iris recognition"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    new-instance p1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 223
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 225
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 234
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 235
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 228
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 230
    return-void
.end method
