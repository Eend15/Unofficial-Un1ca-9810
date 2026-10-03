.class public final Lk5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final d:Lk5/i;

.field public final e:Lk5/i;

.field public final f:Lk5/i;

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lk5/f;->d:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lk5/f;->e:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lk5/f;->f:Lk5/i;

    return-void
.end method


# virtual methods
.method public final a(Lk5/h;F)V
    .locals 6

    iget-object v0, p1, Lk5/h;->d:Lk5/i;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    iget-object v2, p0, Lk5/f;->e:Lk5/i;

    iget v3, v2, Lk5/i;->d:F

    mul-float/2addr v3, v1

    iget-object v4, p0, Lk5/f;->f:Lk5/i;

    iget v5, v4, Lk5/i;->d:F

    mul-float/2addr v5, p2

    add-float/2addr v5, v3

    iput v5, v0, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    mul-float/2addr v2, v1

    iget v3, v4, Lk5/i;->e:F

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    iput v3, v0, Lk5/i;->e:F

    iget v0, p0, Lk5/f;->g:F

    mul-float/2addr v1, v0

    iget v0, p0, Lk5/f;->h:F

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    iget-object v0, p1, Lk5/h;->e:Lk5/d;

    invoke-virtual {v0, p2}, Lk5/d;->c(F)V

    iget-object p1, p1, Lk5/h;->d:Lk5/i;

    iget p2, p1, Lk5/i;->d:F

    iget v1, v0, Lk5/d;->e:F

    iget-object p0, p0, Lk5/f;->d:Lk5/i;

    iget v2, p0, Lk5/i;->d:F

    mul-float/2addr v2, v1

    iget v0, v0, Lk5/d;->d:F

    iget v3, p0, Lk5/i;->e:F

    mul-float v4, v0, v3

    sub-float/2addr v2, v4

    sub-float/2addr p2, v2

    iput p2, p1, Lk5/i;->d:F

    iget p2, p1, Lk5/i;->e:F

    iget p0, p0, Lk5/i;->d:F

    mul-float/2addr v0, p0

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    sub-float/2addr p2, v1

    iput p2, p1, Lk5/i;->e:F

    return-void
.end method

.method public final b(Lk5/f;)V
    .locals 3

    iget-object v0, p1, Lk5/f;->d:Lk5/i;

    iget-object v1, p0, Lk5/f;->d:Lk5/i;

    iget v2, v0, Lk5/i;->d:F

    iput v2, v1, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, v1, Lk5/i;->e:F

    iget-object v0, p0, Lk5/f;->e:Lk5/i;

    iget-object v1, p1, Lk5/f;->e:Lk5/i;

    iget v2, v1, Lk5/i;->d:F

    iput v2, v0, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    iget-object v0, p0, Lk5/f;->f:Lk5/i;

    iget-object v1, p1, Lk5/f;->f:Lk5/i;

    iget v2, v1, Lk5/i;->d:F

    iput v2, v0, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    iget v0, p1, Lk5/f;->g:F

    iput v0, p0, Lk5/f;->g:F

    iget p1, p1, Lk5/f;->h:F

    iput p1, p0, Lk5/f;->h:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sweep:\nlocalCenter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk5/f;->d:Lk5/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "c0: "

    invoke-static {v0, v2}, Lq/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lk5/f;->e:Lk5/i;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", c: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk5/f;->f:Lk5/i;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "a0: "

    invoke-static {v0, v2}, Lq/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lk5/f;->g:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", a: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lk5/f;->h:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
