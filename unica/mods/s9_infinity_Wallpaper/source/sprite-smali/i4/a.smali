.class public final Li4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Ljava/util/Set;

.field public final e:LJ4/G;


# direct methods
.method public constructor <init>(IIZLjava/util/Set;LJ4/G;)V
    .locals 1

    const-string v0, "howThisTypeIsUsed"

    invoke-static {p1, v0}, LB/a;->t(ILjava/lang/String;)V

    const-string v0, "flexibility"

    invoke-static {p2, v0}, LB/a;->t(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Li4/a;->a:I

    .line 3
    iput p2, p0, Li4/a;->b:I

    .line 4
    iput-boolean p3, p0, Li4/a;->c:Z

    .line 5
    iput-object p4, p0, Li4/a;->d:Ljava/util/Set;

    .line 6
    iput-object p5, p0, Li4/a;->e:LJ4/G;

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/util/Set;I)V
    .locals 6

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v3, p2

    and-int/lit8 p2, p4, 0x8

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    move-object v4, p3

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Li4/a;-><init>(IIZLjava/util/Set;LJ4/G;)V

    return-void
.end method

.method public static a(Li4/a;ILjava/util/Set;LJ4/G;I)Li4/a;
    .locals 6

    iget v1, p0, Li4/a;->a:I

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    iget p1, p0, Li4/a;->b:I

    :cond_0
    move v2, p1

    iget-boolean v3, p0, Li4/a;->c:Z

    and-int/lit8 p1, p4, 0x8

    if-eqz p1, :cond_1

    iget-object p2, p0, Li4/a;->d:Ljava/util/Set;

    :cond_1
    move-object v4, p2

    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_2

    iget-object p3, p0, Li4/a;->e:LJ4/G;

    :cond_2
    move-object v5, p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "howThisTypeIsUsed"

    invoke-static {v1, p0}, LB/a;->t(ILjava/lang/String;)V

    const-string p0, "flexibility"

    invoke-static {v2, p0}, LB/a;->t(ILjava/lang/String;)V

    new-instance p0, Li4/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Li4/a;-><init>(IIZLjava/util/Set;LJ4/G;)V

    return-object p0
.end method


# virtual methods
.method public final b(I)Li4/a;
    .locals 2

    const-string v0, "flexibility"

    invoke-static {p1, v0}, LB/a;->t(ILjava/lang/String;)V

    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Li4/a;->a(Li4/a;ILjava/util/Set;LJ4/G;I)Li4/a;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Li4/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Li4/a;

    iget v1, p1, Li4/a;->a:I

    iget v3, p0, Li4/a;->a:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Li4/a;->b:I

    iget v3, p1, Li4/a;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Li4/a;->c:Z

    iget-boolean v3, p1, Li4/a;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Li4/a;->d:Ljava/util/Set;

    iget-object v3, p1, Li4/a;->d:Ljava/util/Set;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Li4/a;->e:LJ4/G;

    iget-object p1, p1, Li4/a;->e:LJ4/G;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Li4/a;->a:I

    invoke-static {v0}, Lq/e;->c(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Li4/a;->b:I

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Li4/a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x0

    iget-object v2, p0, Li4/a;->d:Ljava/util/Set;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Li4/a;->e:LJ4/G;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, LJ4/C;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaTypeAttributes(howThisTypeIsUsed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Li4/a;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "COMMON"

    goto :goto_0

    :cond_1
    const-string v1, "SUPERTYPE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flexibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li4/a;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const-string v1, "null"

    goto :goto_1

    :cond_2
    const-string v1, "FLEXIBLE_LOWER_BOUND"

    goto :goto_1

    :cond_3
    const-string v1, "FLEXIBLE_UPPER_BOUND"

    goto :goto_1

    :cond_4
    const-string v1, "INFLEXIBLE"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isForAnnotationParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Li4/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visitedTypeParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li4/a;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Li4/a;->e:LJ4/G;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
