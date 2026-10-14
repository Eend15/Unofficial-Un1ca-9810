.class public final LU3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls4/f;

.field public final b:LJ4/G;


# direct methods
.method public constructor <init>(Ls4/f;LJ4/G;)V
    .locals 1

    const-string v0, "underlyingType"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU3/t;->a:Ls4/f;

    iput-object p2, p0, LU3/t;->b:LJ4/G;

    return-void
.end method
