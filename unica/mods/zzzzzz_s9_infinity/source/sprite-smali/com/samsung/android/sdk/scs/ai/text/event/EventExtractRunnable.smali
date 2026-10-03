.class public Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/util/List<",
        "Lcom/samsung/android/sdk/scs/ai/text/event/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@EventExtractRunnable"


# instance fields
.field private isEventHasYearMonthDaySupported:Z

.field private isEventIndexSupported:Z

.field private mLanguage:Ljava/lang/String;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;

.field private mSourceType:Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractor$SourceType;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;->getTextContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "language"

    iget-object v4, v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "string"

    iget-object v4, v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->mSourceType:Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractor$SourceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sourceString"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content://com.samsung.android.scs.ai.text"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "getEvent"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ScsApi@EventExtractRunnable"

    if-nez v1, :cond_0

    const-string v1, "EventExtractor.extract(). ContentResolver result is null!!"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const/4 v1, 0x5

    const-string v2, "ContentResolver result is null"

    invoke-static {v1, v2, v0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void

    :cond_0
    const-string v3, "resultCode"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x7d0

    if-eq v3, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "unexpected resultCode!!! resultCode: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1f4

    if-ne v3, v1, :cond_1

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v2, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v1, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_2
    const-string v3, "eventTitleList"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "eventLocationList"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v6, "eventStartDateTimeList"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const-string v7, "eventEndDateTimeList"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    const-string v8, "isAllDayList"

    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v8

    const-string v9, "untilFlagList"

    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v9

    const-string v10, "isRelativeList"

    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v10

    const-string v11, "cyclicTimeList"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v12, "hasYearArray"

    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v12

    const-string v13, "hasMonthArray"

    invoke-virtual {v1, v13}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v13

    const-string v14, "hasDayArray"

    invoke-virtual {v1, v14}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v14

    const-string v15, "startIndexList"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    const-string v5, "endtIndexList"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    if-nez v11, :cond_4

    :cond_3
    move-object v1, v2

    move-object/from16 v19, v3

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v17, v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v5, v3, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v5, v3, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v5, v3, :cond_5

    array-length v3, v8

    if-ne v5, v3, :cond_5

    array-length v3, v9

    if-ne v5, v3, :cond_5

    array-length v3, v10

    if-ne v5, v3, :cond_5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v5, v3, :cond_6

    :cond_5
    move-object v1, v2

    move/from16 v18, v5

    goto/16 :goto_2

    :cond_6
    iget-boolean v3, v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->isEventHasYearMonthDaySupported:Z

    if-eqz v3, :cond_8

    if-eqz v12, :cond_7

    array-length v3, v12

    if-ne v5, v3, :cond_7

    if-eqz v13, :cond_7

    array-length v3, v13

    if-ne v5, v3, :cond_7

    if-eqz v14, :cond_7

    array-length v3, v14

    if-eq v5, v3, :cond_8

    :cond_7
    const-string v1, "has year month day null or unexpected size!!!"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const-string v1, "event has year month day mismatch"

    const/16 v2, 0x7d0

    invoke-static {v2, v1, v0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void

    :cond_8
    iget-boolean v3, v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->isEventIndexSupported:Z

    if-eqz v3, :cond_a

    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v5, v3, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v5, v3, :cond_a

    :cond_9
    const-string v1, "start end index null or unexpected size!!!"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const-string v1, "event start end index mismatch"

    const/16 v2, 0x7d0

    invoke-static {v2, v1, v0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void

    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_d

    move/from16 v18, v5

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->create()Lcom/samsung/android/sdk/scs/ai/text/event/Event;

    move-result-object v5

    move-object/from16 v16, v2

    move-object/from16 v2, v17

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDateTime;

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setStartDateTime(Ljava/time/LocalDateTime;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDateTime;

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setEndDateTime(Ljava/time/LocalDateTime;)V

    aget-boolean v2, v8, v3

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setAllDay(Z)V

    aget-boolean v2, v9, v3

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setUntilFlag(Z)V

    aget-boolean v2, v10, v3

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setRelative(Z)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setCyclicTime(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->isEventHasYearMonthDaySupported:Z

    if-eqz v2, :cond_b

    aget-boolean v2, v12, v3

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setHasYear(Z)V

    aget-boolean v2, v13, v3

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setHasMonth(Z)V

    aget-boolean v2, v14, v3

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setHasDay(Z)V

    :cond_b
    iget-boolean v2, v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->isEventIndexSupported:Z

    if-eqz v2, :cond_c

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setStartIndex(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->setEndIndex(I)V

    :cond_c
    move-object/from16 v2, v16

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v18

    move-object/from16 v17, v19

    goto/16 :goto_1

    :cond_d
    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :goto_2
    const-string v2, "unexpected size!!! : "

    const-string v3, " vs "

    move/from16 v4, v18

    invoke-static {v4, v2, v3}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const-string v1, "list size mismatched"

    const/16 v2, 0x7d0

    invoke-static {v2, v1, v0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "null!! eventTitleList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", eventLocationList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", startDateTimeList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", endDateTimeList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isAllDayList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", untilFlagList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isRelativeList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cyclicTimeList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const-string v1, "bundle content is null"

    const/16 v2, 0x7d0

    invoke-static {v2, v1, v0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_TEXT_GET_EVENT"

    return-object p0
.end method

.method public setEventHasYearMonthDaySupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->isEventHasYearMonthDaySupported:Z

    return-void
.end method

.method public setEventIndexSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->isEventIndexSupported:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractor$SourceType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->mSourceType:Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractor$SourceType;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractRunnable;->mText:Ljava/lang/String;

    return-void
.end method
