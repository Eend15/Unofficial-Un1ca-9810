.class public final enum LH1/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:LH1/a;

.field public static final enum e:LH1/a;

.field public static final enum f:LH1/a;

.field public static final enum g:LH1/a;

.field public static final enum h:LH1/a;

.field public static final synthetic i:[LH1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LH1/a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH1/a;->d:LH1/a;

    new-instance v1, LH1/a;

    const-string v2, "OFF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LH1/a;->e:LH1/a;

    new-instance v2, LH1/a;

    const-string v3, "ON"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LH1/a;->f:LH1/a;

    new-instance v3, LH1/a;

    const-string v4, "AOD_WITH_WALLPAPER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LH1/a;->g:LH1/a;

    new-instance v4, LH1/a;

    const-string v5, "AOD_WITHOUT_WALLPAPER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LH1/a;->h:LH1/a;

    filled-new-array {v0, v1, v2, v3, v4}, [LH1/a;

    move-result-object v0

    sput-object v0, LH1/a;->i:[LH1/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LH1/a;
    .locals 1

    const-class v0, LH1/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LH1/a;

    return-object p0
.end method

.method public static values()[LH1/a;
    .locals 1

    sget-object v0, LH1/a;->i:[LH1/a;

    invoke-virtual {v0}, [LH1/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LH1/a;

    return-object v0
.end method
