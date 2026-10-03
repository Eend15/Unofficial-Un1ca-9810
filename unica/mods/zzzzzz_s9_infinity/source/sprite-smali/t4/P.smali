.class public final enum Lt4/P;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:Lt4/P;

.field public static final enum f:Lt4/P;

.field public static final enum g:Lt4/P;

.field public static final enum h:Lt4/P;

.field public static final enum i:Lt4/P;

.field public static final enum j:Lt4/P;

.field public static final enum k:Lt4/P;

.field public static final enum l:Lt4/P;

.field public static final enum m:Lt4/P;

.field public static final synthetic n:[Lt4/P;


# instance fields
.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lt4/P;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lt4/P;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lt4/P;->e:Lt4/P;

    new-instance v1, Lt4/P;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lt4/P;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Lt4/P;->f:Lt4/P;

    new-instance v2, Lt4/P;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "FLOAT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lt4/P;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lt4/P;->g:Lt4/P;

    new-instance v3, Lt4/P;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "DOUBLE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lt4/P;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lt4/P;->h:Lt4/P;

    new-instance v4, Lt4/P;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "BOOLEAN"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lt4/P;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lt4/P;->i:Lt4/P;

    new-instance v5, Lt4/P;

    const-string v6, ""

    const-string v7, "STRING"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lt4/P;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v5, Lt4/P;->j:Lt4/P;

    new-instance v6, Lt4/P;

    sget-object v7, Lt4/e;->d:Lt4/w;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lt4/P;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lt4/P;->k:Lt4/P;

    new-instance v7, Lt4/P;

    const-string v8, "ENUM"

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lt4/P;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v7, Lt4/P;->l:Lt4/P;

    new-instance v8, Lt4/P;

    const-string v9, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lt4/P;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lt4/P;->m:Lt4/P;

    filled-new-array/range {v0 .. v8}, [Lt4/P;

    move-result-object v0

    sput-object v0, Lt4/P;->n:[Lt4/P;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lt4/P;->d:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt4/P;
    .locals 1

    const-class v0, Lt4/P;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt4/P;

    return-object p0
.end method

.method public static values()[Lt4/P;
    .locals 1

    sget-object v0, Lt4/P;->n:[Lt4/P;

    invoke-virtual {v0}, [Lt4/P;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt4/P;

    return-object v0
.end method
