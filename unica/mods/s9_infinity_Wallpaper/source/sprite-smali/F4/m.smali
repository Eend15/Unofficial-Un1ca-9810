.class public final LF4/m;
.super Lx4/b;
.source "SourceFile"


# instance fields
.field public final c:LJ4/C;


# direct methods
.method public constructor <init>(LJ4/C;Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, LF4/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LF4/l;-><init>(ILJ4/C;)V

    invoke-direct {p0, p2, v0}, Lx4/b;-><init>(Ljava/util/List;LE3/b;)V

    iput-object p1, p0, LF4/m;->c:LJ4/C;

    return-void
.end method
