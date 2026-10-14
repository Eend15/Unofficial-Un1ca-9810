.class public final enum LV3/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/HashMap;

.field public static final enum f:LV3/n;

.field public static final enum g:LV3/n;

.field public static final enum h:LV3/n;

.field public static final enum i:LV3/n;

.field public static final enum j:LV3/n;

.field public static final enum k:LV3/n;

.field public static final enum l:LV3/n;

.field public static final enum m:LV3/n;

.field public static final enum n:LV3/n;

.field public static final enum o:LV3/n;

.field public static final enum p:LV3/n;

.field public static final enum q:LV3/n;

.field public static final enum r:LV3/n;

.field public static final synthetic s:[LV3/n;


# instance fields
.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 44

    new-instance v0, LV3/n;

    const-string v1, "CLASS"

    const/4 v15, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v15, v1, v2}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v0, LV3/n;->f:LV3/n;

    new-instance v1, LV3/n;

    const-string v3, "ANNOTATION_CLASS"

    invoke-direct {v1, v2, v3, v2}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v1, LV3/n;->g:LV3/n;

    new-instance v3, LV3/n;

    const-string v4, "TYPE_PARAMETER"

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v3, LV3/n;->h:LV3/n;

    new-instance v4, LV3/n;

    const-string v5, "PROPERTY"

    const/4 v6, 0x3

    invoke-direct {v4, v6, v5, v2}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v4, LV3/n;->i:LV3/n;

    new-instance v5, LV3/n;

    const-string v6, "FIELD"

    const/4 v7, 0x4

    invoke-direct {v5, v7, v6, v2}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v5, LV3/n;->j:LV3/n;

    new-instance v6, LV3/n;

    const-string v7, "LOCAL_VARIABLE"

    const/4 v8, 0x5

    invoke-direct {v6, v8, v7, v2}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v6, LV3/n;->k:LV3/n;

    new-instance v7, LV3/n;

    const-string v8, "VALUE_PARAMETER"

    const/4 v9, 0x6

    invoke-direct {v7, v9, v8, v2}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v7, LV3/n;->l:LV3/n;

    new-instance v8, LV3/n;

    const-string v9, "CONSTRUCTOR"

    const/4 v10, 0x7

    invoke-direct {v8, v10, v9, v2}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v8, LV3/n;->m:LV3/n;

    new-instance v9, LV3/n;

    const-string v10, "FUNCTION"

    const/16 v11, 0x8

    invoke-direct {v9, v11, v10, v2}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v9, LV3/n;->n:LV3/n;

    new-instance v10, LV3/n;

    const-string v11, "PROPERTY_GETTER"

    const/16 v12, 0x9

    invoke-direct {v10, v12, v11, v2}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v10, LV3/n;->o:LV3/n;

    new-instance v11, LV3/n;

    const-string v12, "PROPERTY_SETTER"

    const/16 v13, 0xa

    invoke-direct {v11, v13, v12, v2}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v11, LV3/n;->p:LV3/n;

    new-instance v12, LV3/n;

    const/16 v2, 0xb

    const-string v13, "TYPE"

    invoke-direct {v12, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v12, LV3/n;->q:LV3/n;

    new-instance v13, LV3/n;

    const/16 v2, 0xc

    const-string v14, "EXPRESSION"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0xd

    move-object/from16 v16, v13

    const-string v13, "FILE"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    sput-object v14, LV3/n;->r:LV3/n;

    new-instance v13, LV3/n;

    const/16 v2, 0xe

    move-object/from16 v17, v14

    const-string v14, "TYPEALIAS"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0xf

    move-object/from16 v18, v13

    const-string v13, "TYPE_PROJECTION"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x10

    move-object/from16 v19, v14

    const-string v14, "STAR_PROJECTION"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x11

    move-object/from16 v20, v13

    const-string v13, "PROPERTY_PARAMETER"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x12

    move-object/from16 v21, v14

    const-string v14, "CLASS_ONLY"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x13

    move-object/from16 v22, v13

    const-string v13, "OBJECT"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x14

    move-object/from16 v23, v14

    const-string v14, "COMPANION_OBJECT"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x15

    move-object/from16 v24, v13

    const-string v13, "INTERFACE"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x16

    move-object/from16 v25, v14

    const-string v14, "ENUM_CLASS"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x17

    move-object/from16 v26, v13

    const-string v13, "ENUM_ENTRY"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x18

    move-object/from16 v27, v14

    const-string v14, "LOCAL_CLASS"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x19

    move-object/from16 v28, v13

    const-string v13, "LOCAL_FUNCTION"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x1a

    move-object/from16 v29, v14

    const-string v14, "MEMBER_FUNCTION"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x1b

    move-object/from16 v30, v13

    const-string v13, "TOP_LEVEL_FUNCTION"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x1c

    move-object/from16 v31, v14

    const-string v14, "MEMBER_PROPERTY"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x1d

    move-object/from16 v32, v13

    const-string v13, "MEMBER_PROPERTY_WITH_BACKING_FIELD"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x1e

    move-object/from16 v33, v14

    const-string v14, "MEMBER_PROPERTY_WITH_DELEGATE"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x1f

    move-object/from16 v34, v13

    const-string v13, "MEMBER_PROPERTY_WITHOUT_FIELD_OR_DELEGATE"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x20

    move-object/from16 v35, v14

    const-string v14, "TOP_LEVEL_PROPERTY"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x21

    move-object/from16 v36, v13

    const-string v13, "TOP_LEVEL_PROPERTY_WITH_BACKING_FIELD"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x22

    move-object/from16 v37, v14

    const-string v14, "TOP_LEVEL_PROPERTY_WITH_DELEGATE"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x23

    move-object/from16 v38, v13

    const-string v13, "TOP_LEVEL_PROPERTY_WITHOUT_FIELD_OR_DELEGATE"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x24

    move-object/from16 v39, v14

    const-string v14, "INITIALIZER"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x25

    move-object/from16 v40, v13

    const-string v13, "DESTRUCTURING_DECLARATION"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x26

    move-object/from16 v41, v14

    const-string v14, "LAMBDA_EXPRESSION"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v14, LV3/n;

    const/16 v2, 0x27

    move-object/from16 v42, v13

    const-string v13, "ANONYMOUS_FUNCTION"

    invoke-direct {v14, v2, v13, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    new-instance v13, LV3/n;

    const/16 v2, 0x28

    move-object/from16 v43, v14

    const-string v14, "OBJECT_LITERAL"

    invoke-direct {v13, v2, v14, v15}, LV3/n;-><init>(ILjava/lang/String;Z)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move-object/from16 v14, v18

    move-object/from16 v16, v20

    move-object/from16 v18, v22

    move-object/from16 v20, v24

    move-object/from16 v22, v26

    move-object/from16 v24, v28

    move-object/from16 v26, v30

    move-object/from16 v28, v32

    move-object/from16 v30, v34

    move-object/from16 v32, v36

    move-object/from16 v34, v38

    move-object/from16 v36, v40

    move-object/from16 v38, v42

    move-object/from16 v40, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v41

    move-object/from16 v41, v43

    move/from16 v42, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v41

    filled-new-array/range {v0 .. v40}, [LV3/n;

    move-result-object v0

    sput-object v0, LV3/n;->s:[LV3/n;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LV3/n;->e:Ljava/util/HashMap;

    invoke-static {}, LV3/n;->values()[LV3/n;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v42

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    add-int/lit8 v15, v15, 0x1

    sget-object v3, LV3/n;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, LV3/n;->values()[LV3/n;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move/from16 v15, v42

    :goto_1
    if-ge v15, v2, :cond_2

    aget-object v3, v0, v15

    iget-boolean v4, v3, LV3/n;->d:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    invoke-static {}, LV3/n;->values()[LV3/n;

    move-result-object v0

    invoke-static {v0}, Lr3/h;->v0([Ljava/lang/Object;)Ljava/util/Set;

    sget-object v0, LV3/d;->k:LV3/d;

    sget-object v1, LV3/n;->l:LV3/n;

    new-instance v2, Lq3/f;

    invoke-direct {v2, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/d;->e:LV3/d;

    sget-object v3, LV3/n;->j:LV3/n;

    new-instance v4, Lq3/f;

    invoke-direct {v4, v0, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/d;->g:LV3/d;

    sget-object v5, LV3/n;->i:LV3/n;

    new-instance v6, Lq3/f;

    invoke-direct {v6, v0, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/d;->f:LV3/d;

    sget-object v5, LV3/n;->r:LV3/n;

    new-instance v7, Lq3/f;

    invoke-direct {v7, v0, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/d;->h:LV3/d;

    sget-object v5, LV3/n;->o:LV3/n;

    new-instance v8, Lq3/f;

    invoke-direct {v8, v0, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/d;->i:LV3/d;

    sget-object v5, LV3/n;->p:LV3/n;

    new-instance v9, Lq3/f;

    invoke-direct {v9, v0, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/d;->j:LV3/d;

    new-instance v10, Lq3/f;

    invoke-direct {v10, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/d;->l:LV3/d;

    new-instance v11, Lq3/f;

    invoke-direct {v11, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/d;->m:LV3/d;

    new-instance v1, Lq3/f;

    invoke-direct {v1, v0, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v1

    filled-new-array/range {v2 .. v10}, [Lq3/f;

    move-result-object v0

    invoke-static {v0}, Lr3/v;->f0([Lq3/f;)Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, LV3/n;->d:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LV3/n;
    .locals 1

    const-class v0, LV3/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LV3/n;

    return-object p0
.end method

.method public static values()[LV3/n;
    .locals 1

    sget-object v0, LV3/n;->s:[LV3/n;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LV3/n;

    return-object v0
.end method
