.class public final synthetic Ld1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Enum;

.field public final synthetic f:Ljava/lang/Enum;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/Suggester;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;Ljava/util/Map;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Ld1/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld1/c;->e:Ljava/lang/Enum;

    iput-object p3, p0, Ld1/c;->c:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iput-object p4, p0, Ld1/c;->d:Ljava/lang/String;

    iput-object p5, p0, Ld1/c;->f:Ljava/lang/Enum;

    iput-object p6, p0, Ld1/c;->g:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/Summarizer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;I)V
    .locals 0

    .line 2
    iput p7, p0, Ld1/c;->a:I

    iput-object p1, p0, Ld1/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld1/c;->c:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iput-object p3, p0, Ld1/c;->d:Ljava/lang/String;

    iput-object p4, p0, Ld1/c;->e:Ljava/lang/Enum;

    iput-object p5, p0, Ld1/c;->f:Ljava/lang/Enum;

    iput-object p6, p0, Ld1/c;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Ld1/c;->a:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v8, p1

    check-cast v8, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object v5, v0, Ld1/c;->d:Ljava/lang/String;

    iget-object v1, v0, Ld1/c;->f:Ljava/lang/Enum;

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;

    iget-object v1, v0, Ld1/c;->b:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/language/Suggester;

    iget-object v1, v0, Ld1/c;->e:Ljava/lang/Enum;

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iget-object v4, v0, Ld1/c;->c:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v7, v0, Ld1/c;->g:Ljava/util/Map;

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/sdk/scs/ai/language/Suggester;->a(Lcom/samsung/android/sdk/scs/ai/language/Suggester;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SuggestionCategory;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_0
    move-object/from16 v15, p1

    check-cast v15, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object v1, v0, Ld1/c;->e:Ljava/lang/Enum;

    move-object v12, v1

    check-cast v12, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iget-object v1, v0, Ld1/c;->f:Ljava/lang/Enum;

    move-object v13, v1

    check-cast v13, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    iget-object v1, v0, Ld1/c;->b:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    iget-object v10, v0, Ld1/c;->c:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v11, v0, Ld1/c;->d:Ljava/lang/String;

    iget-object v14, v0, Ld1/c;->g:Ljava/util/Map;

    invoke-static/range {v9 .. v15}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->d(Lcom/samsung/android/sdk/scs/ai/language/Summarizer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_1
    move-object/from16 v6, p1

    check-cast v6, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object v1, v0, Ld1/c;->e:Ljava/lang/Enum;

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iget-object v1, v0, Ld1/c;->f:Ljava/lang/Enum;

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    iget-object v1, v0, Ld1/c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    iget-object v2, v0, Ld1/c;->c:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v5, v0, Ld1/c;->d:Ljava/lang/String;

    iget-object v7, v0, Ld1/c;->g:Ljava/util/Map;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->a(Lcom/samsung/android/sdk/scs/ai/language/Summarizer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
