.class public final LO4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LU3/O;

.field public final b:LJ4/C;

.field public final c:LJ4/C;


# direct methods
.method public constructor <init>(LU3/O;LJ4/C;LJ4/C;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inProjection"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outProjection"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO4/d;->a:LU3/O;

    iput-object p2, p0, LO4/d;->b:LJ4/C;

    iput-object p3, p0, LO4/d;->c:LJ4/C;

    return-void
.end method
