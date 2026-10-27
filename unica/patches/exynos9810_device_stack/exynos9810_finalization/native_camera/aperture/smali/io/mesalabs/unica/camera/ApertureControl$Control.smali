.class final Lio/mesalabs/unica/camera/ApertureControl$Control;
.super Ljava/lang/Object;
.source "ApertureControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/mesalabs/unica/camera/ApertureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Control"
.end annotation


# instance fields
.field pending:Z

.field final presenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field reported:F

.field final timeout:Ljava/lang/Runnable;

.field final view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1qTzQEErSAzPMYxqcit0GRLm4lg(Lio/mesalabs/unica/camera/ApertureControl$Control;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/camera/ApertureControl$Control;->lambda$new$0()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/widget/TextView;)V
    .registers 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->presenter:Ljava/lang/ref/WeakReference;

    .line 115
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->view:Ljava/lang/ref/WeakReference;

    .line 116
    new-instance p1, Lio/mesalabs/unica/camera/ApertureControl$Control$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/camera/ApertureControl$Control$$ExternalSyntheticLambda0;-><init>(Lio/mesalabs/unica/camera/ApertureControl$Control;)V

    iput-object p1, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->timeout:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->pending:Z

    .line 118
    iget-object p0, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_11
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .line 123
    const-string v0, "UnicaAperture"

    iget-object v1, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->presenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b0

    .line 124
    iget-boolean v2, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->pending:Z

    if-eqz v2, :cond_10

    goto/16 :goto_b0

    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 126
    :try_start_12
    const-string v4, "mCameraContext"

    invoke-static {v1, v4}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 127
    const-string v5, "isCapturing"

    const-string v6, "isCaptureRequested"

    const-string v7, "isRecording"

    const-string v8, "isRecordingProcessStarted"

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    move v6, v2

    :goto_25
    const/4 v7, 0x4

    if-ge v6, v7, :cond_3b

    aget-object v7, v5, v6

    .line 128
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v7}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    goto/16 :goto_b0

    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 130
    :cond_3b
    invoke-static {v1}, Lio/mesalabs/unica/camera/ApertureControl;->-$$Nest$smmaker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lio/mesalabs/unica/camera/ApertureControl;->dualAperture(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    goto :goto_b0

    .line 132
    :cond_4a
    iget v4, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->reported:F

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_56

    const v4, 0x4019999a    # 2.4f

    goto :goto_58

    :cond_56
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 133
    :goto_58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setPublicSetting"

    const-class v7, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v8, Ljava/lang/Object;

    filled-new-array {v7, v8}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 134
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 135
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v5, "restartPreviewRepeating"

    invoke-static {v1, v5}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    iput-boolean v3, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->pending:Z

    .line 138
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    iget-object v1, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->timeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 140
    iget-object v1, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->timeout:Ljava/lang/Runnable;

    const-wide/16 v5, 0x5dc

    invoke-virtual {p1, v1, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested physical aperture f/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_a4} :catch_a5

    return-void

    :catch_a5
    move-exception v1

    .line 143
    iput-boolean v2, p0, Lio/mesalabs/unica/camera/ApertureControl$Control;->pending:Z

    .line 144
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 145
    const-string p0, "Aperture request failed; keeping reported value"

    invoke-static {v0, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b0
    :goto_b0
    return-void
.end method
