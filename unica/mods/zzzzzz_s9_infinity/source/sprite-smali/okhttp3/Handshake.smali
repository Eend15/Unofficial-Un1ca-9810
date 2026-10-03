.class public final Lokhttp3/Handshake;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Handshake$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u0000 -2\u00020\u0001:\u0001-B;\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0014H\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0014H\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u0016J\u001a\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008#\u0010$R\u0017\u0010\u0003\u001a\u00020\u00028\u0007\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010%\u001a\u0004\u0008\u0003\u0010\u000eR\u0017\u0010\u0005\u001a\u00020\u00048\u0007\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010&\u001a\u0004\u0008\u0005\u0010\u0010R\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0007\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\'\u001a\u0004\u0008\u0008\u0010\u0012R!\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068GX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008\u0013\u0010\u0012R\u0018\u0010,\u001a\u00020\"*\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00148G\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0016R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u00148G\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0016\u00a8\u0006."
    }
    d2 = {
        "Lokhttp3/Handshake;",
        "",
        "Lokhttp3/TlsVersion;",
        "tlsVersion",
        "Lokhttp3/CipherSuite;",
        "cipherSuite",
        "",
        "Ljava/security/cert/Certificate;",
        "localCertificates",
        "Lkotlin/Function0;",
        "peerCertificatesFn",
        "<init>",
        "(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;LE3/a;)V",
        "-deprecated_tlsVersion",
        "()Lokhttp3/TlsVersion;",
        "-deprecated_cipherSuite",
        "()Lokhttp3/CipherSuite;",
        "-deprecated_peerCertificates",
        "()Ljava/util/List;",
        "peerCertificates",
        "Ljava/security/Principal;",
        "-deprecated_peerPrincipal",
        "()Ljava/security/Principal;",
        "peerPrincipal",
        "-deprecated_localCertificates",
        "-deprecated_localPrincipal",
        "localPrincipal",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lokhttp3/TlsVersion;",
        "Lokhttp3/CipherSuite;",
        "Ljava/util/List;",
        "peerCertificates$delegate",
        "Lq3/d;",
        "getName",
        "(Ljava/security/cert/Certificate;)Ljava/lang/String;",
        "name",
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
.field public static final Companion:Lokhttp3/Handshake$Companion;


# instance fields
.field private final cipherSuite:Lokhttp3/CipherSuite;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates$delegate:Lq3/d;

.field private final tlsVersion:Lokhttp3/TlsVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/Handshake$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Handshake$Companion;-><init>(LF3/f;)V

    sput-object v0, Lokhttp3/Handshake;->Companion:Lokhttp3/Handshake$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;LE3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/TlsVersion;",
            "Lokhttp3/CipherSuite;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;",
            "LE3/a;",
            ")V"
        }
    .end annotation

    const-string v0, "tlsVersion"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipherSuite"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localCertificates"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerCertificatesFn"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    iput-object p2, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    iput-object p3, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    new-instance p1, Lokhttp3/Handshake$peerCertificates$2;

    invoke-direct {p1, p4}, Lokhttp3/Handshake$peerCertificates$2;-><init>(LE3/a;)V

    new-instance p2, Lq3/j;

    invoke-direct {p2, p1}, Lq3/j;-><init>(LE3/a;)V

    iput-object p2, p0, Lokhttp3/Handshake;->peerCertificates$delegate:Lq3/d;

    return-void
.end method

.method public static final get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/Handshake;->Companion:Lokhttp3/Handshake$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/Handshake$Companion;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/TlsVersion;",
            "Lokhttp3/CipherSuite;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lokhttp3/Handshake;"
        }
    .end annotation

    .line 2
    sget-object v0, Lokhttp3/Handshake;->Companion:Lokhttp3/Handshake$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lokhttp3/Handshake$Companion;->get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;

    move-result-object p0

    return-object p0
.end method

.method private final getName(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "type"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final -deprecated_cipherSuite()Lokhttp3/CipherSuite;
    .locals 0

    iget-object p0, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    return-object p0
.end method

.method public final -deprecated_localCertificates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-object p0
.end method

.method public final -deprecated_localPrincipal()Ljava/security/Principal;
    .locals 0

    invoke-virtual {p0}, Lokhttp3/Handshake;->localPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public final -deprecated_peerCertificates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final -deprecated_peerPrincipal()Ljava/security/Principal;
    .locals 0

    invoke-virtual {p0}, Lokhttp3/Handshake;->peerPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public final -deprecated_tlsVersion()Lokhttp3/TlsVersion;
    .locals 0

    iget-object p0, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    return-object p0
.end method

.method public final cipherSuite()Lokhttp3/CipherSuite;
    .locals 0

    iget-object p0, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lokhttp3/Handshake;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/Handshake;

    iget-object v0, p1, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    iget-object v1, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    iget-object v1, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    iget-object p0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-static {p1, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final localCertificates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-object p0
.end method

.method public final localPrincipal()Ljava/security/Principal;
    .locals 2

    iget-object p0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-static {p0}, Lr3/j;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final peerCertificates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lokhttp3/Handshake;->peerCertificates$delegate:Lq3/d;

    invoke-interface {p0}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final peerPrincipal()Ljava/security/Principal;
    .locals 2

    invoke-virtual {p0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final tlsVersion()Lokhttp3/TlsVersion;
    .locals 0

    iget-object p0, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-direct {p0, v2}, Lokhttp3/Handshake;->getName(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handshake{tlsVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cipherSuite="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " peerCertificates="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " localCertificates="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-direct {p0, v3}, Lokhttp3/Handshake;->getName(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
