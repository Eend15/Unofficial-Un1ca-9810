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

    .line 357
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_b

    const-string v2, "gk_pw_handle"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_c

    :cond_b
    move-wide v2, v0

    .line 358
    :goto_c
    cmp-long p1, v2, v0

    if-eqz p1, :cond_20

    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_17

    goto :goto_20

    .line 359
    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 360
    iput-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 361
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 362
    return-void

    .line 358
    :cond_20
    :goto_20
    return-void
.end method

.method private chooseLock()Z
    .registers 9

    .line 326
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

    .line 327
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 331
    const-string v5, "request_gk_pw_handle"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    const-string v5, "hide_insecure_options"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    const-string v5, "set_biometric_lock"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    const-string v5, "un1ca_for_iris"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    const-string v5, "requested_min_complexity"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string v5, "android.intent.extra.USER_ID"

    iget v7, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const/4 v5, 0x4

    :try_start_40
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    .line 339
    return v6

    .line 340
    :catchall_44
    move-exception v4

    .line 341
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

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 344
    :cond_60
    return v1
.end method

.method private confirmCredential()Z
    .registers 6

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    const-string v2, "getCredentialTypeForUser"

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->invokeInt(Ljava/lang/Object;Ljava/lang/String;II)I

    move-result v0

    .line 298
    if-ne v0, v3, :cond_12

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->chooseLock()Z

    move-result v0

    return v0

    .line 303
    :cond_12
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 304
    const-string v0, "com.android.settings.password.ConfirmLockPattern$InternalActivity"

    goto :goto_1a

    .line 305
    :cond_18
    const-string v0, "com.android.settings.password.ConfirmLockPassword$InternalActivity"

    .line 306
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

    .line 309
    const-string v2, "request_gk_pw_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    const-string v2, "return_credentials"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const-string v2, "force_verify"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    const-string v2, "foreground_only"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const-string v2, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 314
    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->pageTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    :try_start_59
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    .line 318
    return v1

    .line 319
    :catchall_5d
    move-exception v0

    .line 320
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "cannot confirm credential"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method private confirmRemove()V
    .registers 5

    .line 562
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_f

    .line 563
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "sec_intelligentscan_remove_intelligentscan_dialog_title"

    const-string v2, "Remove face and iris data?"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 565
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "iris_delete_popup_title"

    const-string v2, "Remove iris data?"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_19
    iget-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v1, :cond_28

    .line 567
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "sec_intelligentscan_remove_intelligentscan_dialog_body_for_feature"

    const-string v3, "Intelligent Scan features will be turned off."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 569
    :cond_28
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "iris_delete_popup_message_with_related_func"

    const-string v3, "Features that use irises will be turned off."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 571
    :goto_32
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 572
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 573
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 574
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 575
    const-string v2, "common_remove"

    const-string v3, "Remove"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 577
    return-void
.end method

.method private enableIntelligentScanDefaults()V
    .registers 5

    .line 458
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 460
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "un1ca_iris_unlock"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "un1ca_intelligent_scan_screen_on"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_37

    .line 462
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 465
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

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 620
    if-eqz v0, :cond_b

    return-object v0

    .line 623
    :cond_b
    goto :goto_14

    .line 621
    :catchall_c
    move-exception v0

    .line 622
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "getEnrolledIrises"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    :goto_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private finish()V
    .registers 2

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 292
    :cond_9
    return-void
.end method

.method private hasEnrolledFace()Z
    .registers 6

    .line 629
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "face"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 630
    if-nez v1, :cond_c

    return v0

    .line 631
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

    .line 632
    :catchall_31
    move-exception v1

    .line 633
    return v0
.end method

.method private static invokeInt(Ljava/lang/Object;Ljava/lang/String;II)I
    .registers 6

    .line 689
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

    .line 690
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

    .line 691
    :catchall_25
    move-exception p0

    .line 692
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

    .line 693
    return p3
.end method

.method private isFaceUnlockEnabled()Z
    .registers 6

    .line 639
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

    .line 640
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

    .line 639
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_36

    .line 641
    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    move v0, v2

    :cond_35
    return v0

    .line 642
    :catchall_36
    move-exception v1

    .line 643
    return v0
.end method

.method private isSecure()Z
    .registers 4

    .line 349
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

    .line 350
    :catchall_29
    move-exception v0

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method private leaveIfNothingEnrolled()V
    .registers 2

    .line 490
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_18

    .line 491
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

    .line 492
    :cond_18
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 493
    :goto_20
    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 494
    :cond_29
    return-void
.end method

