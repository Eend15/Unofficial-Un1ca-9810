.class public final Lk4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk4/h;

.field public final b:Z


# direct methods
.method public constructor <init>(Lk4/h;Z)V
    .locals 1

    const-string v0, "qualifier"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/i;->a:Lk4/h;

    iput-boolean p2, p0, Lk4/i;->b:Z

    return-void
.end method

.method public static a(Lk4/i;Z)Lk4/i;
    .locals 1

    iget-object v0, p0, Lk4/i;->a:Lk4/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "qualifier"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lk4/i;

    invoke-direct {p0, v0, p1}, Lk4/i;-><init>(Lk4/h;Z)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk4/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk4/i;

    iget-object v1, p1, Lk4/i;->a:Lk4/h;

    iget-object v3, p0, Lk4/i;->a:Lk4/h;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lk4/i;->b:Z

    iget-boolean p1, p1, Lk4/i;->b:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lk4/i;->a:Lk4/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lk4/i;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NullabilityQualifierWithMigrationStatus(qualifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk4/i;->a:Lk4/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isForWarningOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lk4/i;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
