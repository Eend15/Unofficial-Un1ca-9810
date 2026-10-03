.class public Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@BasicEntityExtractRunnable"


# instance fields
.field private inputBundle:Landroid/os/Bundle;

.field private isBasicEntityBulkSupported:Z

.field private mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 61

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractRunnable;->isBasicEntityBulkSupported:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;->getTextContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractRunnable;->inputBundle:Landroid/os/Bundle;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v2, "content://com.samsung.android.scs.ai.text"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractRunnable;->inputBundle:Landroid/os/Bundle;

    const-string v5, "getBasicEntityBulk"

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ScsApi@BasicEntityExtractRunnable"

    if-nez v1, :cond_2

    const-string v1, "BasicEntityExtractor.extract() for textList. ContentResolver result is null!!"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const/4 v1, 0x5

    const-string v2, "ContentResolver result is null"

    invoke-static {v1, v2, v0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void

    :cond_2
    const-string v3, "resultCode"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x7d0

    if-eq v3, v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "unexpected resultCode!!! resultCode: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1f4

    if-ne v3, v1, :cond_3

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v2, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v1, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_4
    const-string v3, "entityTypeList"

    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const-string v6, "startIndexList"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const-string v7, "endtIndexList"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    const-string v8, "textList"

    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const-string v9, "startDateList"

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    const-string v10, "endDateList"

    invoke-virtual {v1, v10, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    const-string v11, "unresolvedStartDateTimeUnitList"

    invoke-virtual {v1, v11, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    const-string v12, "unresolvedEndDateTimeUnitList"

    invoke-virtual {v1, v12, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    const-string v13, "repeatInfoList"

    invoke-virtual {v1, v13, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    const-string v14, "bankNameList"

    invoke-virtual {v1, v14, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    const-string v15, "bankAccountNumberList"

    invoke-virtual {v1, v15, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    const-string v5, "bankTransferAmountList"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const-string v0, "unitValue"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v16, v2

    const-string v2, "unitSymbol"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v17, v2

    const-string v2, "recurrenceInfoList"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v18, v2

    const-string v2, "poiMappableArray"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v19, v2

    const-string v2, "isRelativeList"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v20, v2

    const-string v2, "isSpecialDayArray"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v21, v2

    const-string v2, "hasYearArray"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v22, v2

    const-string v2, "hasMonthArray"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v23, v2

    const-string v2, "hasDayArray"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v24, v2

    const-string v2, "hasRecurrenceWithinRangeArray"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    if-eqz v17, :cond_5

    if-eqz v18, :cond_5

    if-eqz v19, :cond_5

    if-eqz v20, :cond_5

    if-eqz v21, :cond_5

    if-eqz v22, :cond_5

    if-eqz v23, :cond_5

    if-eqz v24, :cond_5

    if-nez v1, :cond_6

    :cond_5
    move-object/from16 v48, v0

    move-object/from16 v52, v1

    move-object/from16 v31, v3

    move-object/from16 v42, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v1, v16

    move-object/from16 v50, v17

    move-object/from16 v51, v18

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    move-object/from16 v45, v21

    move-object/from16 v46, v22

    move-object/from16 v47, v23

    move-object/from16 v49, v24

    move-object/from16 v0, p0

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v25, v6

    const-string v6, "unexpected size!!! : "

    move-object/from16 v26, v6

    const-string v6, " vs "

    if-ne v2, v4, :cond_24

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_24

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v2, v4, :cond_7

    move-object/from16 v48, v0

    move-object/from16 v52, v1

    move-object/from16 v42, v5

    move-object v4, v6

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v1, v16

    move-object/from16 v50, v17

    move-object/from16 v51, v18

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    move-object/from16 v45, v21

    move-object/from16 v46, v22

    move-object/from16 v47, v23

    move-object/from16 v49, v24

    move-object/from16 v32, v25

    move-object/from16 v3, v26

    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v27, 0x0

    move-object/from16 v28, v4

    move/from16 v4, v27

    :goto_1
    if-ge v4, v2, :cond_23

    move/from16 v29, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v31, v3

    move-object/from16 v3, v30

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v30, v2

    move-object/from16 v2, v25

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v32, v2

    move-object/from16 v2, v25

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v33, v7

    move-object/from16 v7, v25

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v34, v8

    move-object/from16 v8, v25

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v35, v9

    move-object/from16 v9, v25

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v36, v10

    move-object/from16 v10, v25

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v37, v11

    move-object/from16 v11, v25

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v38, v12

    move-object/from16 v12, v25

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v39, v13

    move-object/from16 v13, v25

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v40, v14

    move-object/from16 v14, v25

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v41, v15

    move-object/from16 v15, v25

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v42, v5

    move-object/from16 v5, v25

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v25, v5

    move-object/from16 v5, v19

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Z

    move-object/from16 v43, v5

    move-object/from16 v5, v20

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Z

    move-object/from16 v44, v5

    move-object/from16 v5, v21

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Z

    move-object/from16 v45, v5

    move-object/from16 v5, v22

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Z

    move-object/from16 v46, v5

    move-object/from16 v5, v23

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Z

    move-object/from16 v47, v5

    move-object/from16 v5, v24

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    move-object/from16 v49, v5

    move-object/from16 v5, v48

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v50, v0

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v51, v0

    move-object/from16 v0, v18

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Z

    if-eqz v3, :cond_8

    if-nez v8, :cond_9

    :cond_8
    move-object/from16 v56, v16

    goto/16 :goto_8

    :cond_9
    move-object/from16 v52, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v53, v4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v1, v4, :cond_a

    move-object/from16 v4, v26

    invoke-static {v1, v4, v6}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const-string v1, "inner list size mismatched"

    const/16 v2, 0x7d0

    invoke-static {v2, v1, v0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void

    :cond_a
    move-object/from16 v4, p0

    move-object/from16 v60, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v60

    move/from16 v4, v27

    :goto_2
    if-ge v4, v1, :cond_22

    move/from16 v54, v1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;

    invoke-direct {v1}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    move-object/from16 v56, v6

    invoke-static/range {v55 .. v55}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setType(Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setString(Ljava/lang/String;)V

    if-eqz v2, :cond_b

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setStartIndex(I)V

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setEndIndex(I)V

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setStartDateTime(Ljava/util/Date;)V

    :cond_d
    if-eqz v10, :cond_e

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setEndDateTime(Ljava/util/Date;)V

    :cond_e
    const-class v6, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;

    if-eqz v11, :cond_10

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/Set;

    if-eqz v55, :cond_10

    move-object/from16 v57, v2

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface/range {v55 .. v55}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :goto_3
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v58

    if-eqz v58, :cond_f

    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/String;

    move-object/from16 v59, v7

    invoke-static/range {v58 .. v58}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v59

    goto :goto_3

    :cond_f
    move-object/from16 v59, v7

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setUnresolvedStartDateTimeUnit(Ljava/util/EnumSet;)V

    goto :goto_4

    :cond_10
    move-object/from16 v57, v2

    move-object/from16 v59, v7

    :goto_4
    if-eqz v12, :cond_12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_12

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setUnresolvedEndDateTimeUnit(Ljava/util/EnumSet;)V

    :cond_12
    if-eqz v13, :cond_13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setRepeatInfo(Ljava/lang/String;)V

    :cond_13
    if-eqz v14, :cond_14

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setBankName(Ljava/lang/String;)V

    :cond_14
    if-eqz v15, :cond_15

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setBankAccountNumber(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v2, v25

    if-eqz v25, :cond_16

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setBankAmount(Ljava/lang/String;)V

    :cond_16
    if-eqz v19, :cond_17

    aget-boolean v6, v19, v4

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setMappable(Z)V

    :cond_17
    if-eqz v20, :cond_18

    aget-boolean v6, v20, v4

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setRelative(Z)V

    :cond_18
    if-eqz v21, :cond_19

    aget-boolean v6, v21, v4

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setSpecialDay(Z)V

    :cond_19
    if-eqz v22, :cond_1a

    aget-boolean v6, v22, v4

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setHasYear(Z)V

    :cond_1a
    if-eqz v23, :cond_1b

    aget-boolean v6, v23, v4

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setHasMonth(Z)V

    :cond_1b
    if-eqz v24, :cond_1c

    aget-boolean v6, v24, v4

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setHasDay(Z)V

    :cond_1c
    if-eqz v5, :cond_1d

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setUnitValue(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v6, v17

    if-eqz v17, :cond_1e

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setUnitSymbol(Ljava/lang/String;)V

    :cond_1e
    if-eqz v0, :cond_20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_20

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    move-object/from16 v58, v0

    invoke-static/range {v55 .. v55}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RecurrenceUnit;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RecurrenceUnit;

    move-result-object v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v55, v2

    move-object/from16 v2, v25

    check-cast v2, Ljava/util/List;

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v55

    move-object/from16 v0, v58

    goto :goto_6

    :cond_1f
    move-object/from16 v58, v0

    move-object/from16 v55, v2

    invoke-virtual {v1, v7}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setRecurrenceInfo(Ljava/util/Map;)V

    goto :goto_7

    :cond_20
    move-object/from16 v58, v0

    move-object/from16 v55, v2

    :goto_7
    if-eqz v18, :cond_21

    aget-boolean v0, v18, v4

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->setHasRecurrenceWithinRange(Z)V

    :cond_21
    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v30, v0

    move-object/from16 v17, v6

    move/from16 v1, v54

    move-object/from16 v25, v55

    move-object/from16 v6, v56

    move-object/from16 v2, v57

    move-object/from16 v0, v58

    move-object/from16 v7, v59

    goto/16 :goto_2

    :cond_22
    move-object/from16 v56, v6

    move-object/from16 v1, v28

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v53, 0x1

    move-object/from16 v6, v16

    move/from16 v2, v29

    move-object/from16 v3, v31

    move-object/from16 v25, v32

    move-object/from16 v7, v33

    move-object/from16 v8, v34

    move-object/from16 v9, v35

    move-object/from16 v10, v36

    move-object/from16 v11, v37

    move-object/from16 v12, v38

    move-object/from16 v13, v39

    move-object/from16 v14, v40

    move-object/from16 v15, v41

    move-object/from16 v5, v42

    move-object/from16 v19, v43

    move-object/from16 v20, v44

    move-object/from16 v21, v45

    move-object/from16 v22, v46

    move-object/from16 v23, v47

    move-object/from16 v0, v48

    move-object/from16 v24, v49

    move-object/from16 v17, v50

    move-object/from16 v18, v51

    move-object/from16 v1, v52

    move-object/from16 v16, v56

    goto/16 :goto_1

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "null!! entityTypeList: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v56

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const-string v1, "more than one of inner lists is null"

    const/16 v2, 0x7d0

    invoke-static {v2, v1, v0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void

    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_24
    move-object/from16 v48, v0

    move-object/from16 v52, v1

    move-object/from16 v42, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v1, v16

    move-object/from16 v50, v17

    move-object/from16 v51, v18

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    move-object/from16 v45, v21

    move-object/from16 v46, v22

    move-object/from16 v47, v23

    move-object/from16 v49, v24

    move-object/from16 v32, v25

    move-object/from16 v0, p0

    move-object v4, v6

    move-object/from16 v3, v26

    :goto_9
    invoke-static {v2, v3, v4}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const-string v1, "final list size mismatched"

    const/16 v2, 0x7d0

    invoke-static {v2, v1, v0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "null!! entityTypeListResult : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", startIndexListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v32

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", endIndexListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v33

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", textListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v34

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", startDateListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v35

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", endDateListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v36

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", unresolvedStartDateTimeUnitListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v37

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", unresolvedEndDateTimeUnitListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v38

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", repeatInfoListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v39

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", bankNameListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v40

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", bankAccountNumberListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v41

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", bankAmountListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v42

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", unitValuesResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v48

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", unitSymbolsResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v50

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", recurrenceInfoListResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v51

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mappableArrayResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v43

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isRelativeArrayResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v44

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isSpecialDayArrayResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v45

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", hasYearArrayResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v46

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", hasMonthArrayResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v47

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", hasDayArrayResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v49

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", hasRecurrenceWithinRangeArrayResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v52

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string p0, "FEATURE_TEXT_GET_ENTITY_BULK"

    return-object p0
.end method

.method public setBasicEntityBulkSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractRunnable;->isBasicEntityBulkSupported:Z

    return-void
.end method

.method public setInputBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractRunnable;->inputBundle:Landroid/os/Bundle;

    return-void
.end method
