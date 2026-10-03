.class public final enum La2/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:La2/e;

.field public static final enum e:La2/e;

.field public static final synthetic f:[La2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, La2/e;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, La2/e;->d:La2/e;

    new-instance v1, La2/e;

    const-string v2, "CIRCLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, La2/e;->e:La2/e;

    new-instance v2, La2/e;

    const-string v3, "EDGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, La2/e;

    const-string v4, "POLYGON"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, La2/e;

    const-string v5, "CHAIN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3, v4}, [La2/e;

    move-result-object v0

    sput-object v0, La2/e;->f:[La2/e;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La2/e;
    .locals 1

    const-class v0, La2/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La2/e;

    return-object p0
.end method

.method public static values()[La2/e;
    .locals 1

    sget-object v0, La2/e;->f:[La2/e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La2/e;

    return-object v0
.end method
