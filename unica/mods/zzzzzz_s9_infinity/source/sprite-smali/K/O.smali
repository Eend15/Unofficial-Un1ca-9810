.class public abstract LK/O;
.super LK/N;
.source "SourceFile"


# direct methods
.method public constructor <init>(LK/U;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LK/N;-><init>(LK/U;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public a()LK/U;
    .locals 1

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, LK/U;->f(Landroid/view/View;Landroid/view/WindowInsets;)LK/U;

    move-result-object p0

    return-object p0
.end method

.method public e()LK/e;
    .locals 1

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, LK/e;

    invoke-direct {v0, p0}, LK/e;-><init>(Landroid/view/DisplayCutout;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LK/O;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LK/O;

    iget-object p1, p1, LK/M;->c:Landroid/view/WindowInsets;

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hashCode()I

    move-result p0

    return p0
.end method
