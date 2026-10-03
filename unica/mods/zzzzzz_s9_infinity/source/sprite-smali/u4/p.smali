.class public final enum Lu4/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lu4/p;

.field public static final enum e:Lu4/p;

.field public static final synthetic f:[Lu4/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lu4/p;

    const-string v1, "PRETTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lu4/p;

    const-string v2, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu4/p;->d:Lu4/p;

    new-instance v2, Lu4/p;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lu4/p;->e:Lu4/p;

    filled-new-array {v0, v1, v2}, [Lu4/p;

    move-result-object v0

    sput-object v0, Lu4/p;->f:[Lu4/p;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu4/p;
    .locals 1

    const-class v0, Lu4/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu4/p;

    return-object p0
.end method

.method public static values()[Lu4/p;
    .locals 1

    sget-object v0, Lu4/p;->f:[Lu4/p;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu4/p;

    return-object v0
.end method
