.class public final Ln0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:I

.field public final c:Ln0/g;

.field public final d:Ljava/util/HashSet;

.field public final e:Ln0/g;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;ILn0/g;Ljava/util/ArrayList;Ln0/g;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/y;->a:Ljava/util/UUID;

    iput p2, p0, Ln0/y;->b:I

    iput-object p3, p0, Ln0/y;->c:Ln0/g;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ln0/y;->d:Ljava/util/HashSet;

    iput-object p5, p0, Ln0/y;->e:Ln0/g;

    iput p6, p0, Ln0/y;->f:I

    iput p7, p0, Ln0/y;->g:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ln0/y;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ln0/y;

    iget v1, p0, Ln0/y;->f:I

    iget v2, p1, Ln0/y;->f:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget v1, p0, Ln0/y;->g:I

    iget v2, p1, Ln0/y;->g:I

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Ln0/y;->a:Ljava/util/UUID;

    iget-object v2, p1, Ln0/y;->a:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Ln0/y;->b:I

    iget v2, p1, Ln0/y;->b:I

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Ln0/y;->c:Ln0/g;

    iget-object v2, p1, Ln0/y;->c:Ln0/g;

    invoke-virtual {v1, v2}, Ln0/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Ln0/y;->d:Ljava/util/HashSet;

    iget-object v2, p1, Ln0/y;->d:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    :cond_7
    iget-object p0, p0, Ln0/y;->e:Ln0/g;

    iget-object p1, p1, Ln0/y;->e:Ln0/g;

    invoke-virtual {p0, p1}, Ln0/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Ln0/y;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/y;->b:I

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Ln0/y;->c:Ln0/g;

    invoke-virtual {v0}, Ln0/g;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln0/y;->d:Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Ln0/y;->e:Ln0/g;

    invoke-virtual {v0}, Ln0/g;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/y;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Ln0/y;->g:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkInfo{mId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ln0/y;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln0/y;->b:I

    invoke-static {v1}, Li4/b;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln0/y;->c:Ln0/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln0/y;->d:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln0/y;->e:Ln0/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
