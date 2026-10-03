.class public final enum Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Place"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

.field public static final enum CAR:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

.field public static final enum HOME:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

.field public static final enum SCHOOL:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

.field public static final enum WORK:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->HOME:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->WORK:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->SCHOOL:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->CAR:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->HOME:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    const-string v1, "WORK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->WORK:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    const-string v1, "SCHOOL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->SCHOOL:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    const-string v1, "CAR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->CAR:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->$values()[Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    return-object v0
.end method
