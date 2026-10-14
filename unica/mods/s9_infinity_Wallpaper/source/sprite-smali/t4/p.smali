.class public abstract Lt4/p;
.super Lt4/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static g(Lt4/m;Lt4/p;ILt4/M;Ljava/lang/Class;)Lt4/o;
    .locals 7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v6, Lt4/o;

    new-instance v4, Lt4/n;

    const/4 v0, 0x1

    invoke-direct {v4, p2, p3, v0}, Lt4/n;-><init>(ILt4/O;Z)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lt4/o;-><init>(Lt4/m;Ljava/lang/Object;Lt4/p;Lt4/n;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static h(Lt4/m;Ljava/io/Serializable;Lt4/p;ILt4/O;Ljava/lang/Class;)Lt4/o;
    .locals 7

    new-instance v6, Lt4/o;

    new-instance v4, Lt4/n;

    const/4 v0, 0x0

    invoke-direct {v4, p3, p4, v0}, Lt4/n;-><init>(ILt4/O;Z)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lt4/o;-><init>(Lt4/m;Ljava/lang/Object;Lt4/p;Lt4/n;Ljava/lang/Class;)V

    return-object v6
.end method
