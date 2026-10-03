.class public final enum Lk4/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lk4/h;

.field public static final enum e:Lk4/h;

.field public static final enum f:Lk4/h;

.field public static final synthetic g:[Lk4/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lk4/h;

    const-string v1, "NULLABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk4/h;->d:Lk4/h;

    new-instance v1, Lk4/h;

    const-string v2, "NOT_NULL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk4/h;->e:Lk4/h;

    new-instance v2, Lk4/h;

    const-string v3, "FORCE_FLEXIBILITY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lk4/h;->f:Lk4/h;

    filled-new-array {v0, v1, v2}, [Lk4/h;

    move-result-object v0

    sput-object v0, Lk4/h;->g:[Lk4/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk4/h;
    .locals 1

    const-class v0, Lk4/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk4/h;

    return-object p0
.end method

.method public static values()[Lk4/h;
    .locals 1

    sget-object v0, Lk4/h;->g:[Lk4/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk4/h;

    return-object v0
.end method
