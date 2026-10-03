.class public abstract LK/M;
.super LK/S;
.source "SourceFile"


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:LC/b;


# direct methods
.method public constructor <init>(LK/U;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, LK/S;-><init>(LK/U;)V

    const/4 p1, 0x0

    iput-object p1, p0, LK/M;->d:LC/b;

    iput-object p2, p0, LK/M;->c:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final h()LC/b;
    .locals 4

    iget-object v0, p0, LK/M;->d:LC/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, LC/b;->a(IIII)LC/b;

    move-result-object v0

    iput-object v0, p0, LK/M;->d:LC/b;

    :cond_0
    iget-object p0, p0, LK/M;->d:LC/b;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result p0

    return p0
.end method

.method public l([LC/b;)V
    .locals 0

    return-void
.end method

.method public m(LK/U;)V
    .locals 0

    return-void
.end method
