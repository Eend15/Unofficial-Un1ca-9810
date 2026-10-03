.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# static fields
.field public static d:I


# virtual methods
.method public final b(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 0

    sget-object p0, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    sget p0, Landroidx/activity/ImmLeaksCleaner;->d:I

    const/4 p1, 0x1

    if-nez p0, :cond_1

    const-class p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x2

    :try_start_0
    sput p2, Landroidx/activity/ImmLeaksCleaner;->d:I

    const-string p2, "mServedView"

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string p2, "mNextServedView"

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string p2, "mH"

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sput p1, Landroidx/activity/ImmLeaksCleaner;->d:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    sget p0, Landroidx/activity/ImmLeaksCleaner;->d:I

    if-eq p0, p1, :cond_2

    return-void

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method
