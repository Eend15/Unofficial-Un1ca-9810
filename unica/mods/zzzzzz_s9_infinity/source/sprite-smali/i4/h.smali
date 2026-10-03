.class public final Li4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LU3/O;

.field public final b:Z

.field public final c:Li4/a;


# direct methods
.method public constructor <init>(LU3/O;ZLi4/a;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAttr"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/h;->a:LU3/O;

    iput-boolean p2, p0, Li4/h;->b:Z

    iput-object p3, p0, Li4/h;->c:Li4/a;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Li4/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Li4/h;

    iget-object v0, p1, Li4/h;->a:LU3/O;

    iget-object v2, p0, Li4/h;->a:LU3/O;

    invoke-static {v0, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Li4/h;->b:Z

    iget-boolean v2, p0, Li4/h;->b:Z

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Li4/h;->c:Li4/a;

    iget v0, p1, Li4/a;->b:I

    iget-object p0, p0, Li4/h;->c:Li4/a;

    iget v2, p0, Li4/a;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Li4/a;->a:I

    iget v2, p0, Li4/a;->a:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Li4/a;->c:Z

    iget-boolean v2, p0, Li4/a;->c:Z

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Li4/a;->e:LJ4/G;

    iget-object p0, p0, Li4/a;->e:LJ4/G;

    invoke-static {p1, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Li4/h;->a:LU3/O;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Li4/h;->b:Z

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x1f

    iget-object p0, p0, Li4/h;->c:Li4/a;

    iget v2, p0, Li4/a;->b:I

    invoke-static {v2}, Lq/e;->c(I)I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Li4/a;->a:I

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Li4/a;->c:Z

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object p0, p0, Li4/a;->e:LJ4/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LJ4/C;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataToEraseUpperBound(typeParameter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Li4/h;->a:LU3/O;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Li4/h;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", typeAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Li4/h;->c:Li4/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
