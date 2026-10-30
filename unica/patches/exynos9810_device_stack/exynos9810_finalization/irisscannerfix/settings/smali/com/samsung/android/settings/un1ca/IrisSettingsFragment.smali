.class public final Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IrisSettingsFragment.java"


# static fields
.field static final BOOST_PROP:Ljava/lang/String; = "sys.un1ca.iris_boost"

.field static final CREDENTIAL_TYPE_NONE:I = -0x1

.field static final CREDENTIAL_TYPE_PATTERN:I = 0x1

.field static final ENROLL_EYE_SAFETY:I = -0x9

.field static final ENROLL_HW:I = -0x6

.field static final ENROLL_SENSOR:I = -0x4

.field static final ENROLL_TIMEOUT:I = -0x2

.field static final ENROLL_TOO_CLOSE:I = -0x3

.field static final IRIS_PKG:Ljava/lang/String; = "com.samsung.android.server.iris"

.field static final KEY_SCREEN_ON:Ljava/lang/String; = "un1ca_iris_unlock_screen_on"

.field static final KEY_STAY:Ljava/lang/String; = "un1ca_iris_stay_on_lockscreen"

.field static final KEY_UNLOCK:Ljava/lang/String; = "un1ca_iris_unlock"

.field static final REQUEST_CONFIRM:I = 0x1

.field static final REQUEST_ENROLL:I = 0x2

.field static final STRINGS_PKG:Ljava/lang/String; = "com.samsung.android.irissettings"

.field static final TAG:Ljava/lang/String; = "UN1CA-IrisSettings"


# instance fields
.field private mBorrowedHandle:Z

.field private mContext:Landroid/content/Context;

.field private mEnrollAfterConfirm:Z

.field private mGkHandle:J

.field private mHadIrises:Z

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

.method private confirmCredential()Z
    .registers 7

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    const-string v2, "getCredentialTypeForUser"

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->invokeInt(Ljava/lang/Object;Ljava/lang/String;II)I

    move-result v0

    .line 198
    const/4 v1, 0x0

    if-ne v0, v3, :cond_19

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 200
    return v1

    .line 202
    :cond_19
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    .line 203
    const-string v0, "com.android.settings.password.ConfirmLockPattern$InternalActivity"

    goto :goto_21

    .line 204
    :cond_1f
    const-string v0, "com.android.settings.password.ConfirmLockPassword$InternalActivity"

    .line 205
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

    .line 208
    const-string v3, "request_gk_pw_handle"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const-string v3, "return_credentials"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const-string v3, "force_verify"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    const-string v3, "foreground_only"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    const-string v3, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    const-string v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    :try_start_60
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    .line 217
    return v2

    .line 218
    :catchall_64
    move-exception v0

    .line 219
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "cannot confirm credential"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    return v1
.end method

.method private confirmRemove()V
    .registers 5

    .line 336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 337
    const-string v2, "iris_delete_popup_title"

    const-string v3, "Remove iris data?"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 338
    const-string v2, "iris_delete_popup_message_with_related_func"

    const-string v3, "Features that use irises will be turned off."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 340
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 341
    const-string v2, "common_remove"

    const-string v3, "Remove"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 343
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

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 377
    if-eqz v0, :cond_b

    return-object v0

    .line 380
    :cond_b
    goto :goto_14

    .line 378
    :catchall_c
    move-exception v0

    .line 379
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "getEnrolledIrises"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    :goto_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private finish()V
    .registers 2

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 192
    :cond_9
    return-void
.end method

.method private static invokeInt(Ljava/lang/Object;Ljava/lang/String;II)I
    .registers 6

    .line 388
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

    .line 389
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

    .line 390
    :catchall_25
    move-exception p0

    .line 391
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

    .line 392
    return p3
.end method

.method private leaveIfNothingEnrolled()V
    .registers 2

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 293
    :cond_11
    return-void
.end method

.method private static myUserId()I
    .registers 4

    .line 407
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

    .line 408
    :catchall_19
    move-exception v1

    .line 409
    return v0
.end method

.method private onRemoved()V
    .registers 3

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method

.method private refresh()V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_9

    goto :goto_4b

    .line 177
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 178
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    or-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mHadIrises:Z

    .line 179
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 181
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 182
    if-eqz v0, :cond_35

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "un1ca_iris_unlock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    .line 183
    :goto_36
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 187
    return-void

    .line 176
    :cond_4b
    :goto_4b
    return-void
.end method

.method private releaseHandle()V
    .registers 7

    .line 225
    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 226
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    if-nez v0, :cond_31

    .line 228
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

    .line 229
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2f

    goto :goto_30

    .line 230
    :catchall_2f
    move-exception v0

    :goto_30
    nop

    .line 232
    :cond_31
    iput-wide v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 234
    return-void
