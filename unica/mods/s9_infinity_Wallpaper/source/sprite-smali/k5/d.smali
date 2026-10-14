.class public final Lk5/d;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk5/d;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lk5/d;->e:F

    return-void
.end method

.method public static final a(Lk5/d;Lk5/i;Lk5/i;)V
    .locals 4

    iget v0, p0, Lk5/d;->e:F

    iget v1, p1, Lk5/i;->d:F

    mul-float/2addr v1, v0

    iget p0, p0, Lk5/d;->d:F

    iget v2, p1, Lk5/i;->e:F

    mul-float v3, p0, v2

    sub-float/2addr v1, v3

    iput v1, p2, Lk5/i;->d:F

    iget p1, p1, Lk5/i;->d:F

    mul-float/2addr p0, p1

    mul-float/2addr v0, v2

    add-float/2addr v0, p0

    iput v0, p2, Lk5/i;->e:F

    return-void
.end method

.method public static final b(Lk5/d;Lk5/i;Lk5/i;)V
    .locals 4

    iget v0, p0, Lk5/d;->e:F

    iget v1, p1, Lk5/i;->d:F

    mul-float/2addr v1, v0

    iget p0, p0, Lk5/d;->d:F

    iget v2, p1, Lk5/i;->e:F

    mul-float v3, p0, v2

    add-float/2addr v3, v1

    iput v3, p2, Lk5/i;->d:F

    neg-float p0, p0

    iget p1, p1, Lk5/i;->d:F

    mul-float/2addr p0, p1

    mul-float/2addr v0, v2

    add-float/2addr v0, p0

    iput v0, p2, Lk5/i;->e:F

    return-void
.end method


# virtual methods
.method public final c(F)V
    .locals 1

    sget-object v0, Lk5/c;->d:[F

    sget v0, Lk5/e;->a:I

    invoke-static {p1}, Lk5/c;->R(F)F

    move-result v0

    iput v0, p0, Lk5/d;->d:F

    invoke-static {p1}, Lk5/c;->O(F)F

    move-result p1

    iput p1, p0, Lk5/d;->e:F

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lk5/d;

    invoke-direct {v0}, Lk5/d;-><init>()V

    iget v1, p0, Lk5/d;->d:F

    iput v1, v0, Lk5/d;->d:F

    iget p0, p0, Lk5/d;->e:F

    iput p0, v0, Lk5/d;->e:F

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rot(s:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lk5/d;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lk5/d;->e:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
