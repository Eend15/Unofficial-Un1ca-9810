.class public final Ld4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv4/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lv4/g;
    .locals 0

    sget-object p0, Lv4/g;->f:Lv4/g;

    return-object p0
.end method

.method public b(LU3/a;LU3/a;LU3/e;)Lv4/h;
    .locals 1

    const-string p0, "superDescriptor"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDescriptor"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, LX3/L;

    sget-object p3, Lv4/h;->f:Lv4/h;

    if-eqz p0, :cond_5

    instance-of p0, p1, LX3/L;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, LX3/L;

    move-object p0, p2

    check-cast p0, LX3/p;

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    check-cast p1, LX3/L;

    move-object v0, p1

    check-cast v0, LX3/p;

    invoke-virtual {v0}, LX3/p;->r()Ls4/f;

    move-result-object v0

    invoke-static {p0, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object p3

    :cond_1
    invoke-static {p2}, Le0/a;->S(LX3/L;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Le0/a;->S(LX3/L;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lv4/h;->d:Lv4/h;

    return-object p0

    :cond_2
    invoke-static {p2}, Le0/a;->S(LX3/L;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p1}, Le0/a;->S(LX3/L;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return-object p3

    :cond_4
    :goto_0
    sget-object p0, Lv4/h;->e:Lv4/h;

    return-object p0

    :cond_5
    :goto_1
    return-object p3
.end method
