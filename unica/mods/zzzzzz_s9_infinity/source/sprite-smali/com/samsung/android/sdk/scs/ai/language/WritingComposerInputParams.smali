.class public Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[B

.field private dataMimeType:Ljava/lang/String;

.field private final format:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

.field private final inputText:Ljava/lang/String;

.field private outputSentenceCount:I

.field private final tone:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->inputText:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->format:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->tone:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->inputText:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->dataMimeType:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->data:[B

    .line 9
    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->format:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    .line 10
    iput-object p5, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->tone:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    .line 11
    iput p6, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->outputSentenceCount:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->data:[B

    return-object p0
.end method

.method public getDataMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->dataMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->format:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    return-object p0
.end method

.method public getInputText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->inputText:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputSentenceCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->outputSentenceCount:I

    return p0
.end method

.method public getTone()Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->tone:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    return-object p0
.end method

.method public setData([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->data:[B

    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setDataMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->dataMimeType:Ljava/lang/String;

    return-void
.end method

.method public setOutputSentenceCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->outputSentenceCount:I

    return-void
.end method
