.class public final LJ4/i;
.super LJ4/n;
.source "SourceFile"


# instance fields
.field public final f:LV3/h;


# direct methods
.method public constructor <init>(LJ4/G;LV3/h;)V
    .locals 1

    const-string v0, "annotations"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, LJ4/n;-><init>(LJ4/G;)V

    iput-object p2, p0, LJ4/i;->f:LV3/h;

    return-void
.end method


# virtual methods
.method public final J0(LJ4/G;)LJ4/m;
    .locals 1

    new-instance v0, LJ4/i;

    iget-object p0, p0, LJ4/i;->f:LV3/h;

    invoke-direct {v0, p1, p0}, LJ4/i;-><init>(LJ4/G;LV3/h;)V

    return-object v0
.end method

.method public final p()LV3/h;
    .locals 0

    iget-object p0, p0, LJ4/i;->f:LV3/h;

    return-object p0
.end method
