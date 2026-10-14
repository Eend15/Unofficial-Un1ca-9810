.class public final enum Ld4/B;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Ld4/B;

.field public static final enum e:Ld4/B;

.field public static final enum f:Ld4/B;

.field public static final synthetic g:[Ld4/B;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ld4/B;

    const-string v1, "ignore"

    const-string v2, "IGNORE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ld4/B;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ld4/B;->d:Ld4/B;

    new-instance v1, Ld4/B;

    const-string v2, "warn"

    const-string v3, "WARN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Ld4/B;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ld4/B;->e:Ld4/B;

    new-instance v2, Ld4/B;

    const-string v3, "strict"

    const-string v4, "STRICT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Ld4/B;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Ld4/B;->f:Ld4/B;

    filled-new-array {v0, v1, v2}, [Ld4/B;

    move-result-object v0

    sput-object v0, Ld4/B;->g:[Ld4/B;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld4/B;
    .locals 1

    const-class v0, Ld4/B;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld4/B;

    return-object p0
.end method

.method public static values()[Ld4/B;
    .locals 1

    sget-object v0, Ld4/B;->g:[Ld4/B;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld4/B;

    return-object v0
.end method
