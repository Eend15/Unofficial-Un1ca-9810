.class public final enum Lv4/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lv4/h;

.field public static final enum e:Lv4/h;

.field public static final enum f:Lv4/h;

.field public static final synthetic g:[Lv4/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lv4/h;

    const-string v1, "OVERRIDABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/h;->d:Lv4/h;

    new-instance v1, Lv4/h;

    const-string v2, "CONFLICT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lv4/h;

    const-string v3, "INCOMPATIBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lv4/h;->e:Lv4/h;

    new-instance v3, Lv4/h;

    const-string v4, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lv4/h;->f:Lv4/h;

    filled-new-array {v0, v1, v2, v3}, [Lv4/h;

    move-result-object v0

    sput-object v0, Lv4/h;->g:[Lv4/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv4/h;
    .locals 1

    const-class v0, Lv4/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv4/h;

    return-object p0
.end method

.method public static values()[Lv4/h;
    .locals 1

    sget-object v0, Lv4/h;->g:[Lv4/h;

    invoke-virtual {v0}, [Lv4/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv4/h;

    return-object v0
.end method
