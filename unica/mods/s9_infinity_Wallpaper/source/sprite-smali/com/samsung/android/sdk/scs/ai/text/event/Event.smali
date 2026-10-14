.class public Lcom/samsung/android/sdk/scs/ai/text/event/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field allDay:Z

.field cyclicTime:Ljava/lang/String;

.field endDateTime:Ljava/time/LocalDateTime;

.field endIndex:I

.field hasDay:Z

.field hasMonth:Z

.field hasYear:Z

.field isRelative:Z

.field location:Ljava/lang/String;

.field startDateTime:Ljava/time/LocalDateTime;

.field startIndex:I

.field title:Ljava/lang/String;

.field untilFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/samsung/android/sdk/scs/ai/text/event/Event;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCyclicTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->cyclicTime:Ljava/lang/String;

    return-object p0
.end method

.method public getEndDateTime()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->endDateTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public getEndIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->endIndex:I

    return p0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getStartDateTime()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->startDateTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public getStartIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->startIndex:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hasDay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->hasDay:Z

    return p0
.end method

.method public hasMonth()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->hasMonth:Z

    return p0
.end method

.method public hasYear()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->hasYear:Z

    return p0
.end method

.method public isAllDay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->allDay:Z

    return p0
.end method

.method public isRelative()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->isRelative:Z

    return p0
.end method

.method public isUntilFlag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->untilFlag:Z

    return p0
.end method

.method public setAllDay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->allDay:Z

    return-void
.end method

.method public setCyclicTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->cyclicTime:Ljava/lang/String;

    return-void
.end method

.method public setEndDateTime(Ljava/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->endDateTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->endIndex:I

    return-void
.end method

.method public setHasDay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->hasDay:Z

    return-void
.end method

.method public setHasMonth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->hasMonth:Z

    return-void
.end method

.method public setHasYear(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->hasYear:Z

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->location:Ljava/lang/String;

    return-void
.end method

.method public setRelative(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->isRelative:Z

    return-void
.end method

.method public setStartDateTime(Ljava/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->startDateTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->startIndex:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->title:Ljava/lang/String;

    return-void
.end method

.method public setUntilFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->untilFlag:Z

    return-void
.end method
