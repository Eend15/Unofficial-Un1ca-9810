.class public final Lr3/b;
.super Lr3/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final d:Lr3/c;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lr3/c;II)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lr3/c;-><init>()V

    iput-object p1, p0, Lr3/b;->d:Lr3/c;

    iput p2, p0, Lr3/b;->e:I

    invoke-virtual {p1}, Lr3/c;->g()I

    move-result p1

    invoke-static {p2, p3, p1}, Lp4/g;->m(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lr3/b;->f:I

    return-void
.end method


# virtual methods
.method public final g()I
    .locals 0

    iget p0, p0, Lr3/b;->f:I

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lr3/b;->f:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lr3/b;->e:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lr3/b;->d:Lr3/c;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, v2, p1, v0}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