.method private static myUserId()I
    .registers 4

    .line 708
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

    .line 709
    :catchall_19
    move-exception v1

    .line 710
    return v0
.end method

.method private onFaceEnrollResult(Landroid/content/Intent;)V
    .registers 3

    .line 411
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->markIntelligentChooser(Z)V

    .line 412
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->adoptHandle(Landroid/content/Intent;)V

    .line 413
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result p1

    if-nez p1, :cond_11

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    .line 415
    return-void

    .line 417
    :cond_11
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 419
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    goto :goto_26

    .line 421
    :cond_23
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enableIntelligentScanDefaults()V

    .line 423
    :goto_26
    return-void
.end method

.method private onRemoved()V
    .registers 3

    .line 605
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void
.end method

.method private pageTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 715
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_d

    .line 716
    const-string v0, "bio_intelligentscan_title"

    const-string v1, "Intelligent Scan"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    .line 717
    :cond_d
    invoke-static {p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 715
    :goto_11
    return-object p1
.end method

.method private refresh()V
    .registers 8

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_a

    goto/16 :goto_fb

    .line 258
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 259
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v2

    .line 260
    iget-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const-string v4, "un1ca_iris_stay_on_lockscreen"

    const-string v5, "un1ca_iris_unlock"

    const/4 v6, 0x0

    if-eqz v3, :cond_9b

    .line 261
    if-eqz v0, :cond_27

    if-eqz v2, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v6

    .line 262
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

    .line 263
    :goto_30
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    .line 264
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    xor-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 266
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

    .line 267
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

    .line 268
    :goto_5d
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 269
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 270
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 271
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

    .line 272
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_96

    goto :goto_97

    :cond_96
    move v1, v6

    :goto_97
    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 274
    goto :goto_fa

    .line 275
    :cond_9b
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    or-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    .line 276
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 278
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 279
    if-eqz v0, :cond_bc

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_bc

    move v2, v1

    goto :goto_bd

    :cond_bc
    move v2, v6

    .line 280
    :goto_bd
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "un1ca_iris_unlock_screen_on"

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_de

    move v3, v1

    goto :goto_df

    :cond_de
    move v3, v6

    :goto_df
    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_f6

    goto :goto_f7

    :cond_f6
    move v1, v6

    :goto_f7
    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 287
    :goto_fa
    return-void

    .line 257
    :cond_fb
    :goto_fb
    return-void
.end method

.method private releaseHandle()V
    .registers 7

    .line 365
    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 366
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    if-nez v0, :cond_31

    .line 368
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

    .line 369
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2f

    goto :goto_30

    .line 370
    :catchall_2f
    move-exception v0

    :goto_30
    nop

    .line 372
    :cond_31
    iput-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 374
    return-void
.end method

.method private removeAll()V
    .registers 6

    .line 580
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_b

    .line 581
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 582
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->removeFaceTemplates()V

    .line 584
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    .line 585
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 586
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->onRemoved()V

    .line 587
    return-void

    .line 589
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 591
    :try_start_27
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    check-cast v1, Lcom/samsung/android/camera/iris/Iris;

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    new-instance v4, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_36

    .line 600
    goto :goto_3e

    .line 598
    :catchall_36
    move-exception v1

    .line 599
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "remove failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    :goto_3e
    goto :goto_1d

    .line 602
    :cond_3f
    return-void
.end method

.method private removeFaceTemplates()V
    .registers 12

    .line 658
    const-string v0, "android.hardware.face.FaceManager$RemovalCallback"

    const-string v1, "android.hardware.face.Face"

    const-string v2, "face"

    const/4 v3, 0x0

    :try_start_7
    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 659
    if-nez v4, :cond_10

    return-void

    .line 660
    :cond_10
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 661
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 662
    const-class v7, Ljava/lang/CharSequence;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8, v9}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string v7, ""

    .line 663
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
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

    .line 682
    goto :goto_c0

    .line 665
    :catchall_58
    move-exception v4

    .line 667
    :try_start_59
    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 668
    if-eqz v2, :cond_b7

    .line 669
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

    .line 670
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 671
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 672
    if-eqz v4, :cond_b7

    .line 673
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 674
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "remove"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v8, v0}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    .line 675
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v7, v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b6
    .catchall {:try_start_59 .. :try_end_b6} :catchall_b8

    .line 676
    goto :goto_8f

    .line 681
    :cond_b7
    goto :goto_c0

    .line 679
    :catchall_b8
    move-exception v0

    .line 680
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "removeFaceTemplates failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    :goto_c0
    return-void
.end method

