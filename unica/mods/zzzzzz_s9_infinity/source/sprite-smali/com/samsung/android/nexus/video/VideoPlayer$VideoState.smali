.class public final enum Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nexus/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;",
        "",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "INITIALIZED",
        "STARTED",
        "PAUSED",
        "NexusVideo-3.0.1_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lx3/a;

.field private static final synthetic $VALUES:[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

.field public static final enum IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

.field public static final enum INITIALIZED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

.field public static final enum PAUSED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

.field public static final enum STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    .locals 4

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->INITIALIZED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v2, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v3, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->PAUSED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    new-instance v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->INITIALIZED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    new-instance v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    const-string v1, "STARTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    new-instance v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    const-string v1, "PAUSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->PAUSED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->$values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->$VALUES:[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->$ENTRIES:Lx3/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lx3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/a;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->$ENTRIES:Lx3/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    .locals 1

    const-class v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    .locals 1

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->$VALUES:[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    return-object v0
.end method
