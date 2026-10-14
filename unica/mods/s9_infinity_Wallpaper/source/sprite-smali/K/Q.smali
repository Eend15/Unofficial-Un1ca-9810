.class public final LK/Q;
.super LK/P;
.source "SourceFile"


# static fields
.field public static final f:LK/U;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v1, v0}, LK/U;->f(Landroid/view/View;Landroid/view/WindowInsets;)LK/U;

    move-result-object v0

    sput-object v0, LK/Q;->f:LK/U;

    return-void
.end method

.method public constructor <init>(LK/U;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LK/P;-><init>(LK/U;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(I)LC/b;
    .locals 2

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, LK/T;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Insets;->left:I

    iget v0, p0, Landroid/graphics/Insets;->top:I

    iget v1, p0, Landroid/graphics/Insets;->right:I

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    invoke-static {p1, v0, v1, p0}, LC/b;->a(IIII)LC/b;

    move-result-object p0

    return-object p0
.end method
