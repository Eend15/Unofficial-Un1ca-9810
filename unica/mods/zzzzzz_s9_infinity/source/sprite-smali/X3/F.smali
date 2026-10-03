.class public abstract LX3/F;
.super LX3/q;
.source "SourceFile"

# interfaces
.implements LU3/B;


# instance fields
.field public final h:Ls4/c;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(LU3/x;Ls4/c;)V
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LV3/g;->a:LV3/f;

    invoke-virtual {p2}, Ls4/c;->g()Ls4/f;

    move-result-object v1

    sget-object v2, LU3/L;->a:LU3/M;

    invoke-direct {p0, p1, v0, v1, v2}, LX3/q;-><init>(LU3/j;LV3/h;Ls4/f;LU3/L;)V

    iput-object p2, p0, LX3/F;->h:Ls4/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LX3/F;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final H0()LU3/x;
    .locals 0

    invoke-super {p0}, LX3/q;->g()LU3/j;

    move-result-object p0

    check-cast p0, LU3/x;

    return-object p0
.end method

.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->i(LX3/F;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g()LU3/j;
    .locals 0

    invoke-super {p0}, LX3/q;->g()LU3/j;

    move-result-object p0

    check-cast p0, LU3/x;

    return-object p0
.end method

.method public i()LU3/L;
    .locals 0

    sget-object p0, LU3/L;->a:LU3/M;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LX3/F;->i:Ljava/lang/String;

    return-object p0
.end method
