.class public final LT0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x44

    const/high16 v3, -0x1000000

    invoke-static {v3, v2}, LC/a;->h(II)I

    move-result v2

    iput v2, p0, LT0/a;->a:I

    const/16 v2, 0x14

    invoke-static {v3, v2}, LC/a;->h(II)I

    const/4 v2, 0x0

    invoke-static {v3, v2}, LC/a;->h(II)I

    iget p0, p0, LT0/a;->a:I

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    return-void
.end method
