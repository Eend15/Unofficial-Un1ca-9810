.class public final Lz4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS4/b;


# instance fields
.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lz4/c;->d:Z

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, LU3/b;

    iget-boolean p0, p0, Lz4/c;->d:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LU3/b;->a()LU3/b;

    move-result-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, LU3/b;->m()Ljava/util/Collection;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lr3/r;->d:Lr3/r;

    :cond_3
    return-object v0
.end method
