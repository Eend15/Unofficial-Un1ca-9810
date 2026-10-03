.class public final LO3/C;
.super LO3/O;
.source "SourceFile"


# instance fields
.field public final m:LO3/l0;


# direct methods
.method public constructor <init>(LO3/z;LX3/L;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, LO3/O;-><init>(LO3/z;LX3/L;)V

    new-instance p1, LC4/g;

    const/16 p2, 0x10

    invoke-direct {p1, p2, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    new-instance p2, LO3/l0;

    invoke-direct {p2, p1}, LO3/l0;-><init>(LE3/a;)V

    iput-object p2, p0, LO3/C;->m:LO3/l0;

    return-void
.end method
