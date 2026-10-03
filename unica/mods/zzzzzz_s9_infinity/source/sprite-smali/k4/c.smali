.class public final Lk4/c;
.super Landroidx/appcompat/widget/a;
.source "SourceFile"


# instance fields
.field public final d:LJ4/G;


# direct methods
.method public constructor <init>(LJ4/G;IZ)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/a;-><init>(LJ4/b0;IZ)V

    iput-object p1, p0, Lk4/c;->d:LJ4/G;

    return-void
.end method


# virtual methods
.method public final d()LJ4/C;
    .locals 0

    iget-object p0, p0, Lk4/c;->d:LJ4/G;

    return-object p0
.end method
