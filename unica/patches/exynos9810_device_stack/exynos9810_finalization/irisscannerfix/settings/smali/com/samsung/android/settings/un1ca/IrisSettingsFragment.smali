.class public final Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IrisSettingsFragment.java"


# static fields
.field static final ARG_INTELLIGENT_SCAN:Ljava/lang/String; = "un1ca_intelligent_scan"

.field static final BOOST_PROP:Ljava/lang/String; = "sys.un1ca.iris_boost"

.field static final CREDENTIAL_TYPE_NONE:I = -0x1

.field static final CREDENTIAL_TYPE_PATTERN:I = 0x1

.field static final ENROLL_EYE_SAFETY:I = -0x9

.field static final ENROLL_HW:I = -0x6

.field static final ENROLL_SENSOR:I = -0x4

.field static final ENROLL_TIMEOUT:I = -0x2

.field static final ENROLL_TOO_CLOSE:I = -0x3

.field static final IRIS_PKG:Ljava/lang/String; = "com.samsung.android.server.iris"

.field static final KEY_FACE_STAY:Ljava/lang/String; = "face_stay_on_lock_screen"

.field static final KEY_INTEL_SCREEN_ON:Ljava/lang/String; = "un1ca_intelligent_scan_screen_on"

.field static final KEY_SCREEN_ON:Ljava/lang/String; = "un1ca_iris_unlock_screen_on"

.field static final KEY_STAY:Ljava/lang/String; = "un1ca_iris_stay_on_lockscreen"

.field static final KEY_UNLOCK:Ljava/lang/String; = "un1ca_iris_unlock"

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

.field private mWaitingForFaceEnroll:Z


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

.method private confirmCredential()Z
    .registers 7

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    const-string v2, "getCredentialTypeForUser"

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->invokeInt(Ljava/lang/Object;Ljava/lang/String;II)I

    move-result v0

    .line 297
    const/4 v1, 0x0

    if-ne v0, v3, :cond_19

    .line 298
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 299
    return v1

    .line 301
    :cond_19
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    .line 302
    const-string v0, "com.android.settings.password.ConfirmLockPattern$InternalActivity"

    goto :goto_21

    .line 303
    :cond_1f
    const-string v0, "com.android.settings.password.ConfirmLockPassword$InternalActivity"

    .line 304
    :goto_21
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 307
    const-string v3, "request_gk_pw_handle"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    const-string v3, "return_credentials"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const-string v3, "force_verify"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    const-string v3, "foreground_only"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const-string v3, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    const-string v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->pageTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    :try_start_60
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    .line 316
    return v2

    .line 317
    :catchall_64
    move-exception v0

    .line 318
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "cannot confirm credential"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    return v1
.end method

.method private confirmRemove()V
    .registers 5

    .line 488
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_f

    .line 489
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "sec_intelligentscan_remove_intelligentscan_dialog_title"

    const-string v2, "Remove face and iris data?"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 491
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "iris_delete_popup_title"

    const-string v2, "Remove iris data?"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_19
    iget-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v1, :cond_28

    .line 493
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "sec_intelligentscan_remove_intelligentscan_dialog_body_for_feature"

    const-string v3, "Intelligent Scan features will be turned off."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 495
    :cond_28
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "iris_delete_popup_message_with_related_func"

    const-string v3, "Features that use irises will be turned off."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    :goto_32
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 498
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 499
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 500
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 501
    const-string v2, "common_remove"

    const-string v3, "Remove"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 503
    return-void
.end method

.method private enableIntelligentScanDefaults()V
    .registers 5

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 405
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 406
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "un1ca_iris_unlock"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 407
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "un1ca_intelligent_scan_screen_on"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_37

    .line 408
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
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

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 546
    if-eqz v0, :cond_b

    return-object v0

    .line 549
    :cond_b
    goto :goto_14

    .line 547
    :catchall_c
    move-exception v0

    .line 548
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "getEnrolledIrises"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    :goto_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private finish()V
    .registers 2

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 291
    :cond_9
    return-void
.end method

.method private hasEnrolledFace()Z
    .registers 6

    .line 555
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "face"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 556
    if-nez v1, :cond_c

    return v0

    .line 557
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

    .line 558
    :catchall_31
    move-exception v1

    .line 559
    return v0
.end method

.method private static invokeInt(Ljava/lang/Object;Ljava/lang/String;II)I
    .registers 6

    .line 615
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

    .line 616
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

    .line 617
    :catchall_25
    move-exception p0

    .line 618
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

    .line 619
    return p3
