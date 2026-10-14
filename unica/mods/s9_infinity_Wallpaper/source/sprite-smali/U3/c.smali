.class public final LU3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/O;


# instance fields
.field public final d:LU3/O;

.field public final e:LU3/h;

.field public final f:I


# direct methods
.method public constructor <init>(LU3/O;LU3/h;I)V
    .locals 1

    const-string v0, "declarationDescriptor"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU3/c;->d:LU3/O;

    iput-object p2, p0, LU3/c;->e:LU3/h;

    iput p3, p0, LU3/c;->f:I

    return-void
.end method


# virtual methods
.method public final E()LJ4/M;
    .locals 0

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/g;->E()LJ4/M;

    move-result-object p0

    return-object p0
.end method

.method public final H()LI4/o;
    .locals 0

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/O;->H()LI4/o;

    move-result-object p0

    return-object p0
.end method

.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0, p1, p2}, LU3/j;->L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a()LU3/O;
    .locals 0

    .line 3
    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/O;->a()LU3/O;

    move-result-object p0

    return-object p0
.end method

.method public final a()LU3/g;
    .locals 0

    .line 1
    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/O;->a()LU3/O;

    move-result-object p0

    return-object p0
.end method

.method public final a()LU3/j;
    .locals 0

    .line 2
    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/O;->a()LU3/O;

    move-result-object p0

    return-object p0
.end method

.method public final g()LU3/j;
    .locals 0

    iget-object p0, p0, LU3/c;->e:LU3/h;

    return-object p0
.end method

.method public final getUpperBounds()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final i()LU3/L;
    .locals 0

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/k;->i()LU3/L;

    move-result-object p0

    return-object p0
.end method

.method public final i0()Z
    .locals 0

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/O;->i0()Z

    move-result p0

    return p0
.end method

.method public final n()LJ4/G;
    .locals 0

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/g;->n()LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ls4/f;
    .locals 0

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object p0

    return-object p0
.end method

.method public final r0()I
    .locals 1

    iget-object v0, p0, LU3/c;->d:LU3/O;

    invoke-interface {v0}, LU3/O;->r0()I

    move-result v0

    iget p0, p0, LU3/c;->f:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "[inner-copy]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z()I
    .locals 0

    iget-object p0, p0, LU3/c;->d:LU3/O;

    invoke-interface {p0}, LU3/O;->z()I

    move-result p0

    return p0
.end method
