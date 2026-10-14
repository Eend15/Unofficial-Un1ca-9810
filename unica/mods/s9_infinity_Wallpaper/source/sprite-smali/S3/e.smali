.class public final enum LS3/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final f:LG4/d;

.field public static final enum g:LS3/e;

.field public static final enum h:LS3/e;

.field public static final enum i:LS3/e;

.field public static final enum j:LS3/e;

.field public static final synthetic k:[LS3/e;


# instance fields
.field public final d:Ls4/c;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LS3/e;

    sget-object v1, LR3/p;->j:Ls4/c;

    const-string v2, "Function"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, LS3/e;-><init>(Ljava/lang/String;ILs4/c;Ljava/lang/String;)V

    sput-object v0, LS3/e;->g:LS3/e;

    new-instance v1, LS3/e;

    sget-object v2, LR3/p;->c:Ls4/c;

    const-string v3, "SuspendFunction"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v3}, LS3/e;-><init>(Ljava/lang/String;ILs4/c;Ljava/lang/String;)V

    sput-object v1, LS3/e;->h:LS3/e;

    new-instance v2, LS3/e;

    sget-object v3, LR3/p;->h:Ls4/c;

    const-string v4, "KFunction"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3, v4}, LS3/e;-><init>(Ljava/lang/String;ILs4/c;Ljava/lang/String;)V

    sput-object v2, LS3/e;->i:LS3/e;

    new-instance v4, LS3/e;

    const-string v5, "KSuspendFunction"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v3, v5}, LS3/e;-><init>(Ljava/lang/String;ILs4/c;Ljava/lang/String;)V

    sput-object v4, LS3/e;->j:LS3/e;

    filled-new-array {v0, v1, v2, v4}, [LS3/e;

    move-result-object v0

    sput-object v0, LS3/e;->k:[LS3/e;

    new-instance v0, LG4/d;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LG4/d;-><init>(IZ)V

    sput-object v0, LS3/e;->f:LG4/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILs4/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LS3/e;->d:Ls4/c;

    iput-object p4, p0, LS3/e;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LS3/e;
    .locals 1

    const-class v0, LS3/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LS3/e;

    return-object p0
.end method

.method public static values()[LS3/e;
    .locals 1

    sget-object v0, LS3/e;->k:[LS3/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS3/e;

    return-object v0
.end method
