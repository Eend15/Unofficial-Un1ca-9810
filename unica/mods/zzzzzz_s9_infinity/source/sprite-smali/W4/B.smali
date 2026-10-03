.class public abstract LW4/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/d;

.field public static final b:Lkotlinx/coroutines/scheduling/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/d;->g:Lkotlinx/coroutines/scheduling/d;

    sput-object v0, LW4/B;->a:Lkotlinx/coroutines/scheduling/d;

    sget v0, LW4/f0;->f:I

    sget-object v0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/c;

    sput-object v0, LW4/B;->b:Lkotlinx/coroutines/scheduling/c;

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/scheduling/c;
    .locals 1

    sget-object v0, LW4/B;->b:Lkotlinx/coroutines/scheduling/c;

    return-object v0
.end method
