.class public final Lk5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final d:Lk5/i;

.field public final e:Lk5/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lk5/a;->d:Lk5/i;

    .line 3
    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lk5/a;->e:Lk5/i;

    return-void
.end method

.method public constructor <init>(Lk5/i;Lk5/i;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Lk5/i;->c()Lk5/i;

    move-result-object p1

    iput-object p1, p0, Lk5/a;->d:Lk5/i;

    .line 6
    invoke-virtual {p2}, Lk5/i;->c()Lk5/i;

    move-result-object p1

    iput-object p1, p0, Lk5/a;->e:Lk5/i;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lk5/a;

    iget-object v1, p0, Lk5/a;->d:Lk5/i;

    iget-object p0, p0, Lk5/a;->e:Lk5/i;

    invoke-direct {v0, v1, p0}, Lk5/a;-><init>(Lk5/i;Lk5/i;)V

    return-object v0
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

    const-class v3, Lk5/a;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lk5/a;

    iget-object v2, p1, Lk5/a;->d:Lk5/i;

    iget-object v3, p0, Lk5/a;->d:Lk5/i;

    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    return v1

    :cond_3
    invoke-virtual {v3, v2}, Lk5/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object p1, p1, Lk5/a;->e:Lk5/i;

    iget-object p0, p0, Lk5/a;->e:Lk5/i;

    if-nez p0, :cond_5

    if-eqz p1, :cond_6

    return v1

    :cond_5
    invoke-virtual {p0, p1}, Lk5/i;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lk5/a;->d:Lk5/i;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lk5/i;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v1, v2

    mul-int/2addr v1, v2

    iget-object p0, p0, Lk5/a;->e:Lk5/i;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lk5/i;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lk5/a;->d:Lk5/i;

    iget v3, v2, Lk5/i;->d:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk5/a;->e:Lk5/i;

    iget v4, p0, Lk5/i;->d:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "]\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lq/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lk5/i;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lk5/i;->e:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
