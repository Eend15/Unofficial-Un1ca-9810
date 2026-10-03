.class public final synthetic Ld1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/Extractor;Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/util/Map;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ld1/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/b;->d:Ljava/lang/Object;

    iput-object p2, p0, Ld1/b;->e:Ljava/lang/Object;

    iput-object p3, p0, Ld1/b;->f:Ljava/lang/Object;

    iput-object p4, p0, Ld1/b;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iput-object p5, p0, Ld1/b;->c:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;I)V
    .locals 0

    .line 2
    iput p6, p0, Ld1/b;->a:I

    iput-object p1, p0, Ld1/b;->d:Ljava/lang/Object;

    iput-object p2, p0, Ld1/b;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iput-object p3, p0, Ld1/b;->e:Ljava/lang/Object;

    iput-object p4, p0, Ld1/b;->f:Ljava/lang/Object;

    iput-object p5, p0, Ld1/b;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget v0, p0, Ld1/b;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object p1, p0, Ld1/b;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-object p1, p0, Ld1/b;->f:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lcom/samsung/android/sdk/scs/ai/language/ToneType;

    iget-object p1, p0, Ld1/b;->d:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;

    iget-object v2, p0, Ld1/b;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v5, p0, Ld1/b;->c:Ljava/util/Map;

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;->c(Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/ToneType;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_0
    move-object v12, p1

    check-cast v12, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object p1, p0, Ld1/b;->e:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    iget-object p1, p0, Ld1/b;->f:Ljava/lang/Object;

    move-object v10, p1

    check-cast v10, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;

    iget-object p1, p0, Ld1/b;->d:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    iget-object v8, p0, Ld1/b;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v11, p0, Ld1/b;->c:Ljava/util/Map;

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->e(Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SmartReplyCategory;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_1
    move-object v5, p1

    check-cast v5, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object p1, p0, Ld1/b;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object p1, p0, Ld1/b;->f:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    iget-object p1, p0, Ld1/b;->d:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizer;

    iget-object v1, p0, Ld1/b;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v4, p0, Ld1/b;->c:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizer;->a(Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_2
    move-object v11, p1

    check-cast v11, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object p1, p0, Ld1/b;->e:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    iget-object p1, p0, Ld1/b;->f:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    iget-object p1, p0, Ld1/b;->d:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/samsung/android/sdk/scs/ai/language/Generic;

    iget-object v7, p0, Ld1/b;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v10, p0, Ld1/b;->c:Ljava/util/Map;

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/sdk/scs/ai/language/Generic;->a(Lcom/samsung/android/sdk/scs/ai/language/Generic;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_3
    move-object v5, p1

    check-cast v5, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object p1, p0, Ld1/b;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object p1, p0, Ld1/b;->f:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;

    iget-object p1, p0, Ld1/b;->d:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/language/FormatConverter;

    iget-object v1, p0, Ld1/b;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v4, p0, Ld1/b;->c:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/scs/ai/language/FormatConverter;->a(Lcom/samsung/android/sdk/scs/ai/language/FormatConverter;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/FormatConversionType;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_4
    move-object v11, p1

    check-cast v11, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object p1, p0, Ld1/b;->e:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    iget-object p1, p0, Ld1/b;->f:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

    iget-object p1, p0, Ld1/b;->d:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/samsung/android/sdk/scs/ai/language/Extractor;

    iget-object v7, p0, Ld1/b;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v10, p0, Ld1/b;->c:Ljava/util/Map;

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->b(Lcom/samsung/android/sdk/scs/ai/language/Extractor;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_5
    move-object v5, p1

    check-cast v5, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object p1, p0, Ld1/b;->f:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iget-object v3, p0, Ld1/b;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object p1, p0, Ld1/b;->d:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;

    iget-object p1, p0, Ld1/b;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;

    iget-object v4, p0, Ld1/b;->c:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->d(Lcom/samsung/android/sdk/scs/ai/language/Extractor;Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_6
    move-object v11, p1

    check-cast v11, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object p1, p0, Ld1/b;->e:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    iget-object p1, p0, Ld1/b;->f:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;

    iget-object p1, p0, Ld1/b;->d:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/samsung/android/sdk/scs/ai/language/Corrector;

    iget-object v7, p0, Ld1/b;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v10, p0, Ld1/b;->c:Ljava/util/Map;

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/sdk/scs/ai/language/Corrector;->a(Lcom/samsung/android/sdk/scs/ai/language/Corrector;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/CorrectionSubTask;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
