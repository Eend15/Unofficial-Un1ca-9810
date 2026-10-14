.class public final Landroidx/lifecycle/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/lifecycle/n;)Landroidx/lifecycle/m;
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    :goto_0
    return-object p0
.end method

.method public static b(Landroidx/lifecycle/n;)Landroidx/lifecycle/m;
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    :goto_0
    return-object p0
.end method

.method public static c(Landroidx/lifecycle/n;)Landroidx/lifecycle/m;
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    :goto_0
    return-object p0
.end method
