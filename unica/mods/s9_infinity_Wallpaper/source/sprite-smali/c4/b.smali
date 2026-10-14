.class public final enum Lc4/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lc4/b;

.field public static final enum e:Lc4/b;

.field public static final enum f:Lc4/b;

.field public static final enum g:Lc4/b;

.field public static final enum h:Lc4/b;

.field public static final enum i:Lc4/b;

.field public static final enum j:Lc4/b;

.field public static final enum k:Lc4/b;

.field public static final synthetic l:[Lc4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Lc4/b;

    const-string v1, "FROM_IDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lc4/b;

    const-string v2, "FROM_BACKEND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lc4/b;

    const-string v3, "FROM_TEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lc4/b;

    const-string v4, "FROM_BUILTINS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc4/b;->d:Lc4/b;

    new-instance v4, Lc4/b;

    const-string v5, "WHEN_CHECK_DECLARATION_CONFLICTS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lc4/b;

    const-string v6, "WHEN_CHECK_OVERRIDES"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lc4/b;

    const-string v7, "FOR_SCRIPT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lc4/b;

    const-string v8, "FROM_REFLECTION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lc4/b;->e:Lc4/b;

    new-instance v8, Lc4/b;

    const-string v9, "WHEN_RESOLVE_DECLARATION"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lc4/b;

    const-string v10, "WHEN_GET_DECLARATION_SCOPE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lc4/b;

    const-string v11, "WHEN_RESOLVING_DEFAULT_TYPE_ARGUMENTS"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lc4/b;

    const-string v12, "FOR_ALREADY_TRACKED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lc4/b;->f:Lc4/b;

    new-instance v12, Lc4/b;

    const-string v13, "WHEN_GET_ALL_DESCRIPTORS"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lc4/b;->g:Lc4/b;

    new-instance v13, Lc4/b;

    const-string v14, "WHEN_TYPING"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lc4/b;

    const-string v15, "WHEN_GET_SUPER_MEMBERS"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lc4/b;->h:Lc4/b;

    new-instance v15, Lc4/b;

    const-string v13, "FOR_NON_TRACKED_SCOPE"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lc4/b;->i:Lc4/b;

    new-instance v14, Lc4/b;

    const-string v13, "FROM_SYNTHETIC_SCOPE"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lc4/b;

    const-string v13, "FROM_DESERIALIZATION"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lc4/b;->j:Lc4/b;

    new-instance v14, Lc4/b;

    const-string v13, "FROM_JAVA_LOADER"

    move-object/from16 v20, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lc4/b;->k:Lc4/b;

    new-instance v15, Lc4/b;

    const-string v13, "WHEN_GET_LOCAL_VARIABLE"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lc4/b;

    const-string v13, "WHEN_FIND_BY_FQNAME"

    move-object/from16 v22, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lc4/b;

    const-string v13, "WHEN_GET_COMPANION_OBJECT"

    move-object/from16 v23, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lc4/b;

    const-string v13, "FOR_DEFAULT_IMPORTS"

    move-object/from16 v24, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v15, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    filled-new-array/range {v0 .. v22}, [Lc4/b;

    move-result-object v0

    sput-object v0, Lc4/b;->l:[Lc4/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc4/b;
    .locals 1

    const-class v0, Lc4/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc4/b;

    return-object p0
.end method

.method public static values()[Lc4/b;
    .locals 1

    sget-object v0, Lc4/b;->l:[Lc4/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc4/b;

    return-object v0
.end method
