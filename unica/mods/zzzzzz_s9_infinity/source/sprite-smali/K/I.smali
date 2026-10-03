.class public abstract LK/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/H;


# direct methods
.method public static A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static B(Landroid/content/Context;Ln1/a;I)Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p1, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static C(Landroid/content/Context;I)I
    .locals 9

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x3c

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    const/16 v2, 0x8

    const-string v4, "getDisplayIdByWhich : e="

    const-class v5, Landroid/hardware/display/DisplayManager;

    const-string v6, "display"

    const/4 v7, -0x1

    const-string v8, "DisplayUtils"

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getDisplayIdByWhich : unsupported mode. mode="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_0
    const-string p1, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    :try_start_0
    const-string v0, "getDisplays"

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display;

    array-length p1, p0

    if-lez p1, :cond_1

    aget-object p0, p0, v3

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v7

    :cond_2
    invoke-static {}, LM1/i;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, LM1/i;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v0

    :cond_4
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_6

    :try_start_1
    const-string v1, "isExternalDesktopDisplay"

    const-class v2, Landroid/view/Display;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, p1

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v5, p1, v3

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDisplayIdByWhich : desktop detected : id = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_5
    add-int/2addr v3, v0

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p0, "getDisplayIdByWhich : failed to detect the desktop display id"

    invoke-static {v8, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_7
    invoke-static {}, LM1/i;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p0}, LM1/i;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    return v3
.end method

