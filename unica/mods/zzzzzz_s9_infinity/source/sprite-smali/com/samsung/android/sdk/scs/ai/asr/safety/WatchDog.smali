.class public interface abstract Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final DEFAULT_DETAIL_FORMAT:Ljava/lang/String; = "YYMMdd_HHmm_ss.SSS"

.field public static final formatter:Ljava/text/SimpleDateFormat;

.field public static final isDevelop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->isDevelop:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "YYMMdd_HHmm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->formatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static create()Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->create(Z)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Z)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->create(Z)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/Runnable;)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;
    .locals 1

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;->doNothing:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/a;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static createTimeStr(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->formatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->lambda$wrapBlocking$0(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V

    return-void
.end method

.method private synthetic lambda$wrapBlocking$0(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->unWatchBlocking(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract executeWatchDog()V
.end method

.method public abstract getCreateTime()J
.end method

.method public abstract isWatching()Z
.end method

.method public abstract unWatchBlocking(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V
.end method

.method public abstract watchBlocking(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;J)V
.end method

.method public wrapBlocking(Ljava/lang/Runnable;J)Ljava/io/Closeable;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->create(Ljava/lang/Runnable;)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->watchBlocking(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;J)V

    new-instance p2, Lcom/samsung/android/sdk/scs/ai/asr/safety/b;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/b;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V

    return-object p2
.end method
