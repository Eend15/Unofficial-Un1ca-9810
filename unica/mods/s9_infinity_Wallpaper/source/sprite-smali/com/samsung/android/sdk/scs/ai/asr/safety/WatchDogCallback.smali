.class public interface abstract Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final doNothing:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;->doNothing:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;->lambda$static$0()V

    return-void
.end method

.method private static synthetic lambda$static$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract onTimeoutDetected()V
.end method