.end method

.method private isFaceUnlockEnabled()Z
    .registers 6

    .line 565
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

    .line 566
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

    .line 565
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_36

    .line 567
    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    move v0, v2

    :cond_35
    return v0

    .line 568
    :catchall_36
    move-exception v1

    .line 569
    return v0
.end method

.method private leaveIfNothingEnrolled()V
    .registers 2

    .line 436
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_18

    .line 437
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

    .line 438
    :cond_18
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 439
    :goto_20
    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 440
    :cond_29
    return-void
.end method

.method private static myUserId()I
    .registers 4

    .line 634
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

    .line 635
    :catchall_19
    move-exception v1

    .line 636
    return v0
.end method

.method private onRemoved()V
    .registers 3

    .line 531
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    return-void
.end method

.method private pageTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 641
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_d

    .line 642
    const-string v0, "bio_intelligentscan_title"

    const-string v1, "Intelligent Scan"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    .line 643
    :cond_d
    invoke-static {p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 641
    :goto_11
    return-object p1
.end method

.method private refresh()V
    .registers 8

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_a

    goto/16 :goto_fb

    .line 257
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 258
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v2

    .line 259
    iget-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const-string v4, "un1ca_iris_stay_on_lockscreen"

    const-string v5, "un1ca_iris_unlock"

    const/4 v6, 0x0

    if-eqz v3, :cond_9b

    .line 260
    if-eqz v0, :cond_27

    if-eqz v2, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v6

    .line 261
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

    .line 262
    :goto_30
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    .line 263
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    xor-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 265
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

    .line 266
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

    .line 267
    :goto_5d
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 268
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 269
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 270
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

    .line 271
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 272
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

    .line 273
    goto :goto_fa

    .line 274
    :cond_9b
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    or-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    .line 275
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 277
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 278
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

    .line 279
    :goto_bd
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 282
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

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 284
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

    .line 286
    :goto_fa
    return-void

    .line 256
    :cond_fb
    :goto_fb
    return-void
.end method

.method private releaseHandle()V
    .registers 7

    .line 324
    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 325
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    if-nez v0, :cond_31

    .line 327
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

    .line 328
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2f

    goto :goto_30

    .line 329
    :catchall_2f
    move-exception v0

    :goto_30
    nop

    .line 331
    :cond_31
    iput-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 333
    return-void
.end method

.method private removeAll()V
    .registers 6

    .line 506
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_b

    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->removeFaceTemplates()V

    .line 510
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->onRemoved()V

    .line 513
    return-void

    .line 515
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 517
    :try_start_27
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    check-cast v1, Lcom/samsung/android/camera/iris/Iris;

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    new-instance v4, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_36

    .line 526
    goto :goto_3e

    .line 524
    :catchall_36
    move-exception v1

    .line 525
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "remove failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    :goto_3e
    goto :goto_1d

    .line 528
    :cond_3f
    return-void
.end method

.method private removeFaceTemplates()V
    .registers 12

    .line 584
    const-string v0, "android.hardware.face.FaceManager$RemovalCallback"

    const-string v1, "android.hardware.face.Face"

    const-string v2, "face"

    const/4 v3, 0x0

    :try_start_7
    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 585
    if-nez v4, :cond_10

    return-void

    .line 586
    :cond_10
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 587
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 588
    const-class v7, Ljava/lang/CharSequence;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8, v9}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string v7, ""

    .line 589
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
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

    .line 608
    goto :goto_c0

    .line 591
    :catchall_58
    move-exception v4

    .line 593
    :try_start_59
    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 594
    if-eqz v2, :cond_b7

    .line 595
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

    .line 596
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 597
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 598
    if-eqz v4, :cond_b7

    .line 599
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 600
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "remove"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v8, v0}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    .line 601
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v7, v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b6
    .catchall {:try_start_59 .. :try_end_b6} :catchall_b8

    .line 602
    goto :goto_8f

    .line 607
    :cond_b7
    goto :goto_c0

    .line 605
    :catchall_b8
    move-exception v0

    .line 606
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "removeFaceTemplates failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    :goto_c0
    return-void
.end method

.method private setFaceUnlockEnabled(Z)V
    .registers 7

    .line 575
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

    .line 576
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

    .line 579
    goto :goto_3d

    .line 577
    :catchall_35
    move-exception p1

    .line 578
    const-string v0, "UN1CA-IrisSettings"

    const-string v1, "setBiometricState failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    :goto_3d
    return-void
