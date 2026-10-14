.class public final Lkotlinx/coroutines/scheduling/d;
.super Lkotlinx/coroutines/scheduling/g;
.source "SourceFile"


# static fields
.field public static final g:Lkotlinx/coroutines/scheduling/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlinx/coroutines/scheduling/d;

    sget v1, Lkotlinx/coroutines/scheduling/j;->b:I

    sget v2, Lkotlinx/coroutines/scheduling/j;->c:I

    sget-wide v3, Lkotlinx/coroutines/scheduling/j;->d:J

    invoke-direct {v0}, LW4/q;-><init>()V

    new-instance v5, Lkotlinx/coroutines/scheduling/b;

    invoke-direct {v5, v1, v2, v3, v4}, Lkotlinx/coroutines/scheduling/b;-><init>(IIJ)V

    iput-object v5, v0, Lkotlinx/coroutines/scheduling/g;->f:Lkotlinx/coroutines/scheduling/b;

    sput-object v0, Lkotlinx/coroutines/scheduling/d;->g:Lkotlinx/coroutines/scheduling/d;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
