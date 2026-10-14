.class public final enum Lw1/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic d:[Lw1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lw1/d;

    const-string v1, "PHONE_PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lw1/d;

    const-string v2, "PHONE_LANDSCAPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lw1/d;

    const-string v3, "SQUARE_RATIO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lw1/d;

    const-string v4, "TABLET_PORTRAIT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lw1/d;

    const-string v5, "TABLET_LANDSCAPE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lw1/d;

    move-result-object v0

    sput-object v0, Lw1/d;->d:[Lw1/d;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw1/d;
    .locals 1

    const-class v0, Lw1/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw1/d;

    return-object p0
.end method

.method public static values()[Lw1/d;
    .locals 1

    sget-object v0, Lw1/d;->d:[Lw1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw1/d;

    return-object v0
.end method
