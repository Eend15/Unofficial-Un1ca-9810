.class public final enum LR3/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic g:[LR3/s;


# instance fields
.field public final d:Ls4/b;

.field public final e:Ls4/f;

.field public final f:Ls4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LR3/s;

    const-string v1, "kotlin/UByte"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ls4/b;->e(Ljava/lang/String;Z)Ls4/b;

    move-result-object v1

    const-string v3, "UBYTE"

    invoke-direct {v0, v3, v2, v1}, LR3/s;-><init>(Ljava/lang/String;ILs4/b;)V

    new-instance v1, LR3/s;

    const-string v3, "kotlin/UShort"

    invoke-static {v3, v2}, Ls4/b;->e(Ljava/lang/String;Z)Ls4/b;

    move-result-object v3

    const-string v4, "USHORT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, LR3/s;-><init>(Ljava/lang/String;ILs4/b;)V

    new-instance v3, LR3/s;

    const-string v4, "kotlin/UInt"

    invoke-static {v4, v2}, Ls4/b;->e(Ljava/lang/String;Z)Ls4/b;

    move-result-object v4

    const-string v5, "UINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, LR3/s;-><init>(Ljava/lang/String;ILs4/b;)V

    new-instance v4, LR3/s;

    const-string v5, "kotlin/ULong"

    invoke-static {v5, v2}, Ls4/b;->e(Ljava/lang/String;Z)Ls4/b;

    move-result-object v2

    const-string v5, "ULONG"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, LR3/s;-><init>(Ljava/lang/String;ILs4/b;)V

    filled-new-array {v0, v1, v3, v4}, [LR3/s;

    move-result-object v0

    sput-object v0, LR3/s;->g:[LR3/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILs4/b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LR3/s;->d:Ls4/b;

    invoke-virtual {p3}, Ls4/b;->i()Ls4/f;

    move-result-object p1

    const-string p2, "classId.shortClassName"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LR3/s;->e:Ls4/f;

    new-instance p2, Ls4/b;

    invoke-virtual {p3}, Ls4/b;->g()Ls4/c;

    move-result-object p3

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Array"

    invoke-static {v0, p1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    iput-object p2, p0, LR3/s;->f:Ls4/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LR3/s;
    .locals 1

    const-class v0, LR3/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR3/s;

    return-object p0
.end method

.method public static values()[LR3/s;
    .locals 1

    sget-object v0, LR3/s;->g:[LR3/s;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR3/s;

    return-object v0
.end method
