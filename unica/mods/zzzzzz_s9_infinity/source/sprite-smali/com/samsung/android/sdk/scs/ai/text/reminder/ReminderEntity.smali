.class public Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;,
        Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$State;
    }
.end annotation


# instance fields
.field endIndex:I

.field place:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

.field startIndex:I

.field state:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$State;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$State;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->place:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->state:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$State;

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->startIndex:I

    iput p4, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->endIndex:I

    return-void
.end method


# virtual methods
.method public getEndIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->endIndex:I

    return p0
.end method

.method public getPlace()Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->place:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    return-object p0
.end method

.method public getStartIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->startIndex:I

    return p0
.end method

.method public getState()Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$State;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->state:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$State;

    return-object p0
.end method

.method public setEndIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->endIndex:I

    return-void
.end method

.method public setPlace(Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->place:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$Place;

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->startIndex:I

    return-void
.end method

.method public setState(Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity;->state:Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntity$State;

    return-void
.end method