.method public static D(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 4

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    const-string v0, "android.view.DisplayInfo"

    invoke-static {v0}, LK/I;->y(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDisplayInfo"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v2}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDisplayInfoByWhich: e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayUtils"

    invoke-static {v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static E(Landroid/content/Context;I)I
    .locals 2

    invoke-static {p0, p1}, LK/I;->C(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, LK/I;->D(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-static {p0, p1}, LK/I;->I(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getDisplayRotation: e="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static F(Landroid/content/Context;II)Landroid/graphics/Point;
    .locals 6

    invoke-static {p0, p1}, LK/I;->C(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "DisplayUtils"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p0, v0}, LK/I;->D(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "logicalWidth"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-string v5, "logicalHeight"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v0, v4}, LK/I;->I(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1}, LK/I;->I(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v0}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getDisplaySize: e="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-nez v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "getDisplaySize: failed to get display size. which="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p0, p1}, LK/I;->E(Landroid/content/Context;I)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    if-ne p0, v0, :cond_3

    goto :goto_2

    :cond_3
    move p0, p1

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v2

    :goto_3
    if-eq p2, v2, :cond_5

    if-ne p2, v0, :cond_6

    :cond_5
    move p1, v2

    :cond_6
    if-ne p0, p1, :cond_7

    return-object v1

    :cond_7
    new-instance p0, Landroid/graphics/Point;

    iget p1, v1, Landroid/graphics/Point;->y:I

    iget p2, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static G(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final H(LU3/b;)LJ4/C;
    .locals 3

    invoke-interface {p0}, LU3/a;->Y()LU3/J;

    move-result-object v0

    invoke-interface {p0}, LU3/a;->C()LU3/J;

    move-result-object v1

    if-eqz v0, :cond_0

    check-cast v0, LX3/d;

    invoke-virtual {v0}, LX3/d;->j()LJ4/C;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez v1, :cond_2

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v2, p0, LU3/i;

    if-eqz v2, :cond_3

    check-cast v1, LX3/d;

    invoke-virtual {v1}, LX3/d;->j()LJ4/C;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object p0

    instance-of v1, p0, LU3/e;

    if-nez v1, :cond_4

    move-object p0, v0

    :cond_4
    check-cast p0, LU3/e;

    if-eqz p0, :cond_1

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static I(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "getFieldValue: "

    const-string v2, "SdkReflectUtils"

    if-nez p1, :cond_0

    const-string p0, "getFieldValue error, field is null"

    invoke-static {v2, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static final K(LL3/c;)LL3/b;
    .locals 7

    instance-of v0, p0, LL3/b;

    if-eqz v0, :cond_0

    check-cast p0, LL3/b;

    goto/16 :goto_3

    :cond_0
    instance-of v0, p0, LL3/n;

    const-string v1, "Cannot calculate JVM erasure for type: "

    if-eqz v0, :cond_8

    check-cast p0, LL3/n;

    check-cast p0, LO3/h0;

    sget-object v0, LO3/h0;->g:[LL3/l;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object p0, p0, LO3/h0;->d:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, LL3/m;

    if-eqz v5, :cond_3

    check-cast v5, LO3/g0;

    iget-object v5, v5, LO3/g0;->c:LJ4/C;

    invoke-virtual {v5}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    invoke-interface {v5}, LJ4/M;->e()LU3/g;

    move-result-object v5

    instance-of v6, v5, LU3/e;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    check-cast v4, LU3/e;

    if-eqz v4, :cond_1

    invoke-interface {v4}, LU3/e;->I()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-interface {v4}, LU3/e;->I()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    check-cast v4, LL3/m;

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lr3/j;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, LL3/m;

    :goto_2
    if-eqz v4, :cond_7

    move-object p0, v4

    check-cast p0, LO3/g0;

    sget-object v0, LO3/g0;->d:[LL3/l;

    aget-object v0, v0, v2

    iget-object p0, p0, LO3/g0;->b:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LL3/c;

    if-eqz p0, :cond_6

    invoke-static {p0}, LK/I;->K(LL3/c;)LL3/b;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, LD3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    sget-object p0, LF3/t;->a:LF3/u;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_8
    new-instance v0, LD3/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot load method: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdkReflectUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static M(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static final N(LU3/O;)LJ4/C;
    .locals 6

    invoke-interface {p0}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "upperBounds"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    invoke-interface {p0}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, LJ4/C;

    invoke-virtual {v4}, LJ4/C;->q0()LJ4/M;

    move-result-object v4

    invoke-interface {v4}, LJ4/M;->e()LU3/g;

    move-result-object v4

    instance-of v5, v4, LU3/e;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, LU3/e;

    :cond_1
    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, LU3/e;->I()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-interface {v3}, LU3/e;->I()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    move-object v3, v2

    :cond_3
    check-cast v3, LJ4/C;

    if-nez v3, :cond_4

    invoke-interface {p0}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "upperBounds.first()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, LJ4/C;

    :cond_4
    return-object v3
.end method

.method public static O(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static final P(Ljava/lang/Class;LU3/b;)Ljava/lang/reflect/Method;
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "unbox-impl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "getDeclaredMethod(\"unbox\u2026FOR_INLINE_CLASS_MEMBERS)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, LD3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No unbox method found in inline class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (calling "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static S(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, LK/I;->Y(II)Z

    move-result p0

    return p0
.end method

.method public static final T(LU3/O;LJ4/M;Ljava/util/Set;)Z
    .locals 4

    const-string v0, "typeParameter"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeParameter.upperBounds"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/C;

    const-string v3, "upperBound"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/g;->n()LJ4/G;

    move-result-object v3

    invoke-virtual {v3}, LJ4/C;->q0()LJ4/M;

    move-result-object v3

    invoke-static {v1, v3, p2}, LK/I;->l(LJ4/C;LJ4/M;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-static {v1, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_0
    return v2
.end method

.method public static varargs U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "SdkReflectUtils"

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " invoke IllegalAccessException"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " invoke InvocationTargetException"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    const-string p0, "method or callerInstance is null"

    invoke-static {v1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static V(LP4/a;Lf4/f;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1}, LP4/a;->c(Lf4/f;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, LP4/a;->a()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static W(I)Z
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {p0}, LC/a;->d(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static Y(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static Z(I)Z
    .locals 3

    invoke-static {}, LM1/i;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v2, 0x5

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public static a0(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b0(I)Z
    .locals 1

    and-int/lit8 p0, p0, 0x3c

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c0(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, LK/I;->Y(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, v1}, LK/I;->Y(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final d(LJ4/C;)LO4/a;
    .locals 12

    const-string v0, "type"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LJ4/c;->j(LJ4/C;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, LJ4/c;->k(LJ4/C;)LJ4/G;

    move-result-object v0

    invoke-static {v0}, LK/I;->d(LJ4/C;)LO4/a;

    move-result-object v0

    invoke-static {p0}, LJ4/c;->x(LJ4/C;)LJ4/G;

    move-result-object v1

    invoke-static {v1}, LK/I;->d(LJ4/C;)LO4/a;

    move-result-object v1

    new-instance v2, LO4/a;

    iget-object v3, v0, LO4/a;->a:Ljava/lang/Object;

    check-cast v3, LJ4/C;

    invoke-static {v3}, LJ4/c;->k(LJ4/C;)LJ4/G;

    move-result-object v3

    iget-object v4, v1, LO4/a;->a:Ljava/lang/Object;

    check-cast v4, LJ4/C;

    invoke-static {v4}, LJ4/c;->x(LJ4/C;)LJ4/G;

    move-result-object v4

    invoke-static {v3, v4}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object v3

    invoke-static {v3, p0}, LJ4/c;->g(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object v3

    iget-object v0, v0, LO4/a;->b:Ljava/lang/Object;

    check-cast v0, LJ4/C;

    invoke-static {v0}, LJ4/c;->k(LJ4/C;)LJ4/G;

    move-result-object v0

    iget-object v1, v1, LO4/a;->b:Ljava/lang/Object;

    check-cast v1, LJ4/C;

    invoke-static {v1}, LJ4/c;->x(LJ4/C;)LJ4/G;

    move-result-object v1

    invoke-static {v0, v1}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object v0

    invoke-static {v0, p0}, LJ4/c;->g(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object p0

    invoke-direct {v2, v3, p0}, LO4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v2

    instance-of v2, v2, Lw4/b;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    check-cast v1, Lw4/b;

    invoke-interface {v1}, Lw4/b;->a()LJ4/P;

    move-result-object v0

    invoke-virtual {v0}, LJ4/P;->b()LJ4/C;

    move-result-object v1

    const-string v2, "typeProjection.type"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v2

    invoke-static {v1, v2}, LJ4/Z;->h(LJ4/C;Z)LJ4/C;

    move-result-object v1

    invoke-virtual {v0}, LJ4/P;->a()I

    move-result v2

    invoke-static {v2}, Lq/e;->c(I)I

    move-result v2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    new-instance v0, LO4/a;

    invoke-static {p0}, LK/I;->v(LJ4/C;)LR3/j;

    move-result-object v2

    invoke-virtual {v2}, LR3/j;->m()LJ4/G;

    move-result-object v2

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result p0

    invoke-static {v2, p0}, LJ4/Z;->h(LJ4/C;Z)LJ4/C;

    move-result-object p0

    invoke-direct {v0, p0, v1}, LO4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v1, "Only nontrivial projections should have been captured, not: "

    invoke-static {v0, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-instance v0, LO4/a;

    invoke-static {p0}, LK/I;->v(LJ4/C;)LR3/j;

    move-result-object p0

    invoke-virtual {p0}, LR3/j;->n()LJ4/G;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LO4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, LJ4/M;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_4

    goto/16 :goto_6

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v1}, LJ4/M;->g()Ljava/util/List;

    move-result-object v1

    const-string v7, "typeConstructor.parameters"

    invoke-static {v1, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Lr3/j;->U0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq3/f;

    iget-object v7, v6, Lq3/f;->d:Ljava/lang/Object;

    check-cast v7, LJ4/P;

    iget-object v6, v6, Lq3/f;->e:Ljava/lang/Object;

    check-cast v6, LU3/O;

    const-string v8, "typeParameter"

    invoke-static {v6, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, LU3/O;->z()I

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_b

    if-eqz v7, :cond_a

    sget-object v9, LJ4/X;->b:LJ4/X;

    invoke-virtual {v7}, LJ4/P;->c()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x3

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, LJ4/P;->a()I

    move-result v9

    invoke-static {v8, v9}, LJ4/X;->b(II)I

    move-result v8

    :goto_2
    invoke-static {v8}, Lq/e;->c(I)I

    move-result v8

    if-eqz v8, :cond_8

    if-eq v8, v4, :cond_7

    if-ne v8, v3, :cond_6

    new-instance v8, LO4/d;

    invoke-static {v6}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object v9

    invoke-virtual {v9}, LR3/j;->m()LJ4/G;

    move-result-object v9

    invoke-virtual {v7}, LJ4/P;->b()LJ4/C;

    move-result-object v10

    invoke-static {v10, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v6, v9, v10}, LO4/d;-><init>(LU3/O;LJ4/C;LJ4/C;)V

    goto :goto_3

    :cond_6
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_7
    new-instance v8, LO4/d;

    invoke-virtual {v7}, LJ4/P;->b()LJ4/C;

    move-result-object v9

    invoke-static {v9, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object v10

    invoke-virtual {v10}, LR3/j;->n()LJ4/G;

    move-result-object v10

    invoke-direct {v8, v6, v9, v10}, LO4/d;-><init>(LU3/O;LJ4/C;LJ4/C;)V

    goto :goto_3

    :cond_8
    new-instance v8, LO4/d;

    invoke-virtual {v7}, LJ4/P;->b()LJ4/C;

    move-result-object v9

    invoke-static {v9, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, LJ4/P;->b()LJ4/C;

    move-result-object v10

    invoke-static {v10, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v6, v9, v10}, LO4/d;-><init>(LU3/O;LJ4/C;LJ4/C;)V

    :goto_3
    invoke-virtual {v7}, LJ4/P;->c()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    iget-object v6, v8, LO4/d;->b:LJ4/C;

    invoke-static {v6}, LK/I;->d(LJ4/C;)LO4/a;

    move-result-object v6

    iget-object v7, v6, LO4/a;->a:Ljava/lang/Object;

    check-cast v7, LJ4/C;

    iget-object v6, v6, LO4/a;->b:Ljava/lang/Object;

    check-cast v6, LJ4/C;

    iget-object v9, v8, LO4/d;->c:LJ4/C;

    invoke-static {v9}, LK/I;->d(LJ4/C;)LO4/a;

    move-result-object v9

    iget-object v10, v9, LO4/a;->a:Ljava/lang/Object;

    check-cast v10, LJ4/C;

    iget-object v9, v9, LO4/a;->b:Ljava/lang/Object;

    check-cast v9, LJ4/C;

    new-instance v11, LO4/d;

    iget-object v8, v8, LO4/d;->a:LU3/O;

    invoke-direct {v11, v8, v6, v10}, LO4/d;-><init>(LU3/O;LJ4/C;LJ4/C;)V

    new-instance v6, LO4/d;

    invoke-direct {v6, v8, v7, v9}, LO4/d;-><init>(LU3/O;LJ4/C;LJ4/C;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    const/16 p0, 0x24

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v9

    :cond_b
    const/16 p0, 0x23

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v9

    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    :cond_d
    move v4, v1

    goto :goto_4

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LO4/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, LK4/e;->a:LK4/m;

    iget-object v7, v3, LO4/d;->c:LJ4/C;

    iget-object v3, v3, LO4/d;->b:LJ4/C;

    invoke-virtual {v6, v3, v7}, LK4/m;->c(LJ4/C;LJ4/C;)Z

    move-result v3

    if-nez v3, :cond_f

    :goto_4
    new-instance v0, LO4/a;

    if-eqz v4, :cond_10

    invoke-static {p0}, LK/I;->v(LJ4/C;)LR3/j;

    move-result-object v1

    invoke-virtual {v1}, LR3/j;->m()LJ4/G;

    move-result-object v1

    goto :goto_5

    :cond_10
    invoke-static {p0, v2}, LK/I;->o0(LJ4/C;Ljava/util/ArrayList;)LJ4/C;

    move-result-object v1

    :goto_5
    invoke-static {p0, v5}, LK/I;->o0(LJ4/C;Ljava/util/ArrayList;)LJ4/C;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LO4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_11
    :goto_6
    new-instance v0, LO4/a;

    invoke-direct {v0, p0, p0}, LO4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final d0(ILjava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x41

    const/4 v0, 0x0

    if-gt p1, p0, :cond_0

    const/16 p1, 0x5a

    if-gt p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final e(LJ4/C;)LJ4/Q;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJ4/Q;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LJ4/Q;-><init>(ILJ4/C;)V

    return-object v0
.end method

.method public static e0(FII)I
    .locals 1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p2, p0}, LC/a;->h(II)I

    move-result p0

    invoke-static {p0, p1}, LC/a;->f(II)I

    move-result p0

    return p0
.end method

.method public static f(LU0/e;Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;
    .locals 2

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public static f0(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getWeight()I

    move-result v0

    iget p0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    add-int/2addr v0, p0

    const/4 p0, 0x1

    const/16 v1, 0x3e8

    invoke-static {v0, p0, v1}, Lw0/f;->j(III)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    invoke-static {p1, p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-gt v1, v0, :cond_1

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static h(LP3/f;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "args"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LK/I;->u(LP3/f;)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Callable expects "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LK/I;->u(LP3/f;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " arguments, but "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    const-string p1, " were provided."

    invoke-static {v1, p0, p1}, Li4/b;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final k(Ljava/lang/Object;LU3/b;)Ljava/lang/Object;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LX3/L;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LU3/P;

    invoke-static {v0}, Lv4/j;->d(LU3/P;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, LK/I;->H(LU3/b;)LJ4/C;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    invoke-static {v0}, LK/I;->u0(LU3/j;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, LK/I;->P(Ljava/lang/Class;LU3/b;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final l(LJ4/C;LJ4/M;Ljava/util/Set;)Z
    .locals 6

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-static {v0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v2, v0, LU3/h;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, LU3/h;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-interface {v0}, LU3/h;->o()Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->T0(Ljava/util/List;)LU4/n;

    move-result-object p0

    instance-of v2, p0, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v1, v4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, LU4/n;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    move-object v2, p0

    check-cast v2, LU4/b;

    iget-object v5, v2, LU4/b;->e:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, LU4/b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/u;

    iget v5, v2, Lr3/u;->a:I

    iget-object v2, v2, Lr3/u;->b:Ljava/lang/Object;

    check-cast v2, LJ4/P;

    if-nez v0, :cond_6

    move-object v5, v3

    goto :goto_2

    :cond_6
    invoke-static {v5, v0}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LU3/O;

    :goto_2
    if-eqz v5, :cond_7

    if-eqz p2, :cond_7

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, LJ4/P;->c()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_3
    move v2, v4

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, LJ4/P;->b()LJ4/C;

    move-result-object v2

    const-string v5, "argument.type"

    invoke-static {v2, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, p2}, LK/I;->l(LJ4/C;LJ4/M;Ljava/util/Set;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_5

    :goto_5
    return v1
.end method

.method public static final m(I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LB/a;->t(ILjava/lang/String;)V

    invoke-static {p0}, Lq/e;->c(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/4 v0, 0x3

    :cond_2
    :goto_0
    return v0
.end method

.method public static final m0(LJ4/C;LJ4/X;Ljava/util/LinkedHashMap;Ljava/util/Set;)LJ4/C;
    .locals 12

    const-string v0, "variance"

    const/4 v1, 0x3

    invoke-static {v1, v0}, LB/a;->t(ILjava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object v0

    instance-of v2, v0, LJ4/w;

    const/4 v3, 0x2

    const-string v4, "constructor.parameters"

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    move-object v2, v0

    check-cast v2, LJ4/w;

    iget-object v6, v2, LJ4/w;->e:LJ4/G;

    invoke-virtual {v6}, LJ4/C;->q0()LJ4/M;

    move-result-object v7

    invoke-interface {v7}, LJ4/M;->g()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, LJ4/C;->q0()LJ4/M;

    move-result-object v7

    invoke-interface {v7}, LJ4/M;->e()LU3/g;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v6}, LJ4/C;->q0()LJ4/M;

    move-result-object v7

    invoke-interface {v7}, LJ4/M;->g()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LU3/O;

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9}, LU3/O;->r0()I

    move-result v11

    invoke-static {v11, v10}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LJ4/P;

    if-eqz p3, :cond_1

    invoke-interface {p3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, LJ4/P;->b()LJ4/C;

    move-result-object v11

    invoke-virtual {v11}, LJ4/C;->q0()LJ4/M;

    move-result-object v11

    invoke-interface {p2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v10, LJ4/K;

    invoke-direct {v10, v9}, LJ4/K;-><init>(LU3/O;)V

    :goto_2
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v6, v8, v5, v3}, LJ4/c;->q(LJ4/G;Ljava/util/List;LV3/h;I)LJ4/G;

    move-result-object v6

    :cond_4
    :goto_3
    iget-object v2, v2, LJ4/w;->f:LJ4/G;

    invoke-virtual {v2}, LJ4/C;->q0()LJ4/M;

    move-result-object v7

    invoke-interface {v7}, LJ4/M;->g()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v2}, LJ4/C;->q0()LJ4/M;

    move-result-object v7

    invoke-interface {v7}, LJ4/M;->e()LU3/g;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v2}, LJ4/C;->q0()LJ4/M;

    move-result-object v7

    invoke-interface {v7}, LJ4/M;->g()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v7}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LU3/O;

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v8}, LU3/O;->r0()I

    move-result v10

    invoke-static {v10, v9}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LJ4/P;

    if-eqz p3, :cond_6

    invoke-interface {p3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, LJ4/P;->b()LJ4/C;

    move-result-object v10

    invoke-virtual {v10}, LJ4/C;->q0()LJ4/M;

    move-result-object v10

    invoke-interface {p2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    new-instance v9, LJ4/K;

    invoke-direct {v9, v8}, LJ4/K;-><init>(LU3/O;)V

    :goto_6
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-static {v2, v4, v5, v3}, LJ4/c;->q(LJ4/G;Ljava/util/List;LV3/h;I)LJ4/G;

    move-result-object v2

    :cond_9
    :goto_7
    invoke-static {v6, v2}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p0

    goto/16 :goto_c

    :cond_a
    instance-of v2, v0, LJ4/G;

    if-eqz v2, :cond_10

    move-object v2, v0

    check-cast v2, LJ4/G;

    invoke-virtual {v2}, LJ4/C;->q0()LJ4/M;

    move-result-object v6

    invoke-interface {v6}, LJ4/M;->g()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v2}, LJ4/C;->q0()LJ4/M;

    move-result-object v6

    invoke-interface {v6}, LJ4/M;->e()LU3/g;

    move-result-object v6

    if-nez v6, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, LJ4/C;->q0()LJ4/M;

    move-result-object v6

    invoke-interface {v6}, LJ4/M;->g()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v6}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LU3/O;

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7}, LU3/O;->r0()I

    move-result v9

    invoke-static {v9, v8}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJ4/P;

    if-eqz p3, :cond_c

    invoke-interface {p3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_9

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {v8}, LJ4/P;->b()LJ4/C;

    move-result-object v9

    invoke-virtual {v9}, LJ4/C;->q0()LJ4/M;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_a

    :cond_d
    :goto_9
    new-instance v8, LJ4/K;

    invoke-direct {v8, v7}, LJ4/K;-><init>(LU3/O;)V

    :goto_a
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-static {v2, v4, v5, v3}, LJ4/c;->q(LJ4/G;Ljava/util/List;LV3/h;I)LJ4/G;

    move-result-object p0

    goto :goto_c

    :cond_f
    :goto_b
    move-object p0, v2

    :goto_c
    invoke-static {p0, v0}, LJ4/c;->g(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, LJ4/X;->g(ILJ4/C;)LJ4/C;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static n(Landroid/view/SurfaceHolder;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 18

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v0, "DisplayUtils"

    const-string v1, "copySurfaceToBitmapSync : surface holder is null"

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    invoke-interface/range {p0 .. p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Landroid/os/HandlerThread;

    const-string v3, "wallpaperScreenshot"

    invoke-direct {v15, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    new-instance v10, Landroid/os/Handler;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    filled-new-array {v2}, [Landroid/graphics/Bitmap;

    move-result-object v16

    new-array v9, v0, [Z

    aput-boolean v1, v9, v1

    monitor-enter v14

    :try_start_0
    new-instance v8, LM1/e;

    move-object v3, v8

    move-object/from16 v4, p1

    move-object v5, v11

    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move-object v0, v8

    move-object v8, v9

    move-object/from16 v17, v9

    move-object v9, v14

    move-object/from16 p0, v10

    invoke-direct/range {v3 .. v10}, LM1/e;-><init>(Landroid/util/Size;Landroid/graphics/Rect;Landroid/view/SurfaceHolder;[Landroid/graphics/Bitmap;[ZLjava/lang/Object;Landroid/os/Handler;)V

    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x7d0

    :try_start_1
    invoke-virtual {v14, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v15}, Landroid/os/HandlerThread;->quitSafely()Z

    aget-boolean v0, v17, v1

    if-eqz v0, :cond_2

    aget-object v2, v16, v1

    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v12

    const-string v5, "DisplayUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "copySurfaceToBitmapSync : elapsed="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", surface=("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), src=null, outBmp="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_4

    const-string v3, "null"

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pxCpyFin="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v1, v17, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSuccess="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_3
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    :goto_4
    const-string v0, "DisplayUtils"

    const-string v1, "copySurfaceToBitmapSync : frame is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-object v2
.end method

.method public static final n0(LJ4/C;)LJ4/b0;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    instance-of v0, p0, LJ4/w;

    const/4 v1, 0x2

    const-string v2, "constructor.parameters"

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, LJ4/w;

    iget-object v4, v0, LJ4/w;->e:LJ4/G;

    invoke-virtual {v4}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    invoke-interface {v5}, LJ4/M;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    invoke-interface {v5}, LJ4/M;->e()LU3/g;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    invoke-interface {v5}, LJ4/M;->g()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LU3/O;

    new-instance v8, LJ4/K;

    invoke-direct {v8, v7}, LJ4/K;-><init>(LU3/O;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v4, v6, v3, v1}, LJ4/c;->q(LJ4/G;Ljava/util/List;LV3/h;I)LJ4/G;

    move-result-object v4

    :cond_2
    :goto_1
    iget-object v0, v0, LJ4/w;->f:LJ4/G;

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    invoke-interface {v5}, LJ4/M;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    invoke-interface {v5}, LJ4/M;->e()LU3/g;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    invoke-interface {v5}, LJ4/M;->g()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v5}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LU3/O;

    new-instance v7, LJ4/K;

    invoke-direct {v7, v6}, LJ4/K;-><init>(LU3/O;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0, v2, v3, v1}, LJ4/c;->q(LJ4/G;Ljava/util/List;LV3/h;I)LJ4/G;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-static {v4, v0}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object v0

    goto :goto_5

    :cond_6
    instance-of v0, p0, LJ4/G;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, LJ4/G;

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v4

    invoke-interface {v4}, LJ4/M;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v4

    invoke-interface {v4}, LJ4/M;->e()LU3/g;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v4

    invoke-interface {v4}, LJ4/M;->g()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v4}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LU3/O;

    new-instance v6, LJ4/K;

    invoke-direct {v6, v5}, LJ4/K;-><init>(LU3/O;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-static {v0, v2, v3, v1}, LJ4/c;->q(LJ4/G;Ljava/util/List;LV3/h;I)LJ4/G;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-static {v0, p0}, LJ4/c;->g(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final o(Ljava/lang/Class;Ljava/util/List;Ljava/util/Map;)Ljava/lang/Object;
    .locals 8

    const-string v0, "annotationClass"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methods"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, LP3/b;

    invoke-direct {v5, p0, p1, p2}, LP3/b;-><init>(Ljava/lang/Class;Ljava/util/List;Ljava/util/Map;)V

    new-instance p1, LC4/g;

    const/16 v0, 0x18

    invoke-direct {p1, v0, p2}, LC4/g;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lq3/j;

    invoke-direct {v4, p1}, Lq3/j;-><init>(LE3/a;)V

    new-instance p1, LF4/C;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0, p2}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v3, Lq3/j;

    invoke-direct {v3, p1}, Lq3/j;-><init>(LE3/a;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v7, LP3/c;

    move-object v1, v7

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, LP3/c;-><init>(Ljava/lang/Class;Lq3/j;Lq3/j;LP3/b;Ljava/util/Map;)V

    invoke-static {p1, v0, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type T"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final o0(LJ4/C;Ljava/util/ArrayList;)LJ4/C;
    .locals 9

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO4/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, LK4/e;->a:LK4/m;

    iget-object v4, v1, LO4/d;->b:LJ4/C;

    iget-object v5, v1, LO4/d;->c:LJ4/C;

    invoke-virtual {v3, v4, v5}, LK4/m;->c(LJ4/C;LJ4/C;)Z

    invoke-static {v4, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, v1, LO4/d;->a:LU3/O;

    invoke-interface {v1}, LU3/O;->z()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {v4}, LR3/j;->D(LJ4/C;)Z

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eqz v3, :cond_2

    invoke-interface {v1}, LU3/O;->z()I

    move-result v3

    if-eq v3, v6, :cond_2

    new-instance v2, LJ4/Q;

    invoke-interface {v1}, LU3/O;->z()I

    move-result v1

    if-ne v8, v1, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    invoke-direct {v2, v7, v5}, LJ4/Q;-><init>(ILJ4/C;)V

    goto :goto_4

    :cond_2
    if-eqz v5, :cond_6

    invoke-static {v5}, LR3/j;->w(LJ4/C;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v5}, LJ4/C;->z0()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, LJ4/Q;

    invoke-interface {v1}, LU3/O;->z()I

    move-result v1

    if-ne v6, v1, :cond_3

    move v6, v7

    :cond_3
    invoke-direct {v2, v6, v4}, LJ4/Q;-><init>(ILJ4/C;)V

    goto :goto_4

    :cond_4
    new-instance v2, LJ4/Q;

    invoke-interface {v1}, LU3/O;->z()I

    move-result v1

    if-ne v8, v1, :cond_5

    goto :goto_2

    :cond_5
    move v7, v8

    :goto_2
    invoke-direct {v2, v7, v5}, LJ4/Q;-><init>(ILJ4/C;)V

    goto :goto_4

    :cond_6
    const/16 p0, 0x8c

    invoke-static {p0}, LR3/j;->a(I)V

    throw v2

    :cond_7
    :goto_3
    new-instance v2, LJ4/Q;

    invoke-direct {v2, v4}, LJ4/Q;-><init>(LJ4/C;)V

    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    const/4 p1, 0x6

    invoke-static {p0, v0, v2, p1}, LJ4/c;->p(LJ4/C;Ljava/util/List;LV3/h;I)LJ4/C;

    move-result-object p0

    return-object p0
.end method

.method public static final p(LP3/f;LU3/s;Z)LP3/f;
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lv4/j;->a(LU3/b;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.valueParameters"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX3/W;

    const-string v2, "it"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LX3/X;

    invoke-virtual {v1}, LX3/X;->j()LJ4/C;

    move-result-object v1

    const-string v2, "it.type"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lv4/j;->c(LJ4/C;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {p1}, LU3/a;->k()LJ4/C;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {v0}, Lv4/j;->c(LJ4/C;)Z

    move-result v0

    if-eq v0, v1, :cond_4

    :cond_3
    instance-of v0, p0, LP3/e;

    if-nez v0, :cond_5

    invoke-static {p1}, LK/I;->H(LU3/b;)LJ4/C;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lv4/j;->c(LJ4/C;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    :cond_4
    :goto_1
    new-instance v0, LP3/v;

    invoke-direct {v0, p0, p1, p2}, LP3/v;-><init>(LP3/f;LU3/s;Z)V

    move-object p0, v0

    :cond_5
    return-object p0
.end method

.method public static p0(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final q(LJ4/C;ILU3/O;)LJ4/Q;
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectionKind"

    invoke-static {p1, v0}, LB/a;->t(ILjava/lang/String;)V

    new-instance v0, LJ4/Q;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, LU3/O;->z()I

    move-result p2

    :goto_0
    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-direct {v0, p1, p0}, LJ4/Q;-><init>(ILJ4/C;)V

    return-object v0
.end method

.method public static q0(Landroid/content/Context;ILjava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, LK/I;->p0(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v6, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "cropRotateResizeBitmap: incorrect parameter. bmp="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", scale="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static s(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Runnable;)Landroid/os/ParcelFileDescriptor;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    new-array v10, v2, [Z

    aput-boolean v0, v10, v0

    new-instance v11, Ljava/lang/Thread;

    new-instance v12, LM1/a;

    move-object v2, v12

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, v10

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, LM1/a;-><init>([Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;[ZLjava/lang/Runnable;J)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, LA0/b;

    const/4 p2, 0x5

    invoke-direct {p1, v10, p2, v1}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    aget-object p0, v1, v0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "encodeBitmapToPipe: e="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-object v1
.end method

.method public static final t(LJ4/C;LJ4/G;Ljava/util/LinkedHashSet;Ljava/util/Set;)V
    .locals 6

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v1, v0, LU3/O;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-static {p0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_0
    check-cast v0, LU3/O;

    invoke-interface {v0}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    const-string v1, "upperBound"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, LK/I;->t(LJ4/C;LJ4/G;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v1, v0, LU3/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, LU3/h;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_2

    :cond_3
    invoke-interface {v0}, LU3/h;->o()Ljava/util/List;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ4/P;

    if-nez v0, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    invoke-static {v1, v0}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/O;

    :goto_4
    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, LJ4/P;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, LJ4/P;->b()LJ4/C;

    move-result-object v1

    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->e()LU3/g;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v4}, LJ4/P;->b()LJ4/C;

    move-result-object v1

    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    invoke-static {v1, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, LJ4/P;->b()LJ4/C;

    move-result-object v1

    const-string v4, "argument.type"

    invoke-static {v1, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, LK/I;->t(LJ4/C;LJ4/G;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    :cond_8
    :goto_5
    move v1, v3

    goto :goto_3

    :cond_9
    :goto_6
    return-void
.end method

.method public static t0(LK3/c;I)LK3/a;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_2

    iget v0, p0, LK3/a;->f:I

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    new-instance v0, LK3/a;

    iget v1, p0, LK3/a;->d:I

    iget p0, p0, LK3/a;->e:I

    invoke-direct {v0, v1, p0, p1}, LK3/a;-><init>(III)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Step must be positive, was: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final u(LP3/f;)I
    .locals 1

    const-string v0, "$this$arity"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LP3/f;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static final u0(LU3/j;)Ljava/lang/Class;
    .locals 4

    instance-of v0, p0, LU3/e;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lv4/j;->b(LU3/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, LU3/e;

    invoke-static {v0}, LO3/r0;->g(LU3/e;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LD3/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class object for the class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, LU3/j;->r()Ls4/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be found (classId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, LU3/g;

    invoke-static {p0}, Lz4/e;->f(LU3/g;)Ls4/b;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static final v(LJ4/C;)LR3/j;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->c()LR3/j;

    move-result-object p0

    const-string v0, "constructor.builtIns"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final v0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x41

    if-gt v4, v3, :cond_0

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "builder.toString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static w(IIII)Landroid/graphics/Rect;
    .locals 6

    invoke-static {p0, p1, p2, p3}, LK/I;->x(IIII)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v0, p0, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v5

    :cond_1
    :goto_0
    const-string v0, "getCenterCropRect: imgWidth="

    const-string v2, ", imgHeight="

    const-string v3, ", widthToFit="

    invoke-static {p0, v0, p1, v2, v3}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", heightToFit="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GraphicsUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static x(IIII)Landroid/graphics/RectF;
    .locals 2

    if-lez p0, :cond_2

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    if-gtz p3, :cond_0

    goto :goto_2

    :cond_0
    mul-int v0, p0, p3

    mul-int v1, p2, p1

    if-le v0, v1, :cond_1

    int-to-float v0, p3

    int-to-float v1, p1

    :goto_0
    div-float/2addr v0, v1

    goto :goto_1

    :cond_1
    int-to-float v0, p2

    int-to-float v1, p0

    goto :goto_0

    :goto_1
    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    int-to-float p1, p1

    div-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    div-float v0, p2, v1

    sub-float/2addr p0, v0

    div-float v0, p3, v1

    sub-float/2addr p1, v0

    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr p2, p0

    add-float/2addr p3, p1

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    :cond_2
    :goto_2
    const-string v0, "getCenterCropRectInternal: incorrect params : "

    const-string v1, ", "

    invoke-static {p0, v0, p1, v1, v1}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GraphicsUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static x0(II)LK3/c;
    .locals 2

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, LK3/c;->g:LK3/c;

    sget-object p0, LK3/c;->g:LK3/c;

    return-object p0

    :cond_0
    new-instance v0, LK3/c;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-direct {v0, p0, p1, v1}, LK3/a;-><init>(III)V

    return-object v0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Cannot load class: "

    const-string v2, " : "

    invoke-static {v1, p0, v2}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdkReflectUtils"

    invoke-static {v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Landroid/view/View;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, LK/I;->q0(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract J([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
.end method

.method public Q(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public R()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract X()Z
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public abstract g0(I)V
.end method

.method public abstract h0(Landroid/graphics/Typeface;Z)V
.end method

.method public abstract i(Landroid/view/View;I)I
.end method

.method public i0(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public abstract j(Landroid/view/View;I)I
.end method

.method public abstract j0(I)V
.end method

.method public abstract k0(Landroid/view/View;II)V
.end method

.method public abstract l0(Landroid/view/View;FF)V
.end method

.method public abstract r0(Z)V
.end method

.method public abstract s0(Z)V
.end method

.method public abstract w0(Landroid/view/View;I)Z
.end method

.method public abstract y0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
.end method
