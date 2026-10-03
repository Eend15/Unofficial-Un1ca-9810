.class public final enum Lv1/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic d:[Lv1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lv1/f;

    const-string v1, "ANDROID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lv1/f;

    const-string v2, "LINEAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lv1/f;

    const-string v3, "IUX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lv1/f;

    move-result-object v0

    sput-object v0, Lv1/f;->d:[Lv1/f;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv1/f;
    .locals 1

    const-class v0, Lv1/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv1/f;

    return-object p0
.end method

.method public static values()[Lv1/f;
    .locals 1

    sget-object v0, Lv1/f;->d:[Lv1/f;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv1/f;

    return-object v0
.end method
