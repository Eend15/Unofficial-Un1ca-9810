.class public abstract LK/P;
.super LK/O;
.source "SourceFile"


# direct methods
.method public constructor <init>(LK/U;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LK/O;-><init>(LK/U;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public i(IIII)LK/U;
    .locals 0

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, LK/U;->f(Landroid/view/View;Landroid/view/WindowInsets;)LK/U;

    move-result-object p0

    return-object p0
.end method
