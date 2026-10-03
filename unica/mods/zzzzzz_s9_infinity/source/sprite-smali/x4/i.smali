.class public final Lx4/i;
.super Lx4/g;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lq3/m;->a:Lq3/m;

    invoke-direct {p0, v0}, Lx4/g;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lx4/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(LU3/x;)LJ4/C;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx4/i;->b:Ljava/lang/String;

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx4/i;->b:Ljava/lang/String;

    return-object p0
.end method
