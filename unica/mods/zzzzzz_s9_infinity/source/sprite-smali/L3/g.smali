.class public final enum LL3/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:LL3/g;

.field public static final enum e:LL3/g;

.field public static final enum f:LL3/g;

.field public static final synthetic g:[LL3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LL3/g;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL3/g;->d:LL3/g;

    new-instance v1, LL3/g;

    const-string v2, "EXTENSION_RECEIVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LL3/g;->e:LL3/g;

    new-instance v2, LL3/g;

    const-string v3, "VALUE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LL3/g;->f:LL3/g;

    filled-new-array {v0, v1, v2}, [LL3/g;

    move-result-object v0

    sput-object v0, LL3/g;->g:[LL3/g;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LL3/g;
    .locals 1

    const-class v0, LL3/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LL3/g;

    return-object p0
.end method

.method public static values()[LL3/g;
    .locals 1

    sget-object v0, LL3/g;->g:[LL3/g;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LL3/g;

    return-object v0
.end method
