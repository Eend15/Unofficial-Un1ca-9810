.class public final Lk5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final d:Lk5/j;

.field public final e:Lk5/j;

.field public final f:Lk5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lk5/b;

    new-instance v1, Lk5/j;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lk5/j;-><init>(FFF)V

    new-instance v4, Lk5/j;

    invoke-direct {v4, v3, v2, v3}, Lk5/j;-><init>(FFF)V

    new-instance v5, Lk5/j;

    invoke-direct {v5, v3, v3, v2}, Lk5/j;-><init>(FFF)V

    invoke-direct {v0, v1, v4, v5}, Lk5/b;-><init>(Lk5/j;Lk5/j;Lk5/j;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk5/j;

    invoke-direct {v0}, Lk5/j;-><init>()V

    iput-object v0, p0, Lk5/b;->d:Lk5/j;

    .line 3
    new-instance v0, Lk5/j;

    invoke-direct {v0}, Lk5/j;-><init>()V

    iput-object v0, p0, Lk5/b;->e:Lk5/j;

    .line 4
    new-instance v0, Lk5/j;

    invoke-direct {v0}, Lk5/j;-><init>()V

    iput-object v0, p0, Lk5/b;->f:Lk5/j;

    return-void
.end method

.method public constructor <init>(Lk5/j;Lk5/j;Lk5/j;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Lk5/j;->b()Lk5/j;

    move-result-object p1

    iput-object p1, p0, Lk5/b;->d:Lk5/j;

    .line 7
    invoke-virtual {p2}, Lk5/j;->b()Lk5/j;

    move-result-object p1

    iput-object p1, p0, Lk5/b;->e:Lk5/j;

    .line 8
    invoke-virtual {p3}, Lk5/j;->b()Lk5/j;

    move-result-object p1

    iput-object p1, p0, Lk5/b;->f:Lk5/j;

    return-void
.end method


# virtual methods
.method public final a(Lk5/i;Lk5/i;)V
    .locals 5

    iget-object v0, p0, Lk5/b;->d:Lk5/j;

    iget v1, v0, Lk5/j;->d:F

    iget-object p0, p0, Lk5/b;->e:Lk5/j;

    iget v2, p0, Lk5/j;->d:F

    iget v0, v0, Lk5/j;->e:F

    iget p0, p0, Lk5/j;->e:F

    mul-float v3, v1, p0

    mul-float v4, v2, v0

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :cond_0
    iget v4, p1, Lk5/i;->d:F

    mul-float/2addr p0, v4

    iget v4, p1, Lk5/i;->e:F

    mul-float/2addr v2, v4

    sub-float/2addr p0, v2

    mul-float/2addr p0, v3

    iput p0, p2, Lk5/i;->d:F

    mul-float/2addr v1, v4

    iget p0, p1, Lk5/i;->d:F

    mul-float/2addr v0, p0

    sub-float/2addr v1, v0

    mul-float/2addr v1, v3

    iput v1, p2, Lk5/i;->e:F

    return-void
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

    const-class v3, Lk5/b;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lk5/b;

    iget-object v2, p1, Lk5/b;->d:Lk5/j;

    iget-object v3, p0, Lk5/b;->d:Lk5/j;

    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    return v1

    :cond_3
    invoke-virtual {v3, v2}, Lk5/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p1, Lk5/b;->e:Lk5/j;

    iget-object v3, p0, Lk5/b;->e:Lk5/j;

    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    return v1

    :cond_5
    invoke-virtual {v3, v2}, Lk5/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object p1, p1, Lk5/b;->f:Lk5/j;

    iget-object p0, p0, Lk5/b;->f:Lk5/j;

    if-nez p0, :cond_7

    if-eqz p1, :cond_8

    return v1

    :cond_7
    invoke-virtual {p0, p1}, Lk5/j;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lk5/b;->d:Lk5/j;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lk5/j;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v1, v2

    mul-int/2addr v1, v2

    iget-object v3, p0, Lk5/b;->e:Lk5/j;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lk5/j;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object p0, p0, Lk5/b;->f:Lk5/j;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lk5/j;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method
