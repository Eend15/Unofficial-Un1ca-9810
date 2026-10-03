.class public final LO3/E;
.super LO3/S;
.source "SourceFile"

# interfaces
.implements LL3/f;


# instance fields
.field public final m:LO3/l0;


# direct methods
.method public constructor <init>(LO3/z;LX3/L;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, LO3/S;-><init>(LO3/z;LX3/L;)V

    .line 6
    new-instance p1, LC4/g;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    .line 7
    new-instance p2, LO3/l0;

    invoke-direct {p2, p1}, LO3/l0;-><init>(LE3/a;)V

    .line 8
    iput-object p2, p0, LO3/E;->m:LO3/l0;

    return-void
.end method

.method public constructor <init>(LO3/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LO3/S;-><init>(LO3/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance p1, LC4/g;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    .line 3
    new-instance p2, LO3/l0;

    invoke-direct {p2, p1}, LO3/l0;-><init>(LE3/a;)V

    .line 4
    iput-object p2, p0, LO3/E;->m:LO3/l0;

    return-void
.end method
