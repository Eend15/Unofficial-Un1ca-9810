.class public abstract Lx4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx4/g;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(LU3/x;)LJ4/C;
.end method

.method public b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_3

    invoke-virtual {p0}, Lx4/g;->b()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p1, Lx4/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lx4/g;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lx4/g;->b()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-static {p0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lx4/g;->b()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lx4/g;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
