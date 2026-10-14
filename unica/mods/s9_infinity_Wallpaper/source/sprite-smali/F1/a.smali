.class public final LF1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:Landroid/graphics/Point;

.field public e:F

.field public f:F

.field public g:Landroid/graphics/Bitmap;

.field public h:I

.field public i:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LF1/a;->a:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LF1/a;->b:F

    iput v0, p0, LF1/a;->c:F

    const/4 v1, 0x0

    iput-object v1, p0, LF1/a;->d:Landroid/graphics/Point;

    iput v0, p0, LF1/a;->e:F

    iput v0, p0, LF1/a;->f:F

    iput-object v1, p0, LF1/a;->g:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    iput v1, p0, LF1/a;->h:I

    iput v0, p0, LF1/a;->i:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LF1/a;->a:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LF1/a;->b:F

    iput v0, p0, LF1/a;->c:F

    const/4 v1, 0x0

    iput-object v1, p0, LF1/a;->d:Landroid/graphics/Point;

    iput v0, p0, LF1/a;->e:F

    iput v0, p0, LF1/a;->f:F

    const/4 v2, -0x1

    iput v2, p0, LF1/a;->h:I

    iput v0, p0, LF1/a;->i:F

    iget-object v0, p0, LF1/a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, LF1/a;->g:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
