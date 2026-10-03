.class public final Lf4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJ4/C;

.field public final b:Z


# direct methods
.method public constructor <init>(LJ4/C;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf4/i;->a:LJ4/C;

    iput-boolean p2, p0, Lf4/i;->b:Z

    return-void
.end method
