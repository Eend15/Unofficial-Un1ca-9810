.class public final enum Lv1/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lv1/e;

.field public static final enum e:Lv1/e;

.field public static final synthetic f:[Lv1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lv1/e;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv1/e;->d:Lv1/e;

    new-instance v1, Lv1/e;

    const-string v2, "LINEAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv1/e;->e:Lv1/e;

    filled-new-array {v0, v1}, [Lv1/e;

    move-result-object v0

    sput-object v0, Lv1/e;->f:[Lv1/e;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv1/e;
    .locals 1

    const-class v0, Lv1/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv1/e;

    return-object p0
.end method

.method public static values()[Lv1/e;
    .locals 1

    sget-object v0, Lv1/e;->f:[Lv1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv1/e;

    return-object v0
.end method
