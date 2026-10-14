.class public abstract Lkotlinx/coroutines/flow/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LU3/w;

.field public static final b:LU3/w;

.field public static final c:LU3/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/w;

    const-string v1, "NO_VALUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/flow/f;->a:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/flow/f;->b:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/flow/f;->c:LU3/w;

    return-void
.end method

.method public static a()Lkotlinx/coroutines/flow/e;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/flow/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lkotlinx/coroutines/flow/e;-><init>(III)V

    return-object v0
.end method

.method public static final b([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    long-to-int p1, p1

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    aput-object p3, p0, p1

    return-void
.end method
