.class Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_DURATION:Ljava/time/Duration;

.field protected static final isDevelop:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private checkValidate:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TV;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final defaultSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TV;>;"
        }
    .end annotation
.end field

.field private lastTimeUpdate:J

.field private final name:Ljava/lang/String;

.field private final timeout:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->isDevelop:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->DEFAULT_DURATION:Ljava/time/Duration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/time/Duration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "TV;>;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExpiringData@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->TAG:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->data:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/f;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->checkValidate:Ljava/util/function/Function;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lastTimeUpdate:J

    .line 7
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->name:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->defaultSupplier:Ljava/util/function/Supplier;

    .line 9
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->timeout:Ljava/time/Duration;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/time/Duration;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/time/Duration;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lambda$getOrCompute$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lambda$new$0(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lambda$getOrCompute$1(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lambda$getOrCompute$2(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->setChecker(Ljava/util/function/Function;)Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    return-void
.end method

.method private synthetic lambda$getOrCompute$1(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lastTimeUpdate:J

    sub-long/2addr v0, v2

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->timeout:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    :cond_0
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/f;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/asr/f;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->checkValidate:Ljava/util/function/Function;

    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lastTimeUpdate:J

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->name:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has updated with "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string p0, "NEW"

    goto :goto_0

    :cond_1
    const-string p0, "EXPIRED"

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    return-object p2
.end method

.method private synthetic lambda$getOrCompute$2(Ljava/lang/Object;)Z
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " return current value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lastTimeUpdate:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$getOrCompute$3()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " return default value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lastTimeUpdate:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->defaultSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private setChecker(Ljava/util/function/Function;)Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TV;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->checkValidate:Ljava/util/function/Function;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getOrCompute(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TV;>;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->data:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/d;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/d;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Ljava/util/function/Supplier;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
