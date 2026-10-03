.class public final Lk4/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJ4/C;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(LJ4/C;ZZ)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/m;->a:LJ4/C;

    iput-boolean p2, p0, Lk4/m;->b:Z

    iput-boolean p3, p0, Lk4/m;->c:Z

    return-void
.end method