.end method

.method private static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 625
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

    .line 626
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    .line 629
    goto :goto_36

    .line 627
    :catchall_1d
    move-exception p1

    .line 628
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

    .line 630
    :goto_36
    return-void
.end method

.method private showEnrollError(I)Z
    .registers 6

    .line 416
    nop

    .line 417
    const-string v0, "iris_sensor_not_working_popup_title"

    const-string v1, "iris_failed_to_register"

    packed-switch p1, :pswitch_data_64

    .line 422
    :pswitch_8
    const/4 p1, 0x0

    return p1

    .line 419
    :pswitch_a
    const-string p1, "iris_proximity_restriction_popop_message"

    move-object v0, v1

    goto :goto_17

    .line 420
    :pswitch_e
    const-string p1, "iris_sensor_not_working_msg"

    goto :goto_17

    .line 421
    :pswitch_11
    const-string p1, "iris_hw_problem_msg"

    goto :goto_17

    .line 418
    :pswitch_14
    const-string p1, "iris_eye_safety_msg"

    move-object v0, v1

    .line 424
    :goto_17
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 425
    const-string v3, "Couldn\'t register irises"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 426
    const-string v2, ""

    invoke-static {v1, p1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 427
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

    .line 429
    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    .line 430
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 431
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 432
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

    .line 372
    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 373
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 375
    return-void

    .line 377
    :cond_f
    nop

    .line 379
    :try_start_10
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v2

    .line 380
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "verifyGatekeeperPasswordHandle"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v5

    .line 381
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 382
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

    .line 383
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

    .line 386
    goto :goto_65

    .line 384
    :catchall_5c
    move-exception v0

    .line 385
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "auth token"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 387
    :goto_65
    if-nez v0, :cond_70

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 390
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 391
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 392
    return-void

    .line 394
    :cond_70
    nop

    .line 395
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.server.iris"

    const-string v5, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 396
    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 397
    const-string v0, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    if-eqz p1, :cond_96

    const-string p1, "iris_enroll_retry"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    :cond_96
    const/4 p1, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 401
    return-void
.end method

.method private startFaceEnroll()V
    .registers 9

    .line 346
    const-string v0, "android.intent.extra.USER_ID"

    const-string v1, "gk_pw_handle"

    iget-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_13

    .line 347
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 349
    return-void

    .line 352
    :cond_13
    :try_start_13
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 353
    iget-wide v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 354
    iget v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    const-string v4, "com.android.settings.SubSettings"

    .line 356
    const-string v5, "com.samsung.android.settings.biometrics.face.FaceLockSettings"

    .line 357
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 358
    const-string v6, ":settings:show_fragment"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 360
    iget-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 361
    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mWaitingForFaceEnroll:Z

    .line 363
    const/4 v0, 0x3

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4f
    .catchall {:try_start_13 .. :try_end_4f} :catchall_50

    .line 368
    goto :goto_5e

    .line 364
    :catchall_50
    move-exception v0

    .line 365
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "cannot launch face enrollment"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mWaitingForFaceEnroll:Z

    .line 367
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 369
    :goto_5e
    return-void
.end method

.method private startRequestedEnroll(Z)V
    .registers 3

    .line 338
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v0

    if-nez v0, :cond_e

    .line 339
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startFaceEnroll()V

    goto :goto_11

    .line 341
    :cond_e
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 343
    :goto_11
    return-void
.end method

.method static text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 655
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

    .line 657
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_27

    .line 658
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 659
    :goto_27
    const-string v4, "string"

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 660
    if-eqz v2, :cond_35

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_34

    return-object p0

    .line 661
    :catchall_34
    move-exception v2

    :cond_35
    nop

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 663
    :cond_39
    return-object p2
.end method

.method static title(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 647
    const-string v0, "bio_iris_scanner_title"

    const-string v1, "Irises"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;
    .registers 9

    .line 231
    new-instance v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    invoke-virtual {v0, p2}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 233
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setPersistent(Z)V

    .line 234
    invoke-virtual {v0, p4}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v0, p5}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
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

    .line 237
    new-instance p3, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 251
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 252
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$confirmRemove$8$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 501
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->removeAll()V

    return-void
.end method

.method synthetic lambda$onCreatePreferences$0$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 2

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmRemove()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$1$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 2

    .line 137
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$2$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/Context;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    .line 150
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 151
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "un1ca_iris_unlock"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    const/4 p3, 0x1

    if-eqz p2, :cond_29

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "un1ca_intelligent_scan_screen_on"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_29

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :cond_29
    if-nez p2, :cond_3c

    .line 157
    nop

    .line 158
    const-string p2, "sec_intelligentscan_turn_off_toast_message_intelligentscan"

    const-string v0, "Turning off Intelligent Scan unlock will also turn off face and iris unlock."

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 157
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 162
    :cond_3c
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return p3
.end method

.method synthetic lambda$onCreatePreferences$3$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 5

    .line 195
    nop

    .line 196
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.server.iris"

    const-string v2, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 197
    const-string v0, "from_iris_settings"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 199
    return v1
.end method

.method synthetic lambda$onRemoved$9$com-samsung-android-settings-un1ca-IrisSettingsFragment()V
    .registers 4

    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 533
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 534
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "un1ca_iris_unlock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    goto :goto_24

    .line 537
    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 539
    :goto_24
    return-void
.end method

.method synthetic lambda$showEnrollError$5$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 428
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    return-void
.end method

.method synthetic lambda$showEnrollError$6$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 429
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    return-void
.end method

.method synthetic lambda$showEnrollError$7$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;)V
    .registers 2

    .line 430
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    return-void
.end method

