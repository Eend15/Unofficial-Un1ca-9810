.class public final LO3/P;
.super LO3/Y;
.source "SourceFile"

# interfaces
.implements LL3/j;


# instance fields
.field public final h:LO3/S;


# direct methods
.method public constructor <init>(LO3/S;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LO3/Y;-><init>()V

    iput-object p1, p0, LO3/P;->h:LO3/S;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LO3/P;->h:LO3/S;

    invoke-virtual {p0, p1}, LO3/S;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j()LO3/c0;
    .locals 0

    iget-object p0, p0, LO3/P;->h:LO3/S;

    return-object p0
.end method
