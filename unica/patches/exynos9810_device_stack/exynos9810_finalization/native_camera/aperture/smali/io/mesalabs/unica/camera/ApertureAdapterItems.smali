.class public final Lio/mesalabs/unica/camera/ApertureAdapterItems;
.super Ljava/lang/Object;
.source "ApertureAdapterItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;,
        Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;
    }
.end annotation


# static fields
.field static final ITEM_ID:I = -0x554e

.field static final MARKER:Ljava/lang/String; = "UN1CA_NATIVE_APERTURE_ITEM"

.field private static final customized:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;",
            ">;"
        }
    .end annotation
.end field

.field private static final owners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference<",
            "Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/mesalabs/unica/camera/ApertureAdapterItems;->owners:Ljava/util/WeakHashMap;

    .line 20
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/mesalabs/unica/camera/ApertureAdapterItems;->customized:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/view/View;Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "mMainAdapter"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1c

    .line 48
    :cond_9
    sget-object v1, Lio/mesalabs/unica/camera/ApertureAdapterItems;->owners:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {v0}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->refresh(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->notifyLater(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static bind(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 15

    const/4 v0, 0x0

    .line 100
    :try_start_1
    const-string v1, "mItemList"

    invoke-static {p0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-ltz p2, :cond_14c

    .line 101
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_13

    goto/16 :goto_14c

    .line 102
    :cond_13
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 103
    const-string v1, "mContainer"

    invoke-static {p1, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 104
    const-string v2, "mButtonText"

    invoke-static {p1, v2}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    const-string v3, "mButtonImage"

    invoke-static {p1, v3}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 106
    invoke-static {p0}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->owner(Ljava/lang/Object;)Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;

    move-result-object v4

    .line 107
    invoke-static {p2}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->marker(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_42

    if-nez v4, :cond_42

    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    return v6

    .line 108
    :cond_42
    invoke-static {p2}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->marker(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-nez v5, :cond_89

    .line 109
    sget-object p0, Lio/mesalabs/unica/camera/ApertureAdapterItems;->customized:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;

    if-eqz p0, :cond_88

    .line 111
    move-object p2, p1

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    check-cast p1, Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 112
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 114
    iget-object p0, p0, Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;->textParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_88
    return v0

    .line 119
    :cond_89
    sget-object v5, Lio/mesalabs/unica/camera/ApertureAdapterItems;->customized:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_99

    new-instance v9, Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;

    invoke-direct {v9, p1, v2}, Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;-><init>(Ljava/lang/Object;Landroid/widget/TextView;)V

    invoke-virtual {v5, v1, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_99
    const-string v5, "mItem"

    invoke-static {p1, v5, p2}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v9, "quick_setting_item_size"

    const-string v10, "dimen"

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 122
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0x11

    invoke-direct {v5, p2, p2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 123
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 p2, 0x2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 125
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v5, "default_ripple_effect"

    const-string v8, "drawable"

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    const-string p2, "mBadge"

    invoke-static {p1, p2}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {v2}, Landroid/widget/TextView;->bringToFront()V

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance p2, Lio/mesalabs/unica/camera/ApertureAdapterItems$$ExternalSyntheticLambda1;

    invoke-direct {p2, v3}, Lio/mesalabs/unica/camera/ApertureAdapterItems$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    invoke-interface {v4, v2, v1}, Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;->paint(Landroid/widget/TextView;Landroid/view/View;)V

    .line 138
    const-string p2, "mListOrientation"

    invoke-static {p0, p2}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "onOrientationChanged"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14b} :catch_14d

    return v6

    :cond_14c
    :goto_14c
    return v0

    :catch_14d
    move-exception p0

    .line 141
    const-string p1, "UnicaAperture"

    const-string p2, "Native aperture binder"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static detach(Landroid/view/View;)V
    .registers 3

    .line 53
    :try_start_0
    const-string v0, "mMainAdapter"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_20

    .line 55
    :cond_9
    sget-object v1, Lio/mesalabs/unica/camera/ApertureAdapterItems;->owners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->refresh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->notifyLater(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 57
    const-string v0, "UnicaAperture"

    const-string v1, "Native item detach"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    return-void
.end method

.method static synthetic lambda$bind$1(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    .line 132
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_49

    :cond_c
    if-eq v0, v2, :cond_46

    const/4 v3, 0x3

    if-ne v0, v3, :cond_12

    goto :goto_46

    :cond_12
    const/4 v3, 0x2

    if-ne v0, v3, :cond_49

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_41

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_41

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_41

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_41

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_49

    .line 133
    :cond_46
    :goto_46
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_49
    :goto_49
    return v1
.end method

.method static synthetic lambda$notifyLater$0(Ljava/lang/Object;)V
    .registers 3

    .line 61
    :try_start_0
    const-string v0, "notifyDataSetChanged"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 62
    const-string v0, "UnicaAperture"

    const-string v1, "Native adapter refresh"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static marker(Ljava/lang/Object;)Z
    .registers 3

    .line 37
    :try_start_0
    const-string v0, "UN1CA_NATIVE_APERTURE_ITEM"

    const-string v1, "f"

    invoke-static {p0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    const/4 p0, 0x0

    return p0
.end method

.method static notifyLater(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    .line 60
    new-instance v0, Lio/mesalabs/unica/camera/ApertureAdapterItems$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/mesalabs/unica/camera/ApertureAdapterItems$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static owner(Ljava/lang/Object;)Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;
    .registers 3

    .line 41
    sget-object v0, Lio/mesalabs/unica/camera/ApertureAdapterItems;->owners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    move-object p0, v0

    goto :goto_13

    .line 42
    :cond_d
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;

    :goto_13
    if-eqz p0, :cond_1c

    .line 43
    invoke-interface {p0}, Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;->available()Z

    move-result v1

    if-eqz v1, :cond_1c

    return-object p0

    :cond_1c
    return-object v0
.end method

.method public static refresh(Ljava/lang/Object;)Z
    .registers 14

    .line 68
    const-string v0, "mItemList"

    const-string v1, "UnicaAperture"

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "MAIN"

    const-string v4, "mItemType"

    invoke-static {p0, v4}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    return v2

    .line 69
    :cond_1a
    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 70
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_11e

    const-string v10, "a"

    if-eqz v9, :cond_57

    :try_start_34
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 72
    invoke-static {v9}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->marker(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40

    move-object v8, v9

    goto :goto_2c

    .line 73
    :cond_40
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v11, "MOTION_PHOTO_MENU"

    invoke-static {v9, v10}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    move-object v7, v9

    goto :goto_2c

    .line 76
    :cond_57
    invoke-static {p0}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->owner(Ljava/lang/Object;)Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;

    move-result-object v5

    const/4 v9, 0x1

    if-eqz v5, :cond_cb

    if-eqz v7, :cond_cb

    if-nez v8, :cond_c3

    .line 79
    const-string v8, "clone"

    invoke-static {v7, v8}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v7, :cond_bb

    .line 81
    invoke-static {v7, v10}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 82
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "QUICK_SETTING_INDICATOR_DIVIDER"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 83
    invoke-static {v8, v10, v11}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "b"

    invoke-static {v8, v10, v6}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v6, "c"

    const/16 v10, -0x554e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v6, v11}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "d"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v6, v10}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "f"

    const-string v10, "UN1CA_NATIVE_APERTURE_ITEM"

    invoke-static {v8, v6, v10}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v6, "g"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v6, v10}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "h"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v6, v10}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "i"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v6, v10}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c3

    .line 80
    :cond_bb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Camera item clone failed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_c3
    :goto_c3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v6, v9

    invoke-virtual {v4, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    :cond_cb
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v6, v8, :cond_d7

    move v6, v9

    goto :goto_d8

    :cond_d7
    move v6, v2

    :goto_d8
    if-eqz v6, :cond_f0

    move v8, v2

    .line 90
    :goto_db
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_f0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eq v10, v11, :cond_ed

    move v6, v2

    goto :goto_f0

    :cond_ed
    add-int/lit8 v8, v8, 0x1

    goto :goto_db

    :cond_f0
    :goto_f0
    if-eqz v6, :cond_f3

    return v2

    .line 92
    :cond_f3
    invoke-static {p0, v0, v4}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v5, :cond_fc

    if-eqz v7, :cond_fc

    move p0, v9

    goto :goto_fd

    :cond_fc
    move p0, v2

    .line 93
    :goto_fd
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Native adapter aperture item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " count="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_11d} :catch_11e

    return v9

    :catch_11e
    move-exception p0

    .line 95
    const-string v0, "Native model insertion rejected"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public static repaint(Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;)V
    .registers 5

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lio/mesalabs/unica/camera/ApertureAdapterItems;->customized:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;

    iget-object v2, v2, Lio/mesalabs/unica/camera/ApertureAdapterItems$Saved;->holder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2a

    goto :goto_f

    .line 157
    :cond_2a
    :try_start_2a
    const-string v3, "this$0"

    invoke-static {v2, v3}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 158
    invoke-static {v3}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->owner(Ljava/lang/Object;)Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;

    move-result-object v3

    if-ne v3, p0, :cond_f

    const-string v3, "mItem"

    invoke-static {v2, v3}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->marker(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 159
    const-string v3, "mButtonText"

    invoke-static {v2, v3}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {p0, v2, v1}, Lio/mesalabs/unica/camera/ApertureAdapterItems$Controller;->paint(Landroid/widget/TextView;Landroid/view/View;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_53} :catch_54

    goto :goto_f

    :catch_54
    move-exception v1

    .line 160
    const-string v2, "UnicaAperture"

    const-string v3, "Native aperture paint"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_5d
    return-void
.end method

.method public static rotate(Ljava/lang/Object;I)Z
    .registers 8

    const/4 v0, 0x0

    .line 145
    :try_start_1
    const-string v1, "mItem"

    invoke-static {p0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->marker(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    .line 146
    :cond_e
    const-string v1, "mContainer"

    invoke-static {p0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 147
    const-string v1, "com.sec.android.app.camera.util.AnimationUtil"

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 148
    const-string v2, "rotationAnimation"

    const-class v4, Landroid/view/View;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_41

    return v3

    :catch_41
    move-exception p0

    .line 150
    const-string p1, "UnicaAperture"

    const-string v1, "Native item rotation"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_17

    .line 31
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_11} :catch_12

    return-void

    .line 30
    :catch_12
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 34
    :cond_17
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
