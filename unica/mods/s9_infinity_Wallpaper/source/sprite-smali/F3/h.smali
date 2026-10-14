.class public abstract LF3/h;
.super LF3/c;
.source "SourceFile"

# interfaces
.implements LF3/g;
.implements LL3/e;


# instance fields
.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .line 1
    sget-object v3, LF3/b;->d:LF3/b;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, LF3/h;-><init>(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    .line 3
    invoke-direct/range {v0 .. v5}, LF3/c;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    iput p1, p0, LF3/h;->j:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, LF3/h;->k:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    .line 2
    invoke-direct/range {v0 .. v5}, LF3/h;-><init>(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()LL3/a;
    .locals 1

    sget-object v0, LF3/t;->a:LF3/u;

    invoke-virtual {v0, p0}, LF3/u;->a(LF3/h;)LL3/e;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LF3/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, LF3/h;

    invoke-virtual {p0}, LF3/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LF3/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LF3/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LF3/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, LF3/h;->k:I

    iget v3, p1, LF3/h;->k:I

    if-ne v1, v3, :cond_1

    iget v1, p0, LF3/h;->j:I

    iget v3, p1, LF3/h;->j:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, LF3/c;->e:Ljava/lang/Object;

    iget-object v3, p1, LF3/c;->e:Ljava/lang/Object;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LF3/c;->b()LL3/d;

    move-result-object p0

    invoke-virtual {p1}, LF3/c;->b()LL3/d;

    move-result-object p1

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    instance-of v0, p1, LL3/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, LF3/c;->d:LL3/a;

    if-nez v0, :cond_3

    invoke-virtual {p0}, LF3/h;->a()LL3/a;

    move-result-object v0

    iput-object v0, p0, LF3/c;->d:LL3/a;

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method public final getArity()I
    .locals 0

    iget p0, p0, LF3/h;->j:I

    return p0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, LF3/c;->b()LL3/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LF3/c;->b()LL3/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_0
    invoke-virtual {p0}, LF3/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, LF3/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LF3/c;->d:LL3/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LF3/h;->a()LL3/a;

    move-result-object v0

    iput-object v0, p0, LF3/c;->d:LL3/a;

    :cond_0
    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "<init>"

    invoke-virtual {p0}, LF3/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "constructor (Kotlin reflection is not available)"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "function "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LF3/c;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Kotlin reflection is not available)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
