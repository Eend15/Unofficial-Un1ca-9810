.class public final Lcom/google/gson/JsonNull;
.super Lcom/google/gson/JsonElement;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/JsonNull;

    invoke-direct {v0}, Lcom/google/gson/JsonNull;-><init>()V

    sput-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonNull;->deepCopy()Lcom/google/gson/JsonNull;

    move-result-object p0

    return-object p0
.end method

.method public deepCopy()Lcom/google/gson/JsonNull;
    .locals 0

    .line 2
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/gson/JsonNull;

    return p0
.end method

.method public hashCode()I
    .locals 0

    const-class p0, Lcom/google/gson/JsonNull;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