.end method

.method private removeAll()V
    .registers 6

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 348
    :try_start_12
    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    check-cast v1, Lcom/samsung/android/camera/iris/Iris;

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    new-instance v4, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_21

    .line 357
    goto :goto_29

    .line 355
    :catchall_21
    move-exception v1

    .line 356
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "remove failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    :goto_29
    goto :goto_8

    .line 359
    :cond_2a
    return-void
.end method

.method private static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 398
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

    .line 399
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    .line 402
    goto :goto_36

    .line 400
    :catchall_1d
    move-exception p1

    .line 401
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

    .line 403
    :goto_36
    return-void
.end method

.method private showEnrollError(I)Z
    .registers 6

    .line 272
    nop

    .line 273
    const-string v0, "iris_sensor_not_working_popup_title"

    const-string v1, "iris_failed_to_register"

    packed-switch p1, :pswitch_data_64

    .line 278
    :pswitch_8
    const/4 p1, 0x0

    return p1

    .line 275
    :pswitch_a
    const-string p1, "iris_proximity_restriction_popop_message"

    move-object v0, v1

    goto :goto_17

    .line 276
    :pswitch_e
    const-string p1, "iris_sensor_not_working_msg"

    goto :goto_17

    .line 277
    :pswitch_11
    const-string p1, "iris_hw_problem_msg"

    goto :goto_17

    .line 274
    :pswitch_14
    const-string p1, "iris_eye_safety_msg"

    move-object v0, v1

    .line 280
    :goto_17
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 281
    const-string v3, "Couldn\'t register irises"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 282
    const-string v2, ""

    invoke-static {v1, p1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 283
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

    .line 285
    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    .line 286
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 288
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

    .line 239
    iget-wide v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 240
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 242
    return-void

    .line 244
    :cond_f
    nop

    .line 246
    :try_start_10
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v2

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "verifyGatekeeperPasswordHandle"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v5

    .line 248
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 249
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

    .line 250
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

    .line 253
    goto :goto_65

    .line 251
    :catchall_5c
    move-exception v0

    .line 252
    const-string v2, "UN1CA-IrisSettings"

    const-string v3, "auth token"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 254
    :goto_65
    if-nez v0, :cond_70

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 257
    iput-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    .line 259
    return-void

    .line 261
    :cond_70
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.server.iris"

    const-string v5, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 262
    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 263
    const-string v0, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    if-eqz p1, :cond_95

    const-string p1, "iris_enroll_retry"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    :cond_95
    const/4 p1, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    return-void
.end method

.method static text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 422
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

    .line 424
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_27

    .line 425
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 426
    :goto_27
    const-string v4, "string"

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 427
    if-eqz v2, :cond_35

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_34

    return-object p0

    .line 428
    :catchall_34
    move-exception v2

    :cond_35
    nop

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 430
    :cond_39
    return-object p2
.end method

.method static title(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 414
    const-string v0, "bio_iris_scanner_title"

    const-string v1, "Irises"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;
    .registers 9

    .line 160
    new-instance v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    invoke-virtual {v0, p2}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setPersistent(Z)V

    .line 163
    invoke-virtual {v0, p4}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v0, p5}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
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

    .line 166
    new-instance p3, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 172
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$confirmRemove$7$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->removeAll()V

    return-void
.end method

.method synthetic lambda$onCreatePreferences$0$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 2

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmRemove()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$1$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 2

    .line 115
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$2$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroidx/preference/Preference;)Z
    .registers 5

    .line 138
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.server.iris"

    const-string v2, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 139
    const-string v0, "from_iris_settings"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 141
    return v1
.end method

.method synthetic lambda$onRemoved$8$com-samsung-android-settings-un1ca-IrisSettingsFragment()V
    .registers 4

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 364
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 365
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "un1ca_iris_unlock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    goto :goto_24

    .line 368
    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 370
    :goto_24
    return-void
.end method

.method synthetic lambda$showEnrollError$4$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 284
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    return-void
.end method

.method synthetic lambda$showEnrollError$5$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 285
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    return-void
.end method

.method synthetic lambda$showEnrollError$6$com-samsung-android-settings-un1ca-IrisSettingsFragment(Landroid/content/DialogInterface;)V
    .registers 2

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    return-void
.end method