.method private setFaceUnlockEnabled(Z)V
    .registers 7

    .line 649
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

    .line 650
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

    .line 653
    goto :goto_3d

    .line 651
    :catchall_35
    move-exception p1

    .line 652
    const-string v0, "UN1CA-IrisSettings"

    const-string v1, "setBiometricState failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    :goto_3d
    return-void
.end method

.method private static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 699
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

    .line 700
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    .line 703
    goto :goto_36

    .line 701
    :catchall_1d
    move-exception p1

    .line 702
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

    .line 704
    :goto_36
    return-void
.end method

.method private showEnrollError(I)Z
    .registers 6

    .line 470
    nop

    .line 471
    const-string v0, "iris_sensor_not_working_popup_title"

    const-string v1, "iris_failed_to_register"

    packed-switch p1, :pswitch_data_64

    .line 476
    :pswitch_8
    const/4 p1, 0x0

    return p1

    .line 473
    :pswitch_a
    const-string p1, "iris_proximity_restriction_popop_message"

    move-object v0, v1

    goto :goto_17

    .line 474
    :pswitch_e
    const-string p1, "iris_sensor_not_working_msg"

    goto :goto_17

    .line 475
    :pswitch_11
    const-string p1, "iris_hw_problem_msg"

    goto :goto_17

    .line 472
    :pswitch_14
    const-string p1, "iris_eye_safety_msg"

    move-object v0, v1

    .line 478
    :goto_17
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 479
    const-string v3, "Couldn\'t register irises"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 480
    const-string v2, ""

    invoke-static {v1, p1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 481
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

    .line 483
    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    .line 484
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 485
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 486
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

    .line 426
    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 427
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 429
    return-void

    .line 431
    :cond_f
    nop

    .line 433
    :try_start_10
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v2

    .line 434
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "verifyGatekeeperPasswordHandle"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v5

    .line 435
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 436
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

    .line 437
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

    .line 440
    goto :goto_65

    .line 438
    :catchall_5c
    move-exception v0

    .line 439
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "auth token"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 441
    :goto_65
    if-nez v0, :cond_70

    .line 443
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 444
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 445
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 446
    return-void

    .line 448
    :cond_70
    nop

    .line 449
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.server.iris"

    const-string v5, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 450
    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 451
    const-string v0, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    if-eqz p1, :cond_96

    const-string p1, "iris_enroll_retry"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    :cond_96
    const/4 p1, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    return-void
.end method

.method private startFaceEnroll()V
    .registers 7

    .line 395
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

    .line 396
    const-string v2, "previousStage"

    const-string v3, "lock_screen_face"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string v2, "requested_min_complexity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    iget-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_34

    const-string v2, "gk_pw_handle"

    iget-wide v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 401
    :cond_34
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->markIntelligentChooser(Z)V

    .line 402
    :cond_3c
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    .line 407
    goto :goto_4f

    .line 403
    :catchall_41
    move-exception v1

    .line 404
    invoke-static {v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->markIntelligentChooser(Z)V

    .line 405
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "cannot launch face enrollment"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 408
    :goto_4f
    return-void
.end method

.method private startRequestedEnroll(Z)V
    .registers 3

    .line 379
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-nez v0, :cond_e

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startFaceEnroll()V

    goto :goto_11

    .line 382
    :cond_e
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 384
    :goto_11
    return-void
.end method

.method static text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 729
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

    .line 731
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_27

    .line 732
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 733
    :goto_27
    const-string v4, "string"

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 734
    if-eqz v2, :cond_35

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_34

    return-object p0

    .line 735
    :catchall_34
    move-exception v2

    :cond_35
    nop

    .line 729
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 737
    :cond_39
    return-object p2
.end method

.method static title(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 721
    const-string v0, "bio_iris_scanner_title"

    const-string v1, "Irises"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;
    .registers 9

    .line 232
    new-instance v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    invoke-virtual {v0, p2}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setPersistent(Z)V

    .line 235
    invoke-virtual {v0, p4}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v0, p5}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 237
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

    .line 238
    new-instance p3, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 252
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 253
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$confirmRemove$8$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 575
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->removeAll()V

    return-void
.end method

.method synthetic lambda$onCreatePreferences$0$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 2

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmRemove()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$1$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 2

    .line 151
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$2$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/Context;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    .line 164
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 165
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "un1ca_iris_unlock"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    const/4 p3, 0x1

    if-eqz p2, :cond_29

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "un1ca_intelligent_scan_screen_on"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_29

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    :cond_29
    if-nez p2, :cond_3c

    .line 171
    nop

    .line 172
    const-string p2, "sec_intelligentscan_turn_off_toast_message_intelligentscan"

    const-string v0, "Turning off Intelligent Scan unlock will also turn off face and iris unlock."

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 171
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 176
    :cond_3c
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return p3
.end method

.method synthetic lambda$onCreatePreferences$3$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 5

    .line 209
    nop

    .line 210
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.server.iris"

    const-string v2, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 211
    const-string v0, "from_iris_settings"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 213
    return v1
.end method

.method synthetic lambda$onRemoved$9$com-samsung-android-settings-un1ca-IrisSettingsFragment()V
    .registers 4

    .line 606
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 607
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 608
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "un1ca_iris_unlock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 609
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    goto :goto_24

    .line 611
    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 613
    :goto_24
    return-void
.end method

.method synthetic lambda$showEnrollError$5$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 482
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    return-void
.end method

.method synthetic lambda$showEnrollError$6$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 483
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    return-void
.end method

.method synthetic lambda$showEnrollError$7$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;)V
    .registers 2

    .line 484
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    return-void
.end method

.method synthetic lambda$toggle$4$com-samsung-android-settings-un1ca-IrisSettingsFragment(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 239
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 240
    iget-object p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    const-string p3, "un1ca_iris_stay_on_lockscreen"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2c

    iget-boolean p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-nez p3, :cond_21

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isFaceUnlockEnabled()Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 242
    :cond_21
    iget-object p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "face_stay_on_lock_screen"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
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

    .line 245
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "un1ca_intelligent_scan_screen_on"

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_55

    .line 246
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    :cond_55
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return p3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .line 497
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 498
    const-string v0, ")"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "UN1CA-IrisSettings"

    const/4 v5, 0x1

    if-ne p1, v5, :cond_4f

    .line 499
    const/4 p1, -0x1

    if-ne p2, p1, :cond_31

    if-eqz p3, :cond_31

    const-string p1, "gk_pw_handle"

    invoke-virtual {p3, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_1d

    goto :goto_31

    .line 504
    :cond_1d
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 505
    invoke-virtual {p3, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 506
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    if-eqz p1, :cond_118

    .line 507
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 508
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto/16 :goto_118

    .line 500
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

    .line 501
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 502
    return-void

    .line 510
    :cond_4f
    const/4 v6, 0x4

    if-ne p1, v6, :cond_95

    .line 511
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->adoptHandle(Landroid/content/Intent;)V

    .line 512
    iget-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_66

    .line 513
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    if-eqz p1, :cond_118

    .line 514
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 515
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto/16 :goto_118

    .line 517
    :cond_66
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 519
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    move-result p1

    if-nez p1, :cond_118

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    goto/16 :goto_118

    .line 521
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

    .line 522
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 523
    return-void

    .line 525
    :cond_95
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b2

    .line 526
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

    .line 527
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->onFaceEnrollResult(Landroid/content/Intent;)V

    goto :goto_118

    .line 528
    :cond_b2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_118

    .line 529
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

    .line 530
    const-string p1, "sys.un1ca.iris_boost"

    const-string p3, "0"

    invoke-static {p1, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :try_start_d2
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I
    :try_end_d7
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_d8

    .line 535
    goto :goto_de

    .line 533
    :catchall_d8
    move-exception p1

    .line 534
    const-string p3, "postEnroll"

    invoke-static {v4, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    :goto_de
    const/4 p1, -0x4

    if-ne p2, p1, :cond_f0

    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    if-nez p1, :cond_f0

    .line 539
    iput-boolean v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    .line 540
    const-string p1, "sensor error, retrying once with a new token"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 542
    return-void

    .line 544
    :cond_f0
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    .line 545
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10f

    .line 546
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz p1, :cond_104

    .line 547
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enableIntelligentScanDefaults()V

    goto :goto_10f

    .line 551
    :cond_104
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "un1ca_iris_unlock"

    invoke-static {p1, p3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    :cond_10f
    :goto_10f
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->showEnrollError(I)Z

    move-result p1

    if-nez p1, :cond_118

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    .line 556
    :cond_118
    :goto_118
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 557
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 88
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

    .line 90
    :try_start_21
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 91
    const-string v3, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    .line 92
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

    .line 95
    goto :goto_4e

    .line 93
    :catchall_46
    move-exception v3

    .line 94
    const-string v4, "UN1CA-IrisSettings"

    const-string v5, "iris framework unavailable"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :goto_4e
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_cc

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    if-nez v3, :cond_5b

    goto/16 :goto_cc

    .line 101
    :cond_5b
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->pageTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    if-eqz p1, :cond_6b

    return-void

    .line 104
    :cond_6b
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-static {p1, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->clearIfInsecure(Landroid/content/Context;I)I

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 108
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz p1, :cond_8e

    .line 109
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

    .line 110
    :cond_8e
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 111
    :goto_96
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_a1

    const-string v5, "gk_pw_handle"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    goto :goto_a2

    :cond_a1
    move-wide v5, v3

    .line 112
    :goto_a2
    cmp-long v0, v5, v3

    if-eqz v0, :cond_b0

    .line 113
    iput-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 114
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 115
    if-eqz p1, :cond_cb

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto :goto_cb

    .line 116
    :cond_b0
    if-eqz p1, :cond_c0

    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_c0

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startFaceEnroll()V

    goto :goto_cb

    .line 121
    :cond_c0
    iput-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    move-result p1

    if-nez p1, :cond_cb

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 124
    :cond_cb
    :goto_cb
    return-void

    .line 98
    :cond_cc
    :goto_cc
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 99
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 131
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 133
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 134
    const-string v2, "sec_biometrics_disclaimer_main_guide_intelligentscan"

    const-string v3, "Intelligent Scan improves accuracy and security by using both iris and face data."

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 139
    :cond_28
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 141
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_4a

    .line 143
    const-string v2, "sec_intelligentscan_remove_face_and_iris"

    const-string v3, "Remove face and iris data"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    .line 144
    :cond_4a
    const-string v2, "my_irises"

    const-string v3, "Remove iris data"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    :goto_52
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 147
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_7c

    .line 149
    const-string v2, "sec_intelligentscan_register_face_and_iris"

    const-string v3, "Register face and irises"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_84

    .line 150
    :cond_7c
    const-string v2, "register_irises"

    const-string v3, "Register irises"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    :goto_84
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 154
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 156
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const-string v9, "Stay on Lock screen"

    const-string v10, "sec_biometrics_common_option_title_stay_on_lock_screen"

    if-eqz v2, :cond_118

    .line 157
    new-instance v2, Landroidx/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    .line 158
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v3, "un1ca_iris_unlock"

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setPersistent(Z)V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v2, "sec_intelligentscan_unlock_title"

    const-string v3, "Intelligent Scan unlock"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v2, "sec_intelligentscan_unlock_summary"

    const-string v3, "Unlock your phone using combined face and iris scanning."

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 181
    nop

    .line 182
    const-string v1, "sec_intelligentscan_unlock_when_turns_on_title"

    const-string v2, "Screen-on Intelligent Scan"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 183
    const-string v1, "sec_intelligentscan_unlock_when_turns_on_summary"

    const-string v2, "Unlock your phone with Intelligent Scan as soon as the screen turns on, without swiping first."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 181
    const-string v5, "un1ca_intelligent_scan_screen_on"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    .line 185
    nop

    .line 186
    invoke-static {p1, v10, v9}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 187
    const-string v1, "sec_intelligentscan_stay_on_lock_screen_summary"

    const-string v2, "When you unlock with Intelligent Scan, stay on the Lock screen until you swipe."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 185
    const-string v5, "un1ca_iris_stay_on_lockscreen"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    goto :goto_163

    .line 190
    :cond_118
    nop

    .line 191
    const-string v1, "iris_unlock"

    const-string v2, "Iris unlock"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 192
    const-string v1, "iris_unlock_summary"

    const-string v2, "Unlock your phone with your irises."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 190
    const-string v5, "un1ca_iris_unlock"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    .line 193
    nop

    .line 194
    const-string v1, "use_iris_first_lock"

    const-string v2, "Iris unlock when screen turns on"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 195
    const-string v1, "use_iris_first_lock_summary"

    const-string v2, "Unlock your phone with your irises as soon as the screen turns on, without swiping first."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 193
    const-string v5, "un1ca_iris_unlock_screen_on"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    .line 197
    nop

    .line 198
    invoke-static {p1, v10, v9}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 199
    const-string v1, "iris_stay_on_lockscreen_summary"

    const-string v2, "When you unlock with iris recognition, stay on the Lock screen until you swipe."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 197
    const-string v5, "un1ca_iris_stay_on_lockscreen"

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    .line 204
    :goto_163
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 206
    new-instance v1, Landroidx/preference/Preference;

    invoke-direct {v1, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 207
    const-string v2, "tips_for_iris"

    const-string v3, "Tips for using iris recognition"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    new-instance p1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 215
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 217
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 219
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 228
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 229
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 222
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 224
    return-void
.end method
