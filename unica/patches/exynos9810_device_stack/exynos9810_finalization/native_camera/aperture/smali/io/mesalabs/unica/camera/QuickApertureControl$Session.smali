.class final Lio/mesalabs/unica/camera/QuickApertureControl$Session;
.super Ljava/lang/Object;
.source "QuickApertureControl.java"

# interfaces
.implements Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/mesalabs/unica/camera/QuickApertureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Session"
.end annotation


# instance fields
.field autoBaseline:Ljava/lang/Object;

.field autoBaselineSaved:Z

.field baselineMaker:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field bound:Z

.field volatile cameraId:Ljava/lang/String;

.field engine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final indicators:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field maker:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mode:I

.field ownedCallback:Z

.field pending:Z

.field final pin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field volatile reported:Ljava/lang/Float;

.field final root:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final timeout:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$axiPJT7AH-ejpR2AuqITsaU_Wrg(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->lambda$new$0()V

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->engine:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->maker:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->baselineMaker:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    .line 109
    new-instance v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session$$ExternalSyntheticLambda0;-><init>(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V

    iput-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    .line 111
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->root:Ljava/lang/ref/WeakReference;

    .line 112
    const-string v1, "quick_setting_indicator_list_area"

    invoke-static {p1, v1}, Lio/mesalabs/unica/camera/QuickApertureControl;->named(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 113
    const-string v2, "quick_setting_indicator_list"

    invoke-static {p1, v2}, Lio/mesalabs/unica/camera/QuickApertureControl;->named(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_ba

    if-eqz v2, :cond_ba

    .line 115
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->indicators:Ljava/lang/ref/WeakReference;

    .line 116
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x1

    .line 117
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$sminstallStockFeedback(Landroid/widget/TextView;)V

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "androidx.constraintlayout.widget.ConstraintLayout$LayoutParams"

    invoke-static {v5, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 119
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 120
    const-string v5, "leftToLeft"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    const-string v5, "topToTop"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pin:Ljava/lang/ref/WeakReference;

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lio/mesalabs/unica/camera/QuickApertureControl$Session$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session$$ExternalSyntheticLambda1;-><init>(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 114
    :cond_ba
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing Camera indicator area"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->update()V

    return-void
.end method


# virtual methods
.method public available()Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    return p0
.end method

.method clearPressed()V
    .registers 2

    .line 163
    iget-object p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pin:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPressed(Z)V

    :cond_e
    return-void
.end method

.method close()V
    .registers 6

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    invoke-static {}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$sfgetmain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->clearPressed()V

    .line 166
    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1e

    invoke-static {v1}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->detach(Landroid/view/View;)V

    .line 167
    :cond_1e
    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2d

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->engine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->ownedCallback:Z

    if-eqz v2, :cond_77

    if-eqz v1, :cond_77

    .line 169
    const-string v2, "getCallbackManager"

    invoke-static {v1, v2}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mLensInfoCallback"

    invoke-static {v1, v2}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 170
    const-string v3, "mListenerList"

    invoke-static {v2, v3}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "enableLensInfoCallback"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6e} :catch_6f

    goto :goto_77

    :catch_6f
    move-exception v1

    .line 171
    const-string v2, "UnicaAperture"

    const-string v3, "Aperture callback cleanup"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_77
    :goto_77
    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->ownedCallback:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11

    .line 183
    const-string p1, "restartPreviewRepeating"

    const-string v0, "UnicaAperture"

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->maker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_fa

    if-eqz v2, :cond_fa

    iget-object v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    if-eqz v3, :cond_fa

    iget-boolean v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    if-nez v3, :cond_fa

    iget-boolean v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    if-nez v3, :cond_24

    goto/16 :goto_fa

    :cond_24
    const/4 v3, 0x0

    .line 185
    :try_start_25
    const-string v4, "isCapturing"

    const-string v5, "isCaptureRequested"

    const-string v6, "isRecording"

    const-string v7, "isRecordingProcessStarted"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    move v5, v3

    :goto_32
    const/4 v6, 0x4

    if-ge v5, v6, :cond_4c

    aget-object v6, v4, v5

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    goto/16 :goto_fa

    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 186
    :cond_4c
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lio/mesalabs/unica/camera/ApertureControl;->dualAperture(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    iget-boolean v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaselineSaved:Z

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->baselineMaker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_64

    goto/16 :goto_fa

    .line 187
    :cond_64
    iget v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    invoke-static {v1}, Lio/mesalabs/unica/camera/ApertureMode;->next(I)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setPublicSetting"

    const-class v6, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v7, Ljava/lang/Object;

    filled-new-array {v6, v7}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 188
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaseline:Ljava/lang/Object;

    invoke-static {v1, v6}, Lio/mesalabs/unica/camera/ApertureMode;->request(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_8b} :catch_ef

    .line 189
    :try_start_8b
    invoke-static {v2, p1}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_d9

    .line 191
    :try_start_8e
    iput v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->update()V

    invoke-static {}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$sfgetmain()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$sfgetmain()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    const-wide/16 v4, 0x5dc

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    iget p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    invoke-static {p1}, Lio/mesalabs/unica/camera/ApertureMode;->name(I)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    iget-object v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaseline:Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/mesalabs/unica/camera/ApertureMode;->request(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aperture mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " request="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_d9
    move-exception v1

    .line 190
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    iget-object v7, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaseline:Ljava/lang/Object;

    invoke-static {v6, v7}, Lio/mesalabs/unica/camera/ApertureMode;->request(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, p1}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v1
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_ef} :catch_ef

    :catch_ef
    move-exception p1

    .line 193
    iput-boolean v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->update()V

    const-string p0, "Aperture request failed"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_fa
    :goto_fa
    return-void
.end method

.method open(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->maker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p2, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 126
    :goto_d
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->engine:Ljava/lang/ref/WeakReference;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->maker:Ljava/lang/ref/WeakReference;

    .line 127
    const-string v3, "mCamDevice"

    invoke-static {p2, v3}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "n"

    invoke-static {v3, v4}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->cameraId:Ljava/lang/String;

    .line 128
    const-string v3, "getCallbackManager"

    invoke-static {p1, v3}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 129
    const-string v3, "mLensInfoCallback"

    invoke-static {p1, v3}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 130
    iget-boolean v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    if-eqz v4, :cond_3d

    if-eqz v0, :cond_69

    .line 131
    :cond_3d
    iget-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->ownedCallback:Z

    const-string v4, "mListenerList"

    invoke-static {v3, v4}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->ownedCallback:Z

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "enableLensInfoCallback"

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_69
    const-string p1, "mAperture"

    invoke-static {v3, p1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    .line 135
    iget-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    if-eqz p1, :cond_a0

    iget-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3fc00000    # 1.5f

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a0

    iget-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v3, 0x4019999a    # 2.4f

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a0

    const/4 p1, 0x0

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    .line 136
    :cond_a0
    iget-boolean p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaselineSaved:Z

    if-eqz p1, :cond_ac

    iget-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->baselineMaker:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_ec

    .line 137
    :cond_ac
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getPublicSetting"

    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaseline:Ljava/lang/Object;

    .line 138
    iput-boolean v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaselineSaved:Z

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->baselineMaker:Ljava/lang/ref/WeakReference;

    iput v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    .line 139
    iget-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaseline:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Native automatic aperture baseline="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnicaAperture"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_ec
    iput-boolean v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    .line 142
    iget-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_fb

    invoke-static {p1, p0}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->attach(Landroid/view/View;Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;)V

    .line 143
    :cond_fb
    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->update()V

    return-void
.end method

.method public paint(Landroid/widget/TextView;Landroid/view/View;)V
    .registers 11

    .line 147
    iget v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    invoke-static {p1, v0}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$smapplyTypography(Landroid/widget/TextView;I)V

    iget v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    invoke-static {v0, v1}, Lio/mesalabs/unica/camera/ApertureMode;->label(ILjava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    if-nez v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    .line 149
    :goto_21
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quick_setting_indicator_ev_text_color"

    const-string v6, "color"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 150
    iget v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    if-eqz v4, :cond_44

    if-eqz v3, :cond_44

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_45

    :cond_44
    const/4 v3, -0x1

    .line 151
    :goto_45
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_4e

    const-string v5, "default_enable_alpha"

    goto :goto_50

    :cond_4e
    const-string v5, "default_disable_alpha"

    :goto_50
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "integer"

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7f

    .line 152
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    mul-int/2addr v5, v4

    div-int/lit16 v5, v5, 0xff

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v5, v4, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 153
    :cond_7f
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    invoke-static {v4}, Lio/mesalabs/unica/camera/ApertureMode;->next(I)I

    move-result v4

    invoke-static {v4}, Lio/mesalabs/unica/camera/ApertureMode;->name(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Aperture "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Tap for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {p2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    if-eqz p0, :cond_b8

    goto :goto_b9

    :cond_b8
    move v1, v2

    :goto_b9
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    if-eq p2, p1, :cond_c5

    .line 156
    invoke-virtual {p2, v3}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c5
    if-nez v0, :cond_ca

    .line 157
    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_ca
    return-void
.end method

.method positionPin()V
    .registers 8

    .line 174
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->indicators:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_92

    if-eqz p0, :cond_92

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_92

    :cond_1c
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    .line 175
    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3f

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3c

    if-eqz v2, :cond_3b

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v5, v6, :cond_3c

    :cond_3b
    move-object v2, v4

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_3f
    if-eqz v2, :cond_92

    .line 176
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p0

    if-nez p0, :cond_48

    goto :goto_92

    :cond_48
    const/4 p0, 0x2

    .line 177
    new-array v3, p0, [I

    new-array p0, p0, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 178
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    aget v5, v3, v1

    aget v6, p0, v1

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v5, 0x1

    aget v3, v3, v5

    aget p0, p0, v5

    sub-int/2addr v3, p0

    .line 179
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 180
    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v5, v4, :cond_87

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v2, :cond_87

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v5, v1, :cond_87

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v5, v3, :cond_92

    :cond_87
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_92
    :goto_92
    return-void
.end method

.method update()V
    .registers 3

    .line 160
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0, v0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->paint(Landroid/widget/TextView;Landroid/view/View;)V

    iget-boolean v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_19

    :cond_17
    const/16 v1, 0x8

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->positionPin()V

    .line 161
    :cond_1f
    invoke-static {p0}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->repaint(Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;)V

    return-void
.end method
