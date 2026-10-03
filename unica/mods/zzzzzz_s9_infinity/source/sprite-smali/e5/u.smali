.class public final Le5/u;
.super Lr3/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final d:[Le5/m;

.field public final e:[I


# direct methods
.method public constructor <init>([Le5/m;[I)V
    .locals 0

    invoke-direct {p0}, Lr3/c;-><init>()V

    iput-object p1, p0, Le5/u;->d:[Le5/m;

    iput-object p2, p0, Le5/u;->e:[I

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Le5/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Le5/m;

    invoke-super {p0, p1}, Lr3/c;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Le5/u;->d:[Le5/m;

    array-length p0, p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le5/u;->d:[Le5/m;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Le5/m;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Le5/m;

    invoke-super {p0, p1}, Lr3/c;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Le5/m;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Le5/m;

    invoke-super {p0, p1}, Lr3/c;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
