.class public final enum LR3/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LR3/r;

.field public static final enum f:LR3/r;

.field public static final enum g:LR3/r;

.field public static final enum h:LR3/r;

.field public static final synthetic i:[LR3/r;


# instance fields
.field public final d:Ls4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LR3/r;

    const-string v1, "kotlin/UByteArray"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ls4/b;->e(Ljava/lang/String;Z)Ls4/b;

    move-result-object v1

    const-string v3, "UBYTEARRAY"

    invoke-direct {v0, v3, v2, v1}, LR3/r;-><init>(Ljava/lang/String;ILs4/b;)V

    sput-object v0, LR3/r;->e:LR3/r;

    new-instance v1, LR3/r;

    const-string v3, "kotlin/UShortArray"

    invoke-static {v3, v2}, Ls4/b;->e(Ljava/lang/String;Z)Ls4/b;

    move-result-object v3

    const-string v4, "USHORTARRAY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, LR3/r;-><init>(Ljava/lang/String;ILs4/b;)V

    sput-object v1, LR3/r;->f:LR3/r;

    new-instance v3, LR3/r;

    const-string v4, "kotlin/UIntArray"

    invoke-static {v4, v2}, Ls4/b;->e(Ljava/lang/String;Z)Ls4/b;

    move-result-object v4

    const-string v5, "UINTARRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, LR3/r;-><init>(Ljava/lang/String;ILs4/b;)V

    sput-object v3, LR3/r;->g:LR3/r;

    new-instance v4, LR3/r;

    const-string v5, "kotlin/ULongArray"

    invoke-static {v5, v2}, Ls4/b;->e(Ljava/lang/String;Z)Ls4/b;

    move-result-object v2

    const-string v5, "ULONGARRAY"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, LR3/r;-><init>(Ljava/lang/String;ILs4/b;)V

    sput-object v4, LR3/r;->h:LR3/r;

    filled-new-array {v0, v1, v3, v4}, [LR3/r;

    move-result-object v0

    sput-object v0, LR3/r;->i:[LR3/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILs4/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Ls4/b;->i()Ls4/f;

    move-result-object p1

    const-string p2, "classId.shortClassName"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LR3/r;->d:Ls4/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LR3/r;
    .locals 1

    const-class v0, LR3/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR3/r;

    return-object p0
.end method

.method public static values()[LR3/r;
    .locals 1

    sget-object v0, LR3/r;->i:[LR3/r;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR3/r;

    return-object v0
.end method
