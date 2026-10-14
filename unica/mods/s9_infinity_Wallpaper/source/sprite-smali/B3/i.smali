.class public final enum LB3/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:LB3/i;

.field public static final enum e:LB3/i;

.field public static final synthetic f:[LB3/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LB3/i;

    const-string v1, "TOP_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB3/i;->d:LB3/i;

    new-instance v1, LB3/i;

    const-string v2, "BOTTOM_UP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LB3/i;->e:LB3/i;

    filled-new-array {v0, v1}, [LB3/i;

    move-result-object v0

    sput-object v0, LB3/i;->f:[LB3/i;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LB3/i;
    .locals 1

    const-class v0, LB3/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB3/i;

    return-object p0
.end method

.method public static values()[LB3/i;
    .locals 1

    sget-object v0, LB3/i;->f:[LB3/i;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB3/i;

    return-object v0
.end method
