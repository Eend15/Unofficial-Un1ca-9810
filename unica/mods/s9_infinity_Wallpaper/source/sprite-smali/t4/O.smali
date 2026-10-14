.class public enum Lt4/O;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum f:Lt4/O;

.field public static final enum g:Lt4/O;

.field public static final enum h:Lt4/L;

.field public static final enum i:Lt4/M;

.field public static final enum j:Lt4/O;

.field public static final synthetic k:[Lt4/O;


# instance fields
.field public final d:Lt4/P;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lt4/O;

    sget-object v1, Lt4/P;->h:Lt4/P;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v1, Lt4/O;

    sget-object v2, Lt4/P;->g:Lt4/P;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v2, Lt4/O;

    sget-object v5, Lt4/P;->f:Lt4/P;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v7, Lt4/O;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v9, Lt4/O;

    sget-object v11, Lt4/P;->e:Lt4/P;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    sput-object v9, Lt4/O;->f:Lt4/O;

    new-instance v15, Lt4/O;

    const-string v12, "FIXED64"

    invoke-direct {v15, v12, v6, v5, v4}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v14, Lt4/O;

    const/4 v12, 0x6

    const-string v13, "FIXED32"

    invoke-direct {v14, v13, v12, v11, v6}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v13, Lt4/O;

    sget-object v12, Lt4/P;->i:Lt4/P;

    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v13, v4, v6, v12, v3}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    sput-object v13, Lt4/O;->g:Lt4/O;

    new-instance v6, Lt4/K;

    sget-object v4, Lt4/P;->j:Lt4/P;

    const-string v12, "STRING"

    const/16 v3, 0x8

    invoke-direct {v6, v12, v3, v4, v8}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v4, Lt4/L;

    sget-object v3, Lt4/P;->m:Lt4/P;

    const-string v12, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v4, v12, v8, v3, v10}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    sput-object v4, Lt4/O;->h:Lt4/L;

    new-instance v10, Lt4/M;

    const-string v8, "MESSAGE"

    const/16 v12, 0xa

    move-object/from16 v19, v4

    const/4 v4, 0x2

    invoke-direct {v10, v8, v12, v3, v4}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    sput-object v10, Lt4/O;->i:Lt4/M;

    new-instance v8, Lt4/N;

    sget-object v3, Lt4/P;->k:Lt4/P;

    const-string v12, "BYTES"

    move-object/from16 v18, v6

    const/16 v6, 0xb

    invoke-direct {v8, v12, v6, v3, v4}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v3, Lt4/O;

    move-object v12, v3

    const/16 v4, 0xc

    const-string v6, "UINT32"

    move-object/from16 v20, v8

    const/4 v8, 0x0

    invoke-direct {v3, v6, v4, v11, v8}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v3, Lt4/O;

    move-object/from16 v21, v13

    move-object v13, v3

    sget-object v4, Lt4/P;->l:Lt4/P;

    const-string v6, "ENUM"

    move-object/from16 v22, v14

    const/16 v14, 0xd

    invoke-direct {v3, v6, v14, v4, v8}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    sput-object v3, Lt4/O;->j:Lt4/O;

    new-instance v3, Lt4/O;

    move-object/from16 v6, v22

    move-object v14, v3

    const/16 v4, 0xe

    const-string v8, "SFIXED32"

    move-object/from16 v22, v15

    const/4 v15, 0x5

    invoke-direct {v3, v8, v4, v11, v15}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v3, Lt4/O;

    move-object/from16 v8, v22

    move-object v15, v3

    const/16 v4, 0xf

    move-object/from16 v22, v12

    const-string v12, "SFIXED64"

    move-object/from16 v23, v13

    const/4 v13, 0x1

    invoke-direct {v3, v12, v4, v5, v13}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v3, Lt4/O;

    move-object/from16 v16, v3

    const/16 v4, 0x10

    const-string v12, "SINT32"

    const/4 v13, 0x0

    invoke-direct {v3, v12, v4, v11, v13}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    new-instance v3, Lt4/O;

    move-object/from16 v17, v3

    const/16 v4, 0x11

    const-string v11, "SINT64"

    invoke-direct {v3, v11, v4, v5, v13}, Lt4/O;-><init>(Ljava/lang/String;ILt4/P;I)V

    move-object v3, v7

    move-object/from16 v11, v19

    move-object v4, v9

    move-object v5, v8

    move-object/from16 v8, v18

    move-object/from16 v7, v21

    move-object/from16 v12, v20

    move-object v9, v11

    move-object v11, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    filled-new-array/range {v0 .. v17}, [Lt4/O;

    move-result-object v0

    sput-object v0, Lt4/O;->k:[Lt4/O;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILt4/P;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lt4/O;->d:Lt4/P;

    iput p4, p0, Lt4/O;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt4/O;
    .locals 1

    const-class v0, Lt4/O;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt4/O;

    return-object p0
.end method

.method public static values()[Lt4/O;
    .locals 1

    sget-object v0, Lt4/O;->k:[Lt4/O;

    invoke-virtual {v0}, [Lt4/O;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt4/O;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 0

    instance-of p0, p0, Lt4/K;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
