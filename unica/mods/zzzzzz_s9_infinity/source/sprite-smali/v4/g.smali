.class public final enum Lv4/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lv4/g;

.field public static final enum e:Lv4/g;

.field public static final enum f:Lv4/g;

.field public static final synthetic g:[Lv4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lv4/g;

    const-string v1, "CONFLICTS_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/g;->d:Lv4/g;

    new-instance v1, Lv4/g;

    const-string v2, "SUCCESS_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv4/g;->e:Lv4/g;

    new-instance v2, Lv4/g;

    const-string v3, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lv4/g;->f:Lv4/g;

    filled-new-array {v0, v1, v2}, [Lv4/g;

    move-result-object v0

    sput-object v0, Lv4/g;->g:[Lv4/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv4/g;
    .locals 1

    const-class v0, Lv4/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv4/g;

    return-object p0
.end method

.method public static values()[Lv4/g;
    .locals 1

    sget-object v0, Lv4/g;->g:[Lv4/g;

    invoke-virtual {v0}, [Lv4/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv4/g;

    return-object v0
.end method