.method synthetic lambda$toggle$4$com-samsung-android-settings-un1ca-IrisSettingsFragment(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 238
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 239
    iget-object p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    const-string p3, "un1ca_iris_stay_on_lockscreen"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2c

    iget-boolean p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-nez p3, :cond_21

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isFaceUnlockEnabled()Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 241
    :cond_21
    iget-object p3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "face_stay_on_lock_screen"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
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

    .line 244
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "un1ca_intelligent_scan_screen_on"

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_55

    .line 245
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    :cond_55
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return p3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .line 443
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 444
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "UN1CA-IrisSettings"

    const/4 v3, 0x1

    if-ne p1, v3, :cond_4f

    .line 445
    if-ne p2, v1, :cond_2f

    if-eqz p3, :cond_2f

    const-string p1, "gk_pw_handle"

    const-wide/16 v3, 0x0

    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_1b

    goto :goto_2f

    .line 450
    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 451
    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 452
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    if-eqz p1, :cond_c1

    .line 453
    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 454
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto/16 :goto_c1

    .line 446
    :cond_2f
    :goto_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "credential not confirmed ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 448
    return-void

    .line 456
    :cond_4f
    const/4 p3, 0x2

    if-ne p1, p3, :cond_c1

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enroll result "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string p1, "sys.un1ca.iris_boost"

    const-string p3, "0"

    invoke-static {p1, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :try_start_6f
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_75

    .line 463
    goto :goto_7b

    .line 461
    :catchall_75
    move-exception p1

    .line 462
    const-string p3, "postEnroll"

    invoke-static {v2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    :goto_7b
    const/4 p1, -0x4

    if-ne p2, p1, :cond_8d

    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    if-nez p1, :cond_8d

    .line 467
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    .line 468
    const-string p1, "sensor error, retrying once with a new token"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 470
    return-void

    .line 472
    :cond_8d
    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    .line 473
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b8

    .line 474
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz p1, :cond_a1

    .line 475
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enableIntelligentScanDefaults()V

    goto :goto_b8

    .line 476
    :cond_a1
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "un1ca_iris_unlock"

    invoke-static {p1, p3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_b8

    .line 477
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p3, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    :cond_b8
    :goto_b8
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->showEnrollError(I)Z

    move-result p1

    if-nez p1, :cond_c1

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    .line 482
    :cond_c1
    :goto_c1
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 483
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 81
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

    .line 83
    :try_start_21
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 84
    const-string v3, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    .line 85
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

    .line 88
    goto :goto_4e

    .line 86
    :catchall_46
    move-exception v3

    .line 87
    const-string v4, "UN1CA-IrisSettings"

    const-string v5, "iris framework unavailable"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_4e
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_b1

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    if-nez v3, :cond_5a

    goto :goto_b1

    .line 94
    :cond_5a
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->pageTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    if-eqz p1, :cond_6a

    return-void

    .line 98
    :cond_6a
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz p1, :cond_83

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_81

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result p1

    if-nez p1, :cond_7f

    goto :goto_81

    :cond_7f
    move p1, v2

    goto :goto_8b

    :cond_81
    :goto_81
    move p1, v1

    goto :goto_8b

    .line 100
    :cond_83
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 101
    :goto_8b
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_96

    const-string v5, "gk_pw_handle"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    goto :goto_97

    :cond_96
    move-wide v5, v3

    .line 102
    :goto_97
    cmp-long v0, v5, v3

    if-eqz v0, :cond_a5

    .line 103
    iput-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 104
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 105
    if-eqz p1, :cond_b0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startRequestedEnroll(Z)V

    goto :goto_b0

    .line 107
    :cond_a5
    iput-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    move-result p1

    if-nez p1, :cond_b0

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 110
    :cond_b0
    :goto_b0
    return-void

    .line 91
    :cond_b1
    :goto_b1
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 92
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 116
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 117
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 119
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 120
    const-string v2, "sec_biometrics_disclaimer_main_guide_intelligentscan"

    const-string v3, "Intelligent Scan improves accuracy and security by using both iris and face data."

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 125
    :cond_28
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 127
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_4a

    .line 129
    const-string v2, "sec_intelligentscan_remove_face_and_iris"

    const-string v3, "Remove face and iris data"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    .line 130
    :cond_4a
    const-string v2, "my_irises"

    const-string v3, "Remove iris data"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    :goto_52
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 133
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    if-eqz v2, :cond_7c

    .line 135
    const-string v2, "sec_intelligentscan_register_face_and_iris"

    const-string v3, "Register face and irises"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_84

    .line 136
    :cond_7c
    const-string v2, "register_irises"

    const-string v3, "Register irises"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    :goto_84
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 140
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 142
    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIntelligentScan:Z

    const-string v9, "Stay on Lock screen"

    const-string v10, "sec_biometrics_common_option_title_stay_on_lock_screen"

    if-eqz v2, :cond_118

    .line 143
    new-instance v2, Landroidx/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    .line 144
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v3, "un1ca_iris_unlock"

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setPersistent(Z)V

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v2, "sec_intelligentscan_unlock_title"

    const-string v3, "Intelligent Scan unlock"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    const-string v2, "sec_intelligentscan_unlock_summary"

    const-string v3, "Unlock your phone using combined face and iris scanning."

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 167
    nop

    .line 168
    const-string v1, "sec_intelligentscan_unlock_when_turns_on_title"

    const-string v2, "Screen-on Intelligent Scan"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 169
    const-string v1, "sec_intelligentscan_unlock_when_turns_on_summary"

    const-string v2, "Unlock your phone with Intelligent Scan as soon as the screen turns on, without swiping first."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 167
    const-string v5, "un1ca_intelligent_scan_screen_on"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    .line 171
    nop

    .line 172
    invoke-static {p1, v10, v9}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    const-string v1, "sec_intelligentscan_stay_on_lock_screen_summary"

    const-string v2, "When you unlock with Intelligent Scan, stay on the Lock screen until you swipe."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    const-string v5, "un1ca_iris_stay_on_lockscreen"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    goto :goto_163

    .line 176
    :cond_118
    nop

    .line 177
    const-string v1, "iris_unlock"

    const-string v2, "Iris unlock"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    const-string v1, "iris_unlock_summary"

    const-string v2, "Unlock your phone with your irises."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 176
    const-string v5, "un1ca_iris_unlock"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    .line 179
    nop

    .line 180
    const-string v1, "use_iris_first_lock"

    const-string v2, "Iris unlock when screen turns on"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 181
    const-string v1, "use_iris_first_lock_summary"

    const-string v2, "Unlock your phone with your irises as soon as the screen turns on, without swiping first."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 179
    const-string v5, "un1ca_iris_unlock_screen_on"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    .line 183
    nop

    .line 184
    invoke-static {p1, v10, v9}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    const-string v1, "iris_stay_on_lockscreen_summary"

    const-string v2, "When you unlock with iris recognition, stay on the Lock screen until you swipe."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 183
    const-string v5, "un1ca_iris_stay_on_lockscreen"

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    .line 190
    :goto_163
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 192
    new-instance v1, Landroidx/preference/Preference;

    invoke-direct {v1, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 193
    const-string v2, "tips_for_iris"

    const-string v3, "Tips for using iris recognition"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    new-instance p1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 203
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 205
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 227
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 228
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 208
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 209
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mWaitingForFaceEnroll:Z

    if-eqz v0, :cond_29

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mWaitingForFaceEnroll:Z

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->hasEnrolledFace()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 212
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setFaceUnlockEnabled(Z)V

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 214
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 215
    return-void

    .line 217
    :cond_22
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enableIntelligentScanDefaults()V

    goto :goto_29

    .line 219
    :cond_26
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    .line 222
    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 223
    return-void
.end method
