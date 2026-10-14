.class public final Lv4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final a:Lv4/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv4/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv4/k;->a:Lv4/k;

    return-void
.end method

.method public static a(LU3/j;)I
    .locals 1

    invoke-static {p0}, Lv4/f;->m(LU3/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    instance-of v0, p0, LU3/i;

    if-eqz v0, :cond_1

    const/4 p0, 0x7

    return p0

    :cond_1
    instance-of v0, p0, LX3/L;

    if-eqz v0, :cond_3

    check-cast p0, LX3/L;

    iget-object p0, p0, LX3/L;->v:LX3/O;

    if-nez p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    instance-of v0, p0, LU3/s;

    if-eqz v0, :cond_5

    check-cast p0, LU3/s;

    invoke-interface {p0}, LU3/a;->Y()LU3/J;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    instance-of v0, p0, LU3/e;

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    instance-of p0, p0, LH4/v;

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, LU3/j;

    check-cast p2, LU3/j;

    invoke-static {p2}, Lv4/k;->a(LU3/j;)I

    move-result p0

    invoke-static {p1}, Lv4/k;->a(LU3/j;)I

    move-result v0

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p1, p0}, Lv4/f;->n(LU3/j;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, p0}, Lv4/f;->n(LU3/j;I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, LU3/j;->r()Ls4/f;

    move-result-object p0

    invoke-interface {p2}, LU3/j;->r()Ls4/f;

    move-result-object p1

    iget-object p0, p0, Ls4/f;->d:Ljava/lang/String;

    iget-object p1, p1, Ls4/f;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    return v0
.end method
