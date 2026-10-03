.class public Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;
.super Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;
.source "SourceFile"


# instance fields
.field protected lemma:Ljava/lang/String;

.field protected mpTags:Ljava/lang/String;

.field protected posTag:Ljava/lang/String;

.field protected stem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->posTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;-><init>(Ljava/lang/String;I)V

    .line 7
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->posTag:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->stem:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->lemma:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->posTag:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->stem:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->lemma:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->mpTags:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLemma()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->lemma:Ljava/lang/String;

    return-object p0
.end method

.method public getMpTags()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->mpTags:Ljava/lang/String;

    return-object p0
.end method

.method public getPosTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->posTag:Ljava/lang/String;

    return-object p0
.end method

.method public getStem()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->stem:Ljava/lang/String;

    return-object p0
.end method

.method public setLemma(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->lemma:Ljava/lang/String;

    return-void
.end method

.method public setMpTags(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->mpTags:Ljava/lang/String;

    return-void
.end method

.method public setPosTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->posTag:Ljava/lang/String;

    return-void
.end method

.method public setStem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->stem:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->rawText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->posTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
