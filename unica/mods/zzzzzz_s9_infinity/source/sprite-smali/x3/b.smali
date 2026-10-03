.class public final Lx3/b;
.super Lr3/c;
.source "SourceFile"

# interfaces
.implements Lx3/a;
.implements Ljava/io/Serializable;


# instance fields
.field public final d:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>([Ljava/lang/Enum;)V
    .locals 1

    const-string v0, "entries"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lr3/c;-><init>()V

    iput-object p1, p0, Lx3/b;->d:[Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/lang/Enum;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/lang/Enum;

    const-string v0, "element"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "<this>"

    iget-object p0, p0, Lx3/b;->d:[Ljava/lang/Enum;

    invoke-static {p0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v0, :cond_1

    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object p0, p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lx3/b;->d:[Ljava/lang/Enum;

    array-length p0, p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lx3/b;->d:[Ljava/lang/Enum;

    array-length v0, p0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

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

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    instance-of v0, p1, Ljava/lang/Enum;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/lang/Enum;

    const-string v0, "element"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "<this>"

    iget-object p0, p0, Lx3/b;->d:[Ljava/lang/Enum;

    invoke-static {p0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v0, :cond_1

    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object p0, p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-ne p0, p1, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Enum;

    const-string v0, "element"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lx3/b;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
