.class final Lio/mesalabs/unica/camera/QuickApertureControl$Session;
.super Ljava/lang/Object;
.source "QuickApertureControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final indicatorList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field final list:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
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

.field originalMargin:I

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

.field selected:Z

.field final slot:I

.field final text:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
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
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->engine:Ljava/lang/ref/WeakReference;

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->maker:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    .line 174
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->baselineMaker:Ljava/lang/ref/WeakReference;

    .line 178
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->root:Ljava/lang/ref/WeakReference;

    .line 179
    const-string v1, "quick_setting_main_list"

    invoke-static {p1, v1}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$smnamed(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 180
    const-string v2, "quick_setting_close_button"

    invoke-static {p1, v2}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$smnamed(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 181
    const-string v3, "quick_setting_list_wrapper"

    invoke-static {p1, v3}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$smnamed(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v1, :cond_17e

    if-eqz v2, :cond_17e

    if-eqz v3, :cond_17e

    .line 183
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->list:Ljava/lang/ref/WeakReference;

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42600000    # 56.0f

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->slot:I

    .line 185
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SecNumFixedSemiBold"

    const-string v8, "style"

    invoke-virtual {v5, v7, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_79

    .line 187
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 188
    :cond_79
    invoke-static {v4, v0}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$smapplyTypography(Landroid/widget/TextView;I)V

    const/4 v6, -0x1

    .line 189
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    .line 190
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, 0x1

    .line 191
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 192
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    const/16 v8, 0x8

    .line 193
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-static {v4}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$sminstallStockFeedback(Landroid/widget/TextView;)V

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v10, "androidx.constraintlayout.widget.ConstraintLayout$LayoutParams"

    invoke-static {v10, v7, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 197
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v10, v11}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 198
    const-string v10, "endToStart"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 199
    const-string v2, "topToTop"

    invoke-virtual {v9, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v1, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 200
    const-string v10, "bottomToBottom"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v1, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 201
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->text:Ljava/lang/ref/WeakReference;

    .line 203
    const-string v1, "quick_setting_indicator_list"

    invoke-static {p1, v1}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$smnamed(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 204
    const-string v3, "quick_setting_indicator_list_area"

    invoke-static {p1, v3}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$smnamed(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v1, :cond_176

    if-eqz v3, :cond_176

    .line 206
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->indicatorList:Ljava/lang/ref/WeakReference;

    .line 207
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v5, :cond_115

    .line 208
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 209
    :cond_115
    invoke-static {v1, v0}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$smapplyTypography(Landroid/widget/TextView;I)V

    .line 210
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-static {v1}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$sminstallStockFeedback(Landroid/widget/TextView;)V

    .line 213
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    .line 214
    const-string v5, "leftToLeft"

    invoke-virtual {v9, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 215
    invoke-virtual {v9, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 216
    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pin:Ljava/lang/ref/WeakReference;

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lio/mesalabs/unica/camera/QuickApertureControl$Session$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session$$ExternalSyntheticLambda0;-><init>(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 219
    new-instance p1, Lio/mesalabs/unica/camera/QuickApertureControl$Session$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session$$ExternalSyntheticLambda1;-><init>(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    return-void

    .line 205
    :cond_176
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing indicator area"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_17e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing quick bar"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->update()V

    return-void
.end method


# virtual methods
.method close()V
    .registers 7

    .line 259
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->text:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->list:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3a

    .line 260
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3a

    .line 261
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 262
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz v1, :cond_3a

    .line 264
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 265
    iget v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->originalMargin:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->originalMargin:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 266
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->engine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 271
    iget-boolean v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    if-nez v1, :cond_8a

    iget-boolean v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->ownedCallback:Z

    if-eqz v1, :cond_8a

    if-eqz v0, :cond_8a

    .line 272
    const-string v1, "getCallbackManager"

    invoke-static {v0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    const-string v1, "mLensInfoCallback"

    invoke-static {v0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 274
    const-string v4, "mListenerList"

    invoke-static {v1, v4}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "enableLensInfoCallback"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_7f
    iput-boolean v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->ownedCallback:Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_81} :catch_82

    goto :goto_8a

    :catch_82
    move-exception v0

    .line 278
    const-string v1, "UnicaAperture"

    const-string v4, "Quick aperture cleanup"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :cond_8a
    :goto_8a
    iput-boolean v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    .line 280
    iget-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    if-nez v0, :cond_a8

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    .line 282
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a8

    .line 283
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12

    .line 338
    const-string v0, "restartPreviewRepeating"

    const-string v1, "UnicaAperture"

    iget-object v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->maker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    if-eqz v2, :cond_ed

    if-eqz v3, :cond_ed

    if-eqz v4, :cond_ed

    .line 339
    iget-boolean v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    if-eqz v4, :cond_20

    goto/16 :goto_ed

    :cond_20
    const/4 v4, 0x0

    .line 341
    :try_start_21
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 342
    const-string v6, "isCapturing"

    const-string v7, "isCaptureRequested"

    const-string v8, "isRecording"

    const-string v9, "isRecordingProcessStarted"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    move v7, v4

    :goto_32
    const/4 v8, 0x4

    if-ge v7, v8, :cond_48

    aget-object v8, v6, v7

    .line 343
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v8}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    goto/16 :goto_ed

    :cond_45
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 344
    :cond_48
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lio/mesalabs/unica/camera/ApertureControl;->dualAperture(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    goto/16 :goto_ed

    .line 345
    :cond_54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "setPublicSetting"

    const-class v6, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v7, Ljava/lang/Object;

    filled-new-array {v6, v7}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 346
    iget-boolean v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaselineSaved:Z

    if-eqz v5, :cond_ed

    iget-object v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->baselineMaker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_74

    goto/16 :goto_ed

    .line 347
    :cond_74
    iget v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    invoke-static {v5}, Lio/mesalabs/unica/camera/ApertureMode;->next(I)I

    move-result v5

    .line 348
    iget-object v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaseline:Ljava/lang/Object;

    invoke-static {v5, v6}, Lio/mesalabs/unica/camera/ApertureMode;->request(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 349
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_89} :catch_e2

    .line 351
    :try_start_89
    invoke-static {v3, v0}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_cc

    .line 357
    :try_start_8c
    iput v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    const/4 v0, 0x1

    if-eqz v5, :cond_93

    move v2, v0

    goto :goto_94

    :cond_93
    move v2, v4

    :goto_94
    iput-boolean v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->selected:Z

    .line 358
    invoke-static {v5}, Lio/mesalabs/unica/camera/ApertureMode;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aperture mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->update()V

    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_cc
    move-exception p1

    .line 353
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    iget-object v7, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaseline:Ljava/lang/Object;

    invoke-static {v6, v7}, Lio/mesalabs/unica/camera/ApertureMode;->request(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {v3, v0}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    throw p1
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_e2} :catch_e2

    :catch_e2
    move-exception p1

    .line 360
    iput-boolean v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->update()V

    const-string p0, "Quick aperture request failed"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ed
    :goto_ed
    return-void
.end method

.method open(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->list:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->text:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_12a

    if-nez v1, :cond_16

    goto/16 :goto_12a

    .line 225
    :cond_16
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v4

    .line 226
    :goto_21
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->engine:Ljava/lang/ref/WeakReference;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->maker:Ljava/lang/ref/WeakReference;

    .line 227
    const-string v5, "mCamDevice"

    invoke-static {p2, v5}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "n"

    invoke-static {v5, v6}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->cameraId:Ljava/lang/String;

    .line 228
    const-string v5, "getCallbackManager"

    invoke-static {p1, v5}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 229
    const-string v5, "mLensInfoCallback"

    invoke-static {p1, v5}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 230
    const-string v6, "mAperture"

    invoke-static {v5, v6}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    iput-object v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    .line 231
    iget-object v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    if-eqz v6, :cond_82

    iget-object v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x3fc00000    # 1.5f

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_82

    iget-object v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const v8, 0x4019999a    # 2.4f

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_82

    const/4 v6, 0x0

    iput-object v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    .line 233
    :cond_82
    iget-boolean v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    if-nez v6, :cond_b2

    .line 234
    iget-boolean v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->ownedCallback:Z

    const-string v7, "mListenerList"

    invoke-static {v5, v7}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->ownedCallback:Z

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    const-string v7, "enableLensInfoCallback"

    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 236
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b2
    if-eqz p3, :cond_d0

    if-nez v2, :cond_d0

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 240
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->originalMargin:I

    .line 241
    iget v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->slot:I

    add-int/2addr v2, v5

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 242
    iget v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->originalMargin:I

    iget v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->slot:I

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    :cond_d0
    iget-boolean p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaselineSaved:Z

    if-eqz p1, :cond_dc

    iget-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->baselineMaker:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_11e

    .line 248
    :cond_dc
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getPublicSetting"

    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 249
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaseline:Ljava/lang/Object;

    .line 250
    iput-boolean v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->autoBaselineSaved:Z

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->baselineMaker:Ljava/lang/ref/WeakReference;

    .line 251
    iput v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    iput-boolean v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->selected:Z

    .line 252
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

    .line 254
    :cond_11e
    iput-boolean v3, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    .line 255
    iput-boolean v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    if-eqz p3, :cond_127

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_127
    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->update()V

    :cond_12a
    :goto_12a
    return-void
.end method

.method positionPin()V
    .registers 8

    .line 318
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->indicatorList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_96

    if-eqz v1, :cond_96

    .line 319
    iget-boolean p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    if-eqz p0, :cond_96

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_20

    goto/16 :goto_96

    :cond_20
    const/4 p0, 0x0

    const/4 v2, 0x0

    move v3, p0

    .line 321
    :goto_23
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 322
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 323
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_40

    if-eqz v2, :cond_3f

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v5, v6, :cond_40

    :cond_3f
    move-object v2, v4

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_43
    if-eqz v2, :cond_96

    .line 325
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_96

    :cond_4c
    const/4 v1, 0x2

    .line 326
    new-array v3, v1, [I

    new-array v1, v1, [I

    .line 327
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 328
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 329
    aget v5, v3, p0

    aget v6, v1, p0

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    invoke-static {p0, v5}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v5, 0x1

    aget v3, v3, v5

    aget v1, v1, v5

    sub-int/2addr v3, v1

    .line 330
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 331
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v5, v4, :cond_8b

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v2, :cond_8b

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v5, p0, :cond_8b

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v5, v3, :cond_96

    .line 332
    :cond_8b
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 333
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_96
    :goto_96
    return-void
.end method

.method update()V
    .registers 10

    .line 288
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->text:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_c

    goto/16 :goto_110

    .line 289
    :cond_c
    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    .line 290
    iget v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    invoke-static {v2, v1}, Lio/mesalabs/unica/camera/ApertureMode;->label(ILjava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    invoke-static {v0, v2}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$smapplyTypography(Landroid/widget/TextView;I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    .line 292
    iget-boolean v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    if-nez v4, :cond_26

    move v4, v2

    goto :goto_27

    :cond_26
    move v4, v3

    :goto_27
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 293
    iget-boolean v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->selected:Z

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 294
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    invoke-static {v5}, Lio/mesalabs/unica/camera/ApertureMode;->next(I)I

    move-result v5

    invoke-static {v5}, Lio/mesalabs/unica/camera/ApertureMode;->name(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Aperture "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Tap for "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "quick_setting_indicator_ev_text_color"

    const-string v7, "color"

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 296
    iget-boolean v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->selected:Z

    if-eqz v5, :cond_7d

    if-eqz v4, :cond_7d

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_7e

    :cond_7d
    const/4 v4, -0x1

    .line 297
    :goto_7e
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v1, :cond_8b

    iget-boolean v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    if-nez v6, :cond_8b

    const-string v6, "default_enable_alpha"

    goto :goto_8d

    :cond_8b
    const-string v6, "default_disable_alpha"

    :goto_8d
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "integer"

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_bc

    .line 299
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 300
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    mul-int/2addr v6, v5

    div-int/lit16 v6, v6, 0xff

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v6, v5, v7, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    :cond_bc
    if-eqz v1, :cond_c2

    .line 302
    iget-boolean v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    if-eqz v5, :cond_c5

    :cond_c2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 303
    :cond_c5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget-object v5, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_110

    .line 306
    iget v6, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->mode:I

    invoke-static {v5, v6}, Lio/mesalabs/unica/camera/QuickApertureControl;->-$$Nest$smapplyTypography(Landroid/widget/TextView;I)V

    .line 307
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_e8

    .line 308
    iget-boolean v4, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    if-nez v4, :cond_e8

    goto :goto_e9

    :cond_e8
    move v2, v3

    :goto_e9
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_f2

    .line 309
    iget-boolean v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    if-eqz v2, :cond_f5

    :cond_f2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 310
    :cond_f5
    iget-boolean v2, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->selected:Z

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 311
    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 312
    iget-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    if-eqz v0, :cond_108

    if-eqz v1, :cond_108

    goto :goto_10a

    :cond_108
    const/16 v3, 0x8

    :goto_10a
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->positionPin()V

    :cond_110
    :goto_110
    return-void
.end method
