.class Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/Streams$AppendableWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentWrite"
.end annotation


# instance fields
.field private cachedString:Ljava/lang/String;

.field private chars:[C


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/gson/internal/Streams$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 0

    iget-object p0, p0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    array-length p0, p0

    return p0
.end method

.method public setChars([C)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->cachedString:Ljava/lang/String;

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->cachedString:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->cachedString:Ljava/lang/String;

    return-object p0
.end method
