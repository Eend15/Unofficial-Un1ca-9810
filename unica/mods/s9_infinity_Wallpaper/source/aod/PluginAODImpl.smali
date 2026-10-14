.class public Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAOD;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/Requires;
    target = Lcom/android/systemui/plugins/aod/PluginAOD;
    version = 0x1
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginAODImpl"


# instance fields
.field mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

.field private mZigZagPosition:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mZigZagPosition:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->C:Laod/t2;

    iget-boolean p3, p2, Laod/t2;->c:Z

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->x:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    invoke-virtual {p2}, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->h()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    invoke-virtual {p0}, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->b()I

    move-result p0

    invoke-static {p0}, Laod/Z;->H(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p2, Laod/f2;->a:Laod/d2;

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Laod/d2;->f:Z

    const/4 p2, 0x1

    if-eqz p2, :cond_2

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p3, 0x100000

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    iget-boolean p0, p0, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->C:Z

    if-nez p0, :cond_4

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p0, p0, 0x2000

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_3
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, -0x2001

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_4
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    sget-object p0, Laod/wn0;->a:Lcom/samsung/android/uniform/plugins/notification/AODNotificationManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/uniform/plugins/notification/AODNotificationManager;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public getAODClockContainer(Z)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Laod/J3;->i()Laod/J;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getAODClockType()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Laod/J3;->c:Laod/D3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Laod/f2;->a()Lcom/samsung/android/clockpack/plugins/clock/ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/clockpack/plugins/clock/ClockInfo;->getClockType()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getAODParameter()Lcom/android/systemui/plugins/aod/PluginAODParameter;
    .locals 1

    new-instance p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODParameterImpl;

    invoke-direct {p0}, Lcom/samsung/android/app/aodservice/plugin/PluginAODParameterImpl;-><init>()V

    invoke-static {}, Laod/W;->o()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/aodservice/plugin/PluginAODParameterImpl;->setSensorToBrightness([I)V

    return-object p0
.end method

.method public getBottomArea()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Laod/J3;->j()Laod/y;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;
    .locals 0

    invoke-static {}, Laod/wn0;->o()Lcom/samsung/android/uniform/plugins/facewidget/AODFaceWidgetManager;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
    .locals 0

    invoke-static {}, Laod/wn0;->p()Lcom/samsung/android/uniform/plugins/notification/AODNotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getZigzagPosition()Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Laod/J3;->p:Laod/g1;

    iget-object v0, v0, Laod/g1;->k:Lcom/samsung/android/uniform/manager/ViewPositionControllerManager;

    if-eqz v0, :cond_0

    sget-object v2, Laod/g1;->w:Laod/Th1;

    const-string v3, "component"

    invoke-static {v3, v2}, Laod/CY;->x(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/uniform/manager/ViewPositionControllerManager;->c(Laod/Th1;)Laod/Yh1;

    move-result-object v2

    iget-object v0, v0, Lcom/samsung/android/uniform/manager/ViewPositionControllerManager;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laod/Rh1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Laod/Rh1;->d()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    iget-object v2, v0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    if-eqz v2, :cond_5

    iget-boolean v0, v0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->n:Z

    if-eqz v0, :cond_4

    iget-object v0, v2, Laod/J3;->p:Laod/g1;

    iget-object v0, v0, Laod/g1;->k:Lcom/samsung/android/uniform/manager/ViewPositionControllerManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    sget-object v1, Laod/g1;->w:Laod/Th1;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/uniform/manager/ViewPositionControllerManager;->b(Laod/Th1;Z)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mZigZagPosition:Landroid/graphics/Point;

    return-object v0

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mZigZagPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public hideChargingInfoByFinger(J)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->k:Landroid/content/Context;

    invoke-static {p0}, Laod/mA;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Laod/mA;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-wide/16 v0, 0x2710

    cmp-long p0, p1, v0

    if-nez p0, :cond_4

    :cond_1
    sget-object p0, Laod/Kk;->s:Laod/Kk;

    iget-object p0, p0, Laod/Kk;->d:Lcom/samsung/android/uniform/widget/charginginfo/ChargingInfoView;

    if-eqz p0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/uniform/widget/charginginfo/ChargingInfoView;->q:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/uniform/widget/charginginfo/ChargingInfoView;->w:Laod/G;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 p1, 0xdac

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uniform/widget/charginginfo/ChargingInfoView;->q:Z

    iget-object v0, p0, Lcom/samsung/android/uniform/widget/charginginfo/ChargingInfoView;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Laod/FI0;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Laod/FI0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Laod/Qk;

    iget-object v2, p0, Lcom/samsung/android/uniform/widget/charginginfo/ChargingInfoView;->x:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v1, p0, v2, p1, p2}, Laod/Qk;-><init>(Lcom/samsung/android/uniform/widget/charginginfo/ChargingInfoView;Landroid/os/PowerManager$WakeLock;J)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method public needDozeAlwaysOn()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    iget-boolean v1, v1, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->k:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->o:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->p:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->q:Z

    if-nez v1, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->N:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onChargingAnimStarted(Z)V
    .locals 13

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->h()Z

    move-result v0

    const-string v1, "AlwaysOnDisplayEx"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->b()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "onChargingAnimStarted - do not support at cover state"

    sget-object p1, Laod/f;->IMPORTANT:Laod/f;

    invoke-static {v1, p0, p1}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    if-eqz p1, :cond_3

    iget-object v2, v0, Laod/J3;->g:Laod/M3;

    if-eqz v2, :cond_3

    iget-object v2, v2, Laod/M3;->g:Ljava/lang/Object;

    check-cast v2, Laod/X2;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const v3, 0x453b8000    # 3000.0f

    iput v3, v2, Laod/X2;->f:F

    :cond_3
    :goto_0
    iget-object v2, v0, Laod/J3;->r:Laod/T;

    if-eqz v2, :cond_4

    xor-int/lit8 v3, p1, 0x1

    const/16 v4, 0x20

    invoke-virtual {v2, v4, v3}, Laod/T;->d(IZ)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->f:Lcom/samsung/android/app/aodservice/manager/MODManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/aodservice/manager/MODManager;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_5

    const-string p0, "onChargingAnimStarted - mMODManager is not registered."

    sget-object p1, Laod/f;->IMPORTANT:Laod/f;

    invoke-static {v1, p0, p1}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    goto/16 :goto_2

    :cond_5
    const-string v3, "onChargingAnimStarted started: "

    const-string v4, " show_state: "

    invoke-static {v3, v4, p1}, Laod/a;->w(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->a:Lcom/samsung/android/app/aodservice/common/utils/settings/SettingsHelper;

    invoke-virtual {v4}, Lcom/samsung/android/app/aodservice/common/utils/settings/SettingsHelper;->p()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Laod/f;->IMPORTANT:Laod/f;

    invoke-static {v1, v3, v5}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iget-object v3, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    iget v3, v3, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->n:I

    iget-object v6, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->g:Lcom/samsung/android/app/aodservice/AODStateMachine;

    const/4 v7, 0x1

    if-eq v3, v7, :cond_c

    const/4 v8, 0x2

    if-ne v3, v8, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v6}, Lcom/samsung/android/app/aodservice/AODStateMachine;->c()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v4}, Lcom/samsung/android/app/aodservice/common/utils/settings/SettingsHelper;->p()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v0, Laod/J3;->q:Lcom/samsung/android/app/aodservice/ui/model/AODChargingModel;

    const/4 v4, 0x4

    const/4 v9, 0x0

    const-string v10, "AODUiController"

    if-eqz p1, :cond_9

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v8, 0x3e9

    iput v8, p1, Landroid/os/Message;->what:I

    iput v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->K:Laod/B8;

    invoke-virtual {v8, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v7, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->p:Z

    const-string p1, "onRequestDozeCharging"

    invoke-static {v1, p1, v5}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    const-string v1, "charging_info"

    const-wide/16 v11, 0x12c

    invoke-static {v1, v11, v12, p1, v7}, Laod/Bi1;->a(Ljava/lang/String;JLjava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->l:Lcom/samsung/android/app/aodservice/AODPluginCallbackForwarder;

    invoke-interface {p1, v4}, Lcom/android/systemui/plugins/aod/PluginAOD$Callback;->onRequestState(I)V

    const-string p1, "showAODOverlayAndRegisterSensor"

    invoke-static {v10, p1, v5}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iget-object p1, v0, Laod/J3;->B:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/samsung/android/app/aodservice/ui/model/AODChargingModel;->c()V

    :cond_8
    invoke-virtual {v6}, Lcom/samsung/android/app/aodservice/AODStateMachine;->c()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->I:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    iget-object v0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->b()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    invoke-virtual {p0}, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->h()Z

    move-result p0

    invoke-virtual {v2, p1, v0, p0, v7}, Lcom/samsung/android/app/aodservice/manager/MODManager;->showSubUIChargingInfo(Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;IZZ)V

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Lcom/samsung/android/app/aodservice/AODStateMachine;->c()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->l:Lcom/samsung/android/app/aodservice/AODPluginCallbackForwarder;

    invoke-interface {p1, v8}, Lcom/android/systemui/plugins/aod/PluginAOD$Callback;->onRequestState(I)V

    const-string p1, "hideAODOverlayAndUnRegisterSensor"

    invoke-static {v10, p1, v5}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iget-object p1, v0, Laod/J3;->B:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/samsung/android/app/aodservice/ui/model/AODChargingModel;->d()V

    :cond_b
    iput-boolean v9, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->p:Z

    goto :goto_2

    :cond_c
    :goto_1
    const-string p1, "onChargingAnimStarted curSleepState: "

    const-string v0, " isRunning: "

    invoke-static {v3, p1, v0}, Laod/cZ;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v6}, Lcom/samsung/android/app/aodservice/AODStateMachine;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v5}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iget-object p1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->B:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    const/4 v0, 0x3

    iput v0, p1, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->n:I

    const-string p1, "AOD_EnsureWorkingTime"

    const-string v0, "SleepToCharging"

    invoke-static {p1, v0}, Laod/Bi1;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/aodservice/AODStateMachine;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->E()V

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->C()Z

    invoke-static {p1, v0}, Laod/Bi1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->s(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .locals 3

    sget-object v0, Laod/f;->IMPORTANT:Laod/f;

    const-string v1, "PluginAODImpl"

    const-string v2, "onCreate()"

    invoke-static {v1, v2, v0}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iget-object v0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz v0, :cond_0

    const-string v0, "onCreate : The previous mAlwaysOnDisplay was not destroyed"

    invoke-static {v1, v0}, Laod/g;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    invoke-virtual {v0}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->t()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    :cond_0
    :try_start_0
    sget-object v0, Laod/a0;->c:Laod/a0;

    invoke-virtual {v0, p1, p2}, Laod/a0;->H0(Landroid/content/Context;Landroid/content/Context;)Laod/tv;

    move-result-object p1

    iget-object p1, p1, Laod/tv;->q:Laod/es0;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    iput-object p1, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onCreate: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Laod/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->unbind()V



    const-string v0, "onDestroy()"

    sget-object v1, Laod/f;->IMPORTANT:Laod/f;

    const-string v2, "PluginAODImpl"

    invoke-static {v2, v0, v1}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    sget-object v0, Laod/a0;->c:Laod/a0;

    const/4 v1, 0x0

    iput-object v1, v0, Laod/l;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->amount(F)V



    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_1

    const-string v0, "onDozeAmountChanged linearAmount = "

    const-string v1, " / amount = "

    const-string v2, " / mNeedAODClockTransition = "

    invoke-static {v0, p1, v1, p2, v2}, Laod/Tn;->o(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->G:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Laod/f;->IMPORTANT:Laod/f;

    const-string v1, "AlwaysOnDisplayEx"

    invoke-static {v1, p2, v0}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iget p2, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->M:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->M:F

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    if-eqz p0, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onDozeAmountTransitionEnded mMachine = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Laod/J3;->b:Lcom/samsung/android/app/aodservice/AODStateMachine;

    iget-object v1, p2, Lcom/samsung/android/app/aodservice/AODStateMachine;->b:Laod/Q2;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isKeyguardShowing = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laod/J3;->H:Lcom/samsung/android/app/facewidget/FaceWidgetController;

    iget-object v2, v1, Lcom/samsung/android/app/facewidget/FaceWidgetController;->a:Lcom/samsung/android/app/facewidget/FaceWidgetViewModel;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/facewidget/FaceWidgetViewModel;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AODUiController"

    invoke-static {v2, p1, v0}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iput-boolean v4, p0, Laod/J3;->S:Z

    invoke-virtual {p2}, Lcom/samsung/android/app/aodservice/AODStateMachine;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Lcom/samsung/android/app/facewidget/FaceWidgetController;->a:Lcom/samsung/android/app/facewidget/FaceWidgetViewModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/facewidget/FaceWidgetViewModel;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v3}, Laod/J3;->d(Z)V

    :cond_1
    return-void
.end method

.method public onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->bind(Landroid/view/View;)V



    sget-object v0, Laod/f;->IMPORTANT:Laod/f;

    const-string v1, "PluginAODImpl"

    const-string v2, "onDreamingStarted()"

    invoke-static {v1, v2, v0}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->v(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)Z

    move-result p0

    return p0
.end method

.method public onDreamingStopped()V
    .locals 3




    const-string v0, "onDreamingStopped()"

    sget-object v1, Laod/f;->IMPORTANT:Laod/f;

    const-string v2, "PluginAODImpl"

    invoke-static {v2, v0, v1}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->t()V

    :cond_0
    return-void
.end method

.method public onFaceWidgetPositionChanged()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Laod/J3;->P:Z

    if-eqz v0, :cond_1

    const-string v0, "LAYOUT_CHANGED"

    const-string v1, "AOD_TspUpdate"

    invoke-virtual {p0, v0, v1}, Laod/J3;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_0

    sget-boolean v0, Laod/Go;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "AOD_EnsureWorkingTime"

    const-string v1, "Start by Dex Screen Off"

    invoke-static {v0, v1}, Laod/Bi1;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->E()V

    invoke-virtual {p0}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->C()Z

    invoke-static {v0, v1}, Laod/Bi1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_7

    const-string v0, "onFolderStateChanged isFolderOpened : "

    invoke-static {v0, p1}, Laod/a;->o(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Laod/f;->IMPORTANT:Laod/f;

    const-string v2, "AlwaysOnDisplayEx"

    invoke-static {v2, v0, v1}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    const-string v0, "onFolderStateChanged_AOD"

    invoke-static {v0}, Laod/hx;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->z:Laod/u3;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v3, Laod/aB0;->L:Z

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->w()V

    :cond_1
    sget-boolean v4, Laod/aB0;->M:Z

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    invoke-virtual {v5}, Laod/J3;->m()V

    :cond_2
    invoke-static {}, Laod/mA;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1}, Laod/xl1;->c0(Z)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->o(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->h:Lcom/samsung/android/app/aodservice/controller/configuration/AODConfigurationController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_4

    sget-boolean v4, Laod/aB0;->G:Z

    if-eqz v4, :cond_5

    :cond_4
    xor-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Laod/y3;->l(Z)V

    :cond_5
    if-eqz v3, :cond_6

    if-nez p1, :cond_6

    const-string p1, "onFolderStateChanged: refresh display monitor after FOLD CLOSED"

    const-string v3, "AOD_CONFIG@AODConfigurationController"

    invoke-static {v3, p1, v1}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    const-string p1, "MONITOR_DISPLAY"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/aodservice/controller/configuration/AODConfigurationController;->k(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/aodservice/controller/configuration/AODConfigurationController;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/aodservice/controller/configuration/AODConfigurationController;->d(Ljava/lang/String;)V

    :cond_6
    const-string p0, "onFolderStateChanged elapsed "

    invoke-static {v0, v2, p0}, Laod/hx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onSystemUIConfigurationChanged(Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->h:Lcom/samsung/android/app/aodservice/controller/configuration/AODConfigurationController;

    iget-object v0, p0, Lcom/samsung/android/app/aodservice/controller/configuration/AODConfigurationController;->e:Lcom/samsung/android/app/aodservice/content/AODConfiguration;

    iput-object p1, v0, Lcom/samsung/android/app/aodservice/content/AODConfiguration;->a:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/controller/configuration/AODConfigurationController;->d:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->q(ILcom/samsung/android/app/aodservice/content/AODConfiguration;)V

    :cond_0
    return-void
.end method

.method public onUnlockedScreenOffAmountChanged(F)V
    .locals 1

    invoke-static {}, Laod/xl1;->V()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "onUnlockedScreenOffAmountChanged finished amount="

    invoke-static {p0, p1}, Laod/cZ;->k(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Laod/f;->IMPORTANT:Laod/f;

    const-string v0, "AODUiController"

    invoke-static {v0, p0, p1}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    :cond_2
    return-void
.end method

.method public onUnlockedScreenOffAnimationEnd()V
    .locals 5

    invoke-static {}, Laod/xl1;->V()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUnlockedScreenOffAnimationEnd: mMachine.isRunning()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    iget-object v2, v1, Laod/J3;->b:Lcom/samsung/android/app/aodservice/AODStateMachine;

    invoke-virtual {v2}, Lcom/samsung/android/app/aodservice/AODStateMachine;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Laod/f;->IMPORTANT:Laod/f;

    const-string v4, "AODUiController"

    invoke-static {v4, v0, v3}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Laod/J3;->r0:Z

    invoke-virtual {v2}, Lcom/samsung/android/app/aodservice/AODStateMachine;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laod/J3;->d(Z)V

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->e:Z

    new-instance v0, Laod/z8;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Laod/z8;-><init>(Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;I)V

    const-wide/16 v1, 0x64

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->K:Laod/B8;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public requestMODState(IZ)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestMODState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Laod/f;->IMPORTANT:Laod/f;

    const-string v2, "AlwaysOnDisplayEx"

    invoke-static {v2, v0, v1}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->f:Lcom/samsung/android/app/aodservice/manager/MODManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/aodservice/manager/MODManager;->requestMODState(IZ)V

    :cond_0
    return-void
.end method

.method public sendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_2

    const-string v0, "AlwaysOnDisplayEx"

    if-nez p1, :cond_0

    const-string p0, "sendIntent: intent is null"

    invoke-static {v0, p0}, Laod/g;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->n:Z

    if-nez v1, :cond_1

    const-string p0, "sendIntent: AOD not started"

    invoke-static {v0, p0}, Laod/g;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "MONITOR_INTENT"

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->h:Lcom/samsung/android/app/aodservice/controller/configuration/AODConfigurationController;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/aodservice/controller/configuration/AODConfigurationController;->l(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/app/aodservice/AODPluginCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->f:Lcom/samsung/android/app/aodservice/manager/MODManager;

    filled-new-array {p1, v1}, [Lcom/android/systemui/plugins/aod/PluginAOD$Callback;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/aodservice/AODPluginCallbackForwarder;-><init>([Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->l:Lcom/samsung/android/app/aodservice/AODPluginCallbackForwarder;

    :cond_0
    return-void
.end method

.method public setAODUICallback(Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->m:Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    iput-object p1, p0, Laod/J3;->i:Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;

    :cond_0
    return-void
.end method

.method public setDozeScreenState(II)V
    .locals 0

    return-void
.end method

.method public setIsDozing(ZZ)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_4

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->x:Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->i:Laod/J3;

    if-eqz p0, :cond_4

    const-string v0, "setIsDozing dozing:"

    invoke-static {v0, p1}, Laod/a;->o(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Laod/f;->IMPORTANT:Laod/f;

    const-string v2, "AODUiController"

    invoke-static {v2, v0, v1}, Laod/g;->k(Ljava/lang/String;Ljava/lang/String;Laod/f;)V

    iput-boolean p1, p0, Laod/J3;->W:Z

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Laod/J3;->h(Z)V

    iget-object v0, p0, Laod/J3;->r:Laod/T;

    if-eqz v0, :cond_1

    iput-boolean p2, v0, Laod/T;->j:Z

    :cond_1
    iget-object p2, p0, Laod/J3;->q:Lcom/samsung/android/app/aodservice/ui/model/AODChargingModel;

    invoke-virtual {p2}, Lcom/samsung/android/app/aodservice/ui/model/AODChargingModel;->a()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Laod/J3;->r0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Laod/J3;->b:Lcom/samsung/android/app/aodservice/AODStateMachine;

    invoke-virtual {v0}, Lcom/samsung/android/app/aodservice/AODStateMachine;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Laod/J3;->d(Z)V

    :cond_3
    :goto_0
    iget-object p0, p0, Laod/J3;->H:Lcom/samsung/android/app/facewidget/FaceWidgetController;

    iget-object p0, p0, Lcom/samsung/android/app/facewidget/FaceWidgetController;->a:Lcom/samsung/android/app/facewidget/FaceWidgetViewModel;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/facewidget/FaceWidgetViewModel;->setDozing(Z)V

    :cond_4
    return-void
.end method

.method public setTouchMode(Z)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->k:Landroid/content/Context;

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-static {p0, p1, v0}, Laod/y3;->n(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Laod/y3;->n(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTouchModeWhileClockTransition(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/plugin/PluginAODImpl;->mAlwaysOnDisplay:Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/aodservice/AlwaysOnDisplayEx;->k:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Laod/y3;->o(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p1}, Laod/y3;->o(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method
