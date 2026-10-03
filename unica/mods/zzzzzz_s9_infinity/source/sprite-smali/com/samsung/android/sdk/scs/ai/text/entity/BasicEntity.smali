.class public Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bankAccountNumber:Ljava/lang/String;

.field private bankAmount:Ljava/lang/String;

.field private bankName:Ljava/lang/String;

.field private endDate:Ljava/util/Date;

.field private endIndex:I

.field private entityType:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;

.field private hasDay:Z

.field private hasMonth:Z

.field private hasRecurrenceWithinRange:Z

.field private hasYear:Z

.field private isMappable:Z

.field private isRelative:Z

.field private isSpecialDay:Z

.field private recurrenceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RecurrenceUnit;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private repeatInfo:Ljava/lang/String;

.field private startDate:Ljava/util/Date;

.field private startIndex:I

.field private text:Ljava/lang/String;

.field private unitSymbol:Ljava/lang/String;

.field private unitValue:Ljava/lang/String;

.field private unresolvedEndDateTimeUnit:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;"
        }
    .end annotation
.end field

.field private unresolvedStartDateTimeUnit:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBankAccountNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->bankAccountNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getBankAmount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->bankAmount:Ljava/lang/String;

    return-object p0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->bankName:Ljava/lang/String;

    return-object p0
.end method

.method public getEndDateTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->endDate:Ljava/util/Date;

    return-object p0
.end method

.method public getEndIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->endIndex:I

    return p0
.end method

.method public getRecurrenceInfo()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RecurrenceUnit;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->recurrenceInfo:Ljava/util/Map;

    return-object p0
.end method

.method public getRepeatInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->repeatInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getStartDateTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->startDate:Ljava/util/Date;

    return-object p0
.end method

.method public getStartIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->startIndex:I

    return p0
.end method

.method public getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->entityType:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;

    return-object p0
.end method

.method public getUnitSymbol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unitSymbol:Ljava/lang/String;

    return-object p0
.end method

.method public getUnitValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unitValue:Ljava/lang/String;

    return-object p0
.end method

.method public getUnresolvedEndDateTimeUnit()Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unresolvedEndDateTimeUnit:Ljava/util/EnumSet;

    return-object p0
.end method

.method public getUnresolvedStartDateTimeUnit()Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unresolvedStartDateTimeUnit:Ljava/util/EnumSet;

    return-object p0
.end method

.method public hasDay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->hasDay:Z

    return p0
.end method

.method public hasMonth()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->hasMonth:Z

    return p0
.end method

.method public hasRecurrenceWithinRange()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->hasRecurrenceWithinRange:Z

    return p0
.end method

.method public hasYear()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->hasYear:Z

    return p0
.end method

.method public isMappable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->isMappable:Z

    return p0
.end method

.method public isRelative()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->isRelative:Z

    return p0
.end method

.method public isSpecialDay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->isSpecialDay:Z

    return p0
.end method

.method public setBankAccountNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->bankAccountNumber:Ljava/lang/String;

    return-void
.end method

.method public setBankAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->bankAmount:Ljava/lang/String;

    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->bankName:Ljava/lang/String;

    return-void
.end method

.method public setEndDateTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->endDate:Ljava/util/Date;

    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->endIndex:I

    return-void
.end method

.method public setHasDay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->hasDay:Z

    return-void
.end method

.method public setHasMonth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->hasMonth:Z

    return-void
.end method

.method public setHasRecurrenceWithinRange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->hasRecurrenceWithinRange:Z

    return-void
.end method

.method public setHasYear(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->hasYear:Z

    return-void
.end method

.method public setMappable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->isMappable:Z

    return-void
.end method

.method public setRecurrenceInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RecurrenceUnit;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->recurrenceInfo:Ljava/util/Map;

    return-void
.end method

.method public setRelative(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->isRelative:Z

    return-void
.end method

.method public setRepeatInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->repeatInfo:Ljava/lang/String;

    return-void
.end method

.method public setSpecialDay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->isSpecialDay:Z

    return-void
.end method

.method public setStartDateTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->startDate:Ljava/util/Date;

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->startIndex:I

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->entityType:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;

    return-void
.end method

.method public setUnitSymbol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unitSymbol:Ljava/lang/String;

    return-void
.end method

.method public setUnitValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unitValue:Ljava/lang/String;

    return-void
.end method

.method public setUnresolvedEndDateTimeUnit(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unresolvedEndDateTimeUnit:Ljava/util/EnumSet;

    return-void
.end method

.method public setUnresolvedStartDateTimeUnit(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unresolvedStartDateTimeUnit:Ljava/util/EnumSet;

    return-void
.end method
