.class public final Lokhttp3/internal/http2/Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Header$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0008B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\rJ$\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lokhttp3/internal/http2/Header;",
        "",
        "Le5/m;",
        "name",
        "value",
        "<init>",
        "(Le5/m;Le5/m;)V",
        "",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "(Le5/m;Ljava/lang/String;)V",
        "toString",
        "()Ljava/lang/String;",
        "component1",
        "()Le5/m;",
        "component2",
        "copy",
        "(Le5/m;Le5/m;)Lokhttp3/internal/http2/Header;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Le5/m;",
        "hpackSize",
        "I",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/http2/Header$Companion;

.field public static final PSEUDO_PREFIX:Le5/m;

.field public static final RESPONSE_STATUS:Le5/m;

.field public static final RESPONSE_STATUS_UTF8:Ljava/lang/String; = ":status"

.field public static final TARGET_AUTHORITY:Le5/m;

.field public static final TARGET_AUTHORITY_UTF8:Ljava/lang/String; = ":authority"

.field public static final TARGET_METHOD:Le5/m;

.field public static final TARGET_METHOD_UTF8:Ljava/lang/String; = ":method"

.field public static final TARGET_PATH:Le5/m;

.field public static final TARGET_PATH_UTF8:Ljava/lang/String; = ":path"

.field public static final TARGET_SCHEME:Le5/m;

.field public static final TARGET_SCHEME_UTF8:Ljava/lang/String; = ":scheme"


# instance fields
.field public final hpackSize:I

.field public final name:Le5/m;

.field public final value:Le5/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http2/Header$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Header$Companion;-><init>(LF3/f;)V

    sput-object v0, Lokhttp3/internal/http2/Header;->Companion:Lokhttp3/internal/http2/Header$Companion;

    sget-object v0, Le5/m;->g:Le5/m;

    const-string v0, ":"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->PSEUDO_PREFIX:Le5/m;

    const-string v0, ":status"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Le5/m;

    const-string v0, ":method"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Le5/m;

    const-string v0, ":path"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_PATH:Le5/m;

    const-string v0, ":scheme"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Le5/m;

    const-string v0, ":authority"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Le5/m;

    return-void
.end method

.method public constructor <init>(Le5/m;Le5/m;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/http2/Header;->name:Le5/m;

    .line 3
    iput-object p2, p0, Lokhttp3/internal/http2/Header;->value:Le5/m;

    .line 4
    invoke-virtual {p1}, Le5/m;->c()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Le5/m;->c()I

    move-result p2

    add-int/2addr p2, p1

    .line 5
    iput p2, p0, Lokhttp3/internal/http2/Header;->hpackSize:I

    return-void
.end method

.method public constructor <init>(Le5/m;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Le5/m;->g:Le5/m;

    invoke-static {p2}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Header;-><init>(Le5/m;Le5/m;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Le5/m;->g:Le5/m;

    invoke-static {p1}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object p1

    invoke-static {p2}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Header;-><init>(Le5/m;Le5/m;)V

    return-void
.end method

.method public static synthetic copy$default(Lokhttp3/internal/http2/Header;Le5/m;Le5/m;ILjava/lang/Object;)Lokhttp3/internal/http2/Header;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lokhttp3/internal/http2/Header;->name:Le5/m;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lokhttp3/internal/http2/Header;->value:Le5/m;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/Header;->copy(Le5/m;Le5/m;)Lokhttp3/internal/http2/Header;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Le5/m;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http2/Header;->name:Le5/m;

    return-object p0
.end method

.method public final component2()Le5/m;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http2/Header;->value:Le5/m;

    return-object p0
.end method

.method public final copy(Le5/m;Le5/m;)Lokhttp3/internal/http2/Header;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lokhttp3/internal/http2/Header;

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Header;-><init>(Le5/m;Le5/m;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lokhttp3/internal/http2/Header;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lokhttp3/internal/http2/Header;

    iget-object v1, p0, Lokhttp3/internal/http2/Header;->name:Le5/m;

    iget-object v3, p1, Lokhttp3/internal/http2/Header;->name:Le5/m;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lokhttp3/internal/http2/Header;->value:Le5/m;

    iget-object p1, p1, Lokhttp3/internal/http2/Header;->value:Le5/m;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http2/Header;->name:Le5/m;

    invoke-virtual {v0}, Le5/m;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lokhttp3/internal/http2/Header;->value:Le5/m;

    invoke-virtual {p0}, Le5/m;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/http2/Header;->name:Le5/m;

    invoke-virtual {v1}, Le5/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/internal/http2/Header;->value:Le5/m;

    invoke-virtual {p0}, Le5/m;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
