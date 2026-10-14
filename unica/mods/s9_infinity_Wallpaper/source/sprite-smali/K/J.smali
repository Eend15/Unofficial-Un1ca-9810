.class public abstract LK/J;
.super LK/L;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LK/L;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, LK/J;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(LK/U;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, LK/L;-><init>(LK/U;)V

    .line 4
    invoke-virtual {p1}, LK/U;->e()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, LK/J;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()LK/U;
    .locals 2

    invoke-virtual {p0}, LK/L;->a()V

    iget-object p0, p0, LK/J;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, LK/U;->f(Landroid/view/View;Landroid/view/WindowInsets;)LK/U;

    move-result-object p0

    iget-object v1, p0, LK/U;->a:LK/S;

    invoke-virtual {v1, v0}, LK/S;->l([LC/b;)V

    return-object p0
.end method

.method public c(LC/b;)V
    .locals 3

    iget-object p0, p0, LK/J;->a:Landroid/view/WindowInsets$Builder;

    iget v0, p1, LC/b;->a:I

    iget v1, p1, LC/b;->b:I

    iget v2, p1, LC/b;->c:I

    iget p1, p1, LC/b;->d:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
