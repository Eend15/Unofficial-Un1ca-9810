.class public abstract LK/N;
.super LK/M;
.source "SourceFile"


# instance fields
.field public e:LC/b;


# direct methods
.method public constructor <init>(LK/U;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LK/M;-><init>(LK/U;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, LK/N;->e:LC/b;

    return-void
.end method


# virtual methods
.method public b()LK/U;
    .locals 1

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, LK/U;->f(Landroid/view/View;Landroid/view/WindowInsets;)LK/U;

    move-result-object p0

    return-object p0
.end method

.method public c()LK/U;
    .locals 1

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, LK/U;->f(Landroid/view/View;Landroid/view/WindowInsets;)LK/U;

    move-result-object p0

    return-object p0
.end method

.method public final g()LC/b;
    .locals 4

    iget-object v0, p0, LK/N;->e:LC/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, LC/b;->a(IIII)LC/b;

    move-result-object v0

    iput-object v0, p0, LK/N;->e:LC/b;

    :cond_0
    iget-object p0, p0, LK/N;->e:LC/b;

    return-object p0
.end method

.method public j()Z
    .locals 0

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0
.end method
