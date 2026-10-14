.class public final Ld2/d;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ld2/d;->a:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final resize(II)Landroid/graphics/Shader;
    .locals 8

    new-instance p1, Landroid/graphics/LinearGradient;

    int-to-float v4, p2

    const p2, -0x4119999a    # -0.45f

    iget p0, p0, Ld2/d;->a:I

    invoke-static {p2, p0}, La4/x;->k(FI)J

    move-result-wide v0

    const p2, -0x40ac49ba    # -0.827f

    invoke-static {p2, p0}, La4/x;->k(FI)J

    move-result-wide v2

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p2, p0}, La4/x;->k(FI)J

    move-result-wide v5

    const/4 p0, 0x3

    new-array p2, p0, [J

    const/4 v7, 0x0

    aput-wide v0, p2, v7

    const/4 v0, 0x1

    aput-wide v2, p2, v0

    const/4 v0, 0x2

    aput-wide v5, p2, v0

    new-array v6, p0, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
    .end array-data
.end method
