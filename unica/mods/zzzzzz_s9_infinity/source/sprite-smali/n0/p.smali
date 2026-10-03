.class public final Ln0/p;
.super LF4/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, LF4/x;-><init>(Ljava/lang/Class;)V

    iget-object p0, p0, LF4/x;->c:Ljava/lang/Object;

    check-cast p0, Lw0/p;

    const-class p1, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lw0/p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Ln0/z;
    .locals 3

    new-instance v0, Ln0/q;

    iget-object v1, p0, LF4/x;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    iget-object v2, p0, LF4/x;->c:Ljava/lang/Object;

    check-cast v2, Lw0/p;

    iget-object p0, p0, LF4/x;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1, v2, p0}, Ln0/z;-><init>(Ljava/util/UUID;Lw0/p;Ljava/util/LinkedHashSet;)V

    return-object v0
.end method

.method public final g()LF4/x;
    .locals 0

    return-object p0
.end method
