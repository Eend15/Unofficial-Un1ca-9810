.class public final Lk5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk5/j;->f:F

    iput v0, p0, Lk5/j;->e:F

    iput v0, p0, Lk5/j;->d:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lk5/j;->d:F

    .line 5
    iput p2, p0, Lk5/j;->e:F

    .line 6
    iput p3, p0, Lk5/j;->f:F

    return-void
.end method

.method public static final c(Lk5/j;Lk5/j;Lk5/j;)V
    .locals 4

    iget v0, p0, Lk5/j;->e:F

    iget v1, p1, Lk5/j;->f:F

    mul-float/2addr v0, v1

    iget v2, p0, Lk5/j;->f:F

    iget v3, p1, Lk5/j;->e:F

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, p2, Lk5/j;->d:F

    iget v0, p1, Lk5/j;->d:F

    mul-float/2addr v2, v0

    iget v3, p0, Lk5/j;->d:F

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    iput v2, p2, Lk5/j;->e:F

    iget p1, p1, Lk5/j;->e:F

    mul-float/2addr v3, p1

    iget p0, p0, Lk5/j;->e:F

    mul-float/2addr p0, v0

    sub-float/2addr v3, p0

    iput v3, p2, Lk5/j;->f:F

    return-void
.end method

.method public static final d(Lk5/j;Lk5/j;)F
    .locals 3

    iget v0, p0, Lk5/j;->d:F

    iget v1, p1, Lk5/j;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lk5/j;->e:F

    iget v2, p1, Lk5/j;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget p0, p0, Lk5/j;->f:F

    iget p1, p1, Lk5/j;->f:F

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    return p0
.end method


# virtual methods
.method public final a(Lk5/j;)V
    .locals 2

    iget v0, p0, Lk5/j;->d:F

    iget v1, p1, Lk5/j;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lk5/j;->d:F

    iget v0, p0, Lk5/j;->e:F

    iget v1, p1, Lk5/j;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lk5/j;->e:F

    iget v0, p0, Lk5/j;->f:F

    iget p1, p1, Lk5/j;->f:F

    add-float/2addr v0, p1

    iput v0, p0, Lk5/j;->f:F

    return-void
.end method

.method public final b()Lk5/j;
    .locals 2

    new-instance v0, Lk5/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p0, Lk5/j;->d:F

    iput v1, v0, Lk5/j;->d:F

    iget v1, p0, Lk5/j;->e:F

    iput v1, v0, Lk5/j;->e:F

    iget p0, p0, Lk5/j;->f:F

    iput p0, v0, Lk5/j;->f:F

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lk5/j;->b()Lk5/j;

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

    const-class v3, Lk5/j;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lk5/j;

    iget v2, p0, Lk5/j;->d:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lk5/j;->d:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lk5/j;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lk5/j;->e:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget p0, p0, Lk5/j;->f:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    iget p1, p1, Lk5/j;->f:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lk5/j;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lk5/j;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lk5/j;->f:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lk5/j;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk5/j;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lk5/j;->f:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
