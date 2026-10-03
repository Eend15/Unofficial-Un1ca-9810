.class public final Lt4/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final d:Lt4/z;

.field public e:Lt4/v;

.field public f:I


# direct methods
.method public constructor <init>(Lt4/B;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt4/z;

    invoke-direct {v0, p1}, Lt4/z;-><init>(Lt4/e;)V

    iput-object v0, p0, Lt4/A;->d:Lt4/z;

    invoke-virtual {v0}, Lt4/z;->a()Lt4/w;

    move-result-object v0

    new-instance v1, Lt4/v;

    invoke-direct {v1, v0}, Lt4/v;-><init>(Lt4/w;)V

    iput-object v1, p0, Lt4/A;->e:Lt4/v;

    iget p1, p1, Lt4/B;->e:I

    iput p1, p0, Lt4/A;->f:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lt4/A;->f:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lt4/A;->e:Lt4/v;

    invoke-virtual {v0}, Lt4/v;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lt4/A;->d:Lt4/z;

    invoke-virtual {v0}, Lt4/z;->a()Lt4/w;

    move-result-object v0

    new-instance v1, Lt4/v;

    invoke-direct {v1, v0}, Lt4/v;-><init>(Lt4/w;)V

    iput-object v1, p0, Lt4/A;->e:Lt4/v;

    :cond_0
    iget v0, p0, Lt4/A;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lt4/A;->f:I

    iget-object p0, p0, Lt4/A;->e:Lt4/v;

    invoke-virtual {p0}, Lt4/v;->a()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
