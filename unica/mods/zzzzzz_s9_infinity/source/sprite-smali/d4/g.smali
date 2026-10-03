.class public final Ld4/g;
.super Ld4/F;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(LU3/s;)LU3/s;
    .locals 2

    const-string v0, "functionDescriptor"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, LX3/p;

    invoke-virtual {v0}, LX3/p;->r()Ls4/f;

    move-result-object v0

    const-string v1, "functionDescriptor.name"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld4/g;->b(Ls4/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Ld4/f;->e:Ld4/f;

    invoke-static {p0, v0}, Lz4/e;->b(LU3/b;LE3/b;)LU3/b;

    move-result-object p0

    check-cast p0, LU3/s;

    return-object p0
.end method

.method public static b(Ls4/f;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld4/F;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
