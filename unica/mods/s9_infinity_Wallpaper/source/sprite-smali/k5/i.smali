.class public final Lk5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lk5/i;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lk5/i;->d:F

    .line 4
    iput p2, p0, Lk5/i;->e:F

    return-void
.end method

.method public static final d(Lk5/i;Lk5/i;)F
    .locals 2

    iget v0, p0, Lk5/i;->d:F

    iget v1, p1, Lk5/i;->e:F

    mul-float/2addr v0, v1

    iget p0, p0, Lk5/i;->e:F

    iget p1, p1, Lk5/i;->d:F

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method public static final e(FLk5/i;Lk5/i;)V
    .locals 2

    neg-float v0, p0

    iget v1, p1, Lk5/i;->e:F

    mul-float/2addr v0, v1

    iput v0, p2, Lk5/i;->d:F

    iget p1, p1, Lk5/i;->d:F

    mul-float/2addr p0, p1

    iput p0, p2, Lk5/i;->e:F

    return-void
.end method

.method public static final f(Lk5/i;Lk5/i;)F
    .locals 2

    iget v0, p0, Lk5/i;->d:F

    iget v1, p1, Lk5/i;->d:F

    mul-float/2addr v0, v1

    iget p0, p0, Lk5/i;->e:F

    iget p1, p1, Lk5/i;->e:F

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final a(Lk5/i;)Lk5/i;
    .locals 3

    new-instance v0, Lk5/i;

    iget v1, p0, Lk5/i;->d:F

    iget v2, p1, Lk5/i;->d:F

    add-float/2addr v1, v2

    iget p0, p0, Lk5/i;->e:F

    iget p1, p1, Lk5/i;->e:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lk5/i;-><init>(FF)V

    return-object v0
.end method

.method public final b(Lk5/i;)V
    .locals 2

    iget v0, p0, Lk5/i;->d:F

    iget v1, p1, Lk5/i;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lk5/i;->d:F

    iget v0, p0, Lk5/i;->e:F

    iget p1, p1, Lk5/i;->e:F

    add-float/2addr v0, p1

    iput v0, p0, Lk5/i;->e:F

    return-void
.end method

.method public final c()Lk5/i;
    .locals 2

    new-instance v0, Lk5/i;

    iget v1, p0, Lk5/i;->d:F

    iget p0, p0, Lk5/i;->e:F

    invoke-direct {v0, v1, p0}, Lk5/i;-><init>(FF)V

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lk5/i;->c()Lk5/i;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lk5/i;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lk5/i;

    iget v2, p0, Lk5/i;->d:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lk5/i;->d:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget p0, p0, Lk5/i;->e:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    iget p1, p1, Lk5/i;->e:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final g()F
    .locals 2

    iget v0, p0, Lk5/i;->d:F

    mul-float/2addr v0, v0

    iget p0, p0, Lk5/i;->e:F

    mul-float/2addr p0, p0

    add-float/2addr p0, v0

    sget-object v0, Lk5/c;->d:[F

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final h(F)V
    .locals 1

    iget v0, p0, Lk5/i;->d:F

    mul-float/2addr v0, p1

    iput v0, p0, Lk5/i;->d:F

    iget v0, p0, Lk5/i;->e:F

    mul-float/2addr v0, p1

    iput v0, p0, Lk5/i;->e:F

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lk5/i;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lk5/i;->e:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()V
    .locals 1

    iget v0, p0, Lk5/i;->d:F

    neg-float v0, v0

    iput v0, p0, Lk5/i;->d:F

    iget v0, p0, Lk5/i;->e:F

    neg-float v0, v0

    iput v0, p0, Lk5/i;->e:F

    return-void
.end method

.method public final j()F
    .locals 3

    invoke-virtual {p0}, Lk5/i;->g()F

    move-result v0

    const/high16 v1, 0x34000000

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget v2, p0, Lk5/i;->d:F

    mul-float/2addr v2, v1

    iput v2, p0, Lk5/i;->d:F

    iget v2, p0, Lk5/i;->e:F

    mul-float/2addr v2, v1

    iput v2, p0, Lk5/i;->e:F

    return v0
.end method

.method public final k(Lk5/i;)V
    .locals 1

    iget v0, p1, Lk5/i;->d:F

    iput v0, p0, Lk5/i;->d:F

    iget p1, p1, Lk5/i;->e:F

    iput p1, p0, Lk5/i;->e:F

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lk5/i;->d:F

    iput v0, p0, Lk5/i;->e:F

    return-void
.end method

.method public final m(Lk5/i;)V
    .locals 2

    iget v0, p0, Lk5/i;->d:F

    iget v1, p1, Lk5/i;->d:F

    sub-float/2addr v0, v1

    iput v0, p0, Lk5/i;->d:F

    iget v0, p0, Lk5/i;->e:F

    iget p1, p1, Lk5/i;->e:F

    sub-float/2addr v0, p1

    iput v0, p0, Lk5/i;->e:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lk5/i;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lk5/i;->e:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
