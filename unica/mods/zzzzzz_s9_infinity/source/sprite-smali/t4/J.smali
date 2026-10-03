.class public final Lt4/J;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lt4/u;


# instance fields
.field public final d:Lt4/t;


# direct methods
.method public constructor <init>(Lt4/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lt4/J;->d:Lt4/t;

    return-void
.end method


# virtual methods
.method public final b()Lt4/J;
    .locals 0

    return-object p0
.end method

.method public final c(Lt4/w;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lt4/J;->d:Lt4/t;

    iget-object p0, p0, Lt4/t;->d:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final f(I)Lt4/e;
    .locals 0

    iget-object p0, p0, Lt4/J;->d:Lt4/t;

    invoke-virtual {p0, p1}, Lt4/t;->f(I)Lt4/e;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lt4/J;->d:Lt4/t;

    invoke-virtual {p0, p1}, Lt4/t;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, LT4/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LT4/a;-><init>(I)V

    iget-object p0, p0, Lt4/J;->d:Lt4/t;

    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    iput-object p0, v0, LT4/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lt4/I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lt4/J;->d:Lt4/t;

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    iput-object p0, v0, Lt4/I;->d:Ljava/util/ListIterator;

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lt4/J;->d:Lt4/t;

    invoke-virtual {p0}, Lt4/t;->size()I

    move-result p0

    return p0
.end method
