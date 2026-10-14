.class public final synthetic LN1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:LN1/i;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:[I

.field public final synthetic d:[I


# direct methods
.method public synthetic constructor <init>(LN1/i;Ljava/util/concurrent/atomic/AtomicInteger;[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN1/g;->a:LN1/i;

    iput-object p2, p0, LN1/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, LN1/g;->c:[I

    iput-object p4, p0, LN1/g;->d:[I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-object p1, p0, LN1/g;->a:LN1/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LN1/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, LN1/g;->c:[I

    aget v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_1

    aget v1, v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x42b40000    # 90.0f

    div-float/2addr v1, v2

    iget-object v2, p1, LN1/i;->d:[F

    aput v1, v2, v0

    iget-object p0, p0, LN1/g;->d:[I

    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x168

    if-gt v1, v2, :cond_0

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr p0, v1

    iget-object p1, p1, LN1/i;->e:[F

    aput p0, p1, v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Hue transform range must be between -360 and 360"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Tilt input range must be between -90 and 90"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
