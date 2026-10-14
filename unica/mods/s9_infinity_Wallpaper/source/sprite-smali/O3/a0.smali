.class public abstract LO3/a0;
.super LO3/W;
.source "SourceFile"


# static fields
.field public static final synthetic g:[LL3/l;


# instance fields
.field public final e:LO3/k0;

.field public final f:LO3/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LO3/a0;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v4, "caller"

    const-string v5, "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v3, v2, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, LO3/a0;->g:[LL3/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LO3/p;-><init>()V

    new-instance v0, LO3/Z;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LO3/Z;-><init>(LO3/a0;I)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object v0

    iput-object v0, p0, LO3/a0;->e:LO3/k0;

    new-instance v0, LO3/Z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LO3/Z;-><init>(LO3/a0;I)V

    new-instance v1, LO3/l0;

    invoke-direct {v1, v0}, LO3/l0;-><init>(LE3/a;)V

    iput-object v1, p0, LO3/a0;->f:LO3/l0;

    return-void
.end method


# virtual methods
.method public final c()LP3/f;
    .locals 2

    sget-object v0, LO3/a0;->g:[LL3/l;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/a0;->f:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LP3/f;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LO3/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    check-cast p1, LO3/a0;

    invoke-virtual {p1}, LO3/W;->j()LO3/c0;

    move-result-object p1

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()LU3/b;
    .locals 2

    sget-object v0, LO3/a0;->g:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/a0;->e:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/N;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {p0}, LO3/c0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()LU3/I;
    .locals 2

    sget-object v0, LO3/a0;->g:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/a0;->e:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/N;

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<set-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    iget-object p0, p0, LO3/c0;->h:Ljava/lang/String;

    const/16 v1, 0x3e

    invoke-static {v0, p0, v1}, Li4/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setter of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