.method synthetic lambda$toggle$3$com-samsung-android-settings-un1ca-IrisSettingsFragment(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 167
    iget-object p2, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p2, p1, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .line 296
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 297
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "UN1CA-IrisSettings"

    const/4 v3, 0x1

    if-ne p1, v3, :cond_4f

    .line 298
    if-ne p2, v1, :cond_2f

    if-eqz p3, :cond_2f

    const-string p1, "gk_pw_handle"

    const-wide/16 v3, 0x0

    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_1b

    goto :goto_2f

    .line 303
    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 304
    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 305
    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    if-eqz p1, :cond_b9

    .line 306
    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 307
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    goto/16 :goto_b9

    .line 299
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

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 301
    return-void

    .line 309
    :cond_4f
    const/4 p3, 0x2

    if-ne p1, p3, :cond_b9

    .line 310
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

    .line 311
    const-string p1, "sys.un1ca.iris_boost"

    const-string p3, "0"

    invoke-static {p1, p3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :try_start_6f
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_75

    .line 316
    goto :goto_7b

    .line 314
    :catchall_75
    move-exception p1

    .line 315
    const-string p3, "postEnroll"

    invoke-static {v2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :goto_7b
    const/4 p1, -0x4

    if-ne p2, p1, :cond_8d

    iget-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    if-nez p1, :cond_8d

    .line 320
    iput-boolean v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    .line 321
    const-string p1, "sensor error, retrying once with a new token"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    .line 323
    return-void

    .line 325
    :cond_8d
    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRetriedStaleToken:Z

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b0

    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "un1ca_iris_unlock"

    invoke-static {p1, p3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_b0

    .line 327
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p3, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    :cond_b0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->showEnrollError(I)Z

    move-result p1

    if-nez p1, :cond_b9

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->leaveIfNothingEnrolled()V

    .line 330
    :cond_b9
    :goto_b9
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 331
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUserId:I

    .line 75
    :try_start_c
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 76
    const-string v0, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_31

    .line 80
    goto :goto_39

    .line 78
    :catchall_31
    move-exception v0

    .line 79
    const-string v1, "UN1CA-IrisSettings"

    const-string v2, "iris framework unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_39
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mLockUtils:Ljava/lang/Object;

    if-nez v0, :cond_45

    goto :goto_89

    .line 86
    :cond_45
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    if-eqz p1, :cond_55

    return-void

    .line 90
    :cond_55
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->enrolled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6c

    const-string v3, "gk_pw_handle"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_6d

    :cond_6c
    move-wide v3, v1

    .line 93
    :goto_6d
    cmp-long v0, v3, v1

    if-eqz v0, :cond_7d

    .line 94
    iput-wide v3, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mGkHandle:J

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mBorrowedHandle:Z

    .line 96
    if-eqz p1, :cond_88

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->startEnroll(Z)V

    goto :goto_88

    .line 98
    :cond_7d
    iput-boolean p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mEnrollAfterConfirm:Z

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->confirmCredential()Z

    move-result p1

    if-nez p1, :cond_88

    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 101
    :cond_88
    :goto_88
    return-void

    .line 83
    :cond_89
    :goto_89
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->finish()V

    .line 84
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 11

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 107
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 109
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    const-string v1, "my_irises"

    const-string v2, "Remove iris data"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    new-instance v1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRemove:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 113
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    const-string v1, "register_irises"

    const-string v2, "Register irises"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    new-instance v1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mManage:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mRegister:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 118
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 120
    nop

    .line 121
    const-string v1, "iris_unlock"

    const-string v2, "Iris unlock"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    const-string v1, "iris_unlock_summary"

    const-string v2, "Unlock your phone with your irises."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 120
    const-string v4, "un1ca_iris_unlock"

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mUnlock:Landroidx/preference/SwitchPreference;

    .line 123
    nop

    .line 124
    const-string v1, "use_iris_first_lock"

    const-string v2, "Iris unlock when screen turns on"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    const-string v1, "use_iris_first_lock_summary"

    const-string v2, "Unlock your phone with your irises as soon as the screen turns on, without swiping first."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    const-string v4, "un1ca_iris_unlock_screen_on"

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mScreenOn:Landroidx/preference/SwitchPreference;

    .line 127
    nop

    .line 128
    const-string v1, "sec_biometrics_common_option_title_stay_on_lock_screen"

    const-string v2, "Stay on Lock screen"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    const-string v1, "iris_stay_on_lockscreen_summary"

    const-string v2, "When you unlock with iris recognition, stay on the Lock screen until you swipe."

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 127
    const-string v4, "un1ca_iris_stay_on_lockscreen"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->toggle(Landroidx/preference/PreferenceCategory;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->mStay:Landroidx/preference/SwitchPreference;

    .line 133
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 135
    new-instance v1, Landroidx/preference/Preference;

    invoke-direct {v1, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 136
    const-string v2, "tips_for_iris"

    const-string v3, "Tips for using iris recognition"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    new-instance p1, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 145
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 147
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->releaseHandle()V

    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 157
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->refresh()V

    .line 152
    return-void
.end method
