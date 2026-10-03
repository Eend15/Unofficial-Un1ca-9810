.class public final enum LR3/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/Set;

.field public static final enum i:LR3/l;

.field public static final enum j:LR3/l;

.field public static final enum k:LR3/l;

.field public static final enum l:LR3/l;

.field public static final enum m:LR3/l;

.field public static final enum n:LR3/l;

.field public static final enum o:LR3/l;

.field public static final enum p:LR3/l;

.field public static final synthetic q:[LR3/l;


# instance fields
.field public final d:Ls4/f;

.field public final e:Ls4/f;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, LR3/l;

    const/4 v1, 0x0

    const-string v2, "Boolean"

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v1, v2}, LR3/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR3/l;->i:LR3/l;

    new-instance v8, LR3/l;

    const/4 v1, 0x1

    const-string v2, "Char"

    const-string v3, "CHAR"

    invoke-direct {v8, v3, v1, v2}, LR3/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, LR3/l;->j:LR3/l;

    new-instance v9, LR3/l;

    const/4 v1, 0x2

    const-string v2, "Byte"

    const-string v3, "BYTE"

    invoke-direct {v9, v3, v1, v2}, LR3/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, LR3/l;->k:LR3/l;

    new-instance v10, LR3/l;

    const/4 v1, 0x3

    const-string v2, "Short"

    const-string v3, "SHORT"

    invoke-direct {v10, v3, v1, v2}, LR3/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, LR3/l;->l:LR3/l;

    new-instance v11, LR3/l;

    const/4 v1, 0x4

    const-string v2, "Int"

    const-string v3, "INT"

    invoke-direct {v11, v3, v1, v2}, LR3/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, LR3/l;->m:LR3/l;

    new-instance v12, LR3/l;

    const/4 v1, 0x5

    const-string v2, "Float"

    const-string v3, "FLOAT"

    invoke-direct {v12, v3, v1, v2}, LR3/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, LR3/l;->n:LR3/l;

    new-instance v13, LR3/l;

    const/4 v1, 0x6

    const-string v2, "Long"

    const-string v3, "LONG"

    invoke-direct {v13, v3, v1, v2}, LR3/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, LR3/l;->o:LR3/l;

    new-instance v14, LR3/l;

    const/4 v1, 0x7

    const-string v2, "Double"

    const-string v3, "DOUBLE"

    invoke-direct {v14, v3, v1, v2}, LR3/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, LR3/l;->p:LR3/l;

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    filled-new-array/range {v0 .. v7}, [LR3/l;

    move-result-object v0

    sput-object v0, LR3/l;->q:[LR3/l;

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    filled-new-array/range {v4 .. v10}, [LR3/l;

    move-result-object v0

    invoke-static {v0}, Lr3/h;->v0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LR3/l;->h:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p1

    iput-object p1, p0, LR3/l;->d:Ls4/f;

    const-string p1, "Array"

    invoke-static {p1, p3}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p1

    iput-object p1, p0, LR3/l;->e:Ls4/f;

    sget-object p1, Lq3/e;->d:Lq3/e;

    new-instance p2, LR3/k;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, LR3/k;-><init>(LR3/l;I)V

    invoke-static {p1, p2}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    move-result-object p2

    iput-object p2, p0, LR3/l;->f:Ljava/lang/Object;

    new-instance p2, LR3/k;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, LR3/k;-><init>(LR3/l;I)V

    invoke-static {p1, p2}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    move-result-object p1

    iput-object p1, p0, LR3/l;->g:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LR3/l;
    .locals 1

    const-class v0, LR3/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR3/l;

    return-object p0
.end method

.method public static values()[LR3/l;
    .locals 1

    sget-object v0, LR3/l;->q:[LR3/l;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR3/l;

    return-object v0
.end method
