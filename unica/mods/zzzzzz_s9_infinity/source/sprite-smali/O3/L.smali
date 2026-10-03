.class public final LO3/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL3/h;


# static fields
.field public static final synthetic e:[LL3/l;


# instance fields
.field public final a:LO3/k0;

.field public final b:LO3/p;

.field public final c:I

.field public final d:LL3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LO3/L;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v4, "annotations"

    const-string v5, "getAnnotations()Ljava/util/List;"

    invoke-direct {v3, v2, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, LO3/L;->e:[LL3/l;

    return-void
.end method

.method public constructor <init>(LO3/p;ILL3/g;LE3/a;)V
    .locals 1

    const-string v0, "callable"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/L;->b:LO3/p;

    iput p2, p0, LO3/L;->c:I

    iput-object p3, p0, LO3/L;->d:LL3/g;

    const/4 p1, 0x0

    invoke-static {p1, p4}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object p2

    iput-object p2, p0, LO3/L;->a:LO3/k0;

    new-instance p2, LC4/g;

    const/16 p3, 0x14

    invoke-direct {p2, p3, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    sget-object v0, LO3/L;->e:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/L;->a:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/H;

    instance-of v0, p0, LX3/W;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, LX3/W;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, LX3/W;->J0()LU3/a;

    move-result-object v0

    invoke-interface {v0}, LU3/a;->j0()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    check-cast p0, LX3/p;

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    const-string v0, "valueParameter.name"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ls4/f;->e:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LO3/L;

    if-eqz v0, :cond_0

    check-cast p1, LO3/L;

    iget-object v0, p1, LO3/L;->b:LO3/p;

    iget-object v1, p0, LO3/L;->b:LO3/p;

    invoke-static {v1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, LO3/L;->c:I

    iget p0, p0, LO3/L;->c:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LO3/L;->b:LO3/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, LO3/L;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, LO3/p0;->a:Lu4/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LO3/L;->d:LL3/g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parameter #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, LO3/L;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LO3/L;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "extension receiver parameter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "instance parameter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LO3/L;->b:LO3/p;

    invoke-virtual {p0}, LO3/p;->f()LU3/b;

    move-result-object p0

    instance-of v1, p0, LX3/L;

    if-eqz v1, :cond_3

    check-cast p0, LX3/L;

    invoke-static {p0}, LO3/p0;->c(LX3/L;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    instance-of v1, p0, LU3/s;

    if-eqz v1, :cond_4

    check-cast p0, LU3/s;

    invoke-static {p0}, LO3/p0;->b(LU3/s;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal callable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
