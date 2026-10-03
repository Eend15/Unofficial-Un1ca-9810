.class public final LI/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[B


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:I

.field public d:C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x700

    new-array v1, v0, [B

    sput-object v1, LI/a;->e:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, LI/a;->e:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, LI/a;->b:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 3

    iget v0, p0, LI/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, LI/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, LI/a;->d:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LI/a;->c:I

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, LI/a;->c:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, LI/a;->c:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result p0

    return p0

    :cond_0
    iget v0, p0, LI/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LI/a;->c:I

    iget-char p0, p0, LI/a;->d:C

    const/16 v0, 0x700

    if-ge p0, v0, :cond_1

    sget-object v0, LI/a;->e:[B

    aget-byte p0, v0, p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    :goto_0
    return p0
.end method
