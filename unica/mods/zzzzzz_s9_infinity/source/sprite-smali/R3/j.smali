.class public abstract LR3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ls4/f;


# instance fields
.field public a:LX3/D;

.field public final b:LI4/i;

.field public final c:LI4/e;

.field public final d:LI4/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<built-ins module>"

    invoke-static {v0}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LR3/j;->e:Ls4/f;

    return-void
.end method

.method public constructor <init>(LI4/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR3/j;->d:LI4/l;

    new-instance v0, LR3/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR3/g;-><init>(LR3/j;I)V

    invoke-virtual {p1, v0}, LI4/l;->a(LE3/a;)LI4/i;

    new-instance v0, LR3/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LR3/g;-><init>(LR3/j;I)V

    new-instance v1, LI4/i;

    invoke-direct {v1, p1, v0}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v1, p0, LR3/j;->b:LI4/i;

    new-instance v0, LR3/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LR3/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, LI4/l;->b(LE3/b;)LI4/e;

    move-result-object p1

    iput-object p1, p0, LR3/j;->c:LI4/e;

    return-void
.end method

.method public static A(LJ4/C;Ls4/e;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, LR3/j;->z(LJ4/C;Ls4/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0x87

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static B(LU3/s;)Z
    .locals 4

    if-eqz p0, :cond_4

    invoke-interface {p0}, LU3/j;->a()LU3/j;

    move-result-object v0

    invoke-interface {v0}, LV3/a;->p()LV3/h;

    move-result-object v0

    sget-object v1, LR3/o;->m:Ls4/c;

    invoke-interface {v0, v1}, LV3/h;->e(Ls4/c;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, LX3/L;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p0, LX3/L;

    iget-object v0, p0, LX3/L;->x:LX3/M;

    iget-object v3, p0, LX3/L;->y:LX3/N;

    if-eqz v0, :cond_1

    invoke-static {v0}, LR3/j;->B(LU3/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, LX3/L;->i:Z

    if-eqz p0, :cond_2

    if-eqz v3, :cond_1

    invoke-static {v3}, LR3/j;->B(LU3/s;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2

    :cond_4
    const/16 p0, 0xa0

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static C(LJ4/C;Ls4/e;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, LR3/j;->z(LJ4/C;Ls4/e;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0x6a

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0x69

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public static D(LJ4/C;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p0, :cond_1

    sget-object v0, LR3/o;->b:Ls4/e;

    invoke-static {p0, v0}, LR3/j;->z(LJ4/C;Ls4/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LJ4/Z;->e(LJ4/C;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0x8a

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0x88

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public static E(LJ4/C;)Z
    .locals 1

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    instance-of v0, p0, LU3/e;

    if-eqz v0, :cond_1

    check-cast p0, LU3/e;

    if-eqz p0, :cond_0

    invoke-static {p0}, LR3/j;->s(LU3/e;)LR3/l;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x60

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static F(LJ4/M;Ls4/e;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    instance-of v0, p0, LU3/e;

    if-eqz v0, :cond_0

    check-cast p0, LU3/e;

    invoke-static {p0, p1}, LR3/j;->b(LU3/e;Ls4/e;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0x66

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0x65

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public static G(LU3/g;)Z
    .locals 1

    if-eqz p0, :cond_2

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, LU3/B;

    if-eqz v0, :cond_0

    check-cast p0, LU3/B;

    check-cast p0, LX3/F;

    sget-object v0, LR3/p;->i:Ls4/f;

    iget-object p0, p0, LX3/F;->h:Ls4/c;

    invoke-virtual {p0, v0}, Ls4/c;->h(Ls4/f;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/16 p0, 0xa

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .locals 13

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "declarationDescriptor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "classDescriptor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "typeConstructor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "argument"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "projectionType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "kotlinType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "primitiveType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    const-string v5, "notNullArrayType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_d
    const-string v5, "arrayType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_e
    const-string v5, "classSimpleName"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_f
    const-string v5, "type"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_10
    const-string v5, "simpleName"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_11
    const-string v5, "fqName"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_12
    const-string v5, "descriptor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_13
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_14
    const-string v5, "computation"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_15
    const-string v5, "module"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "getBuiltInClassByFqName"

    const-string v5, "getBuiltInClassByName"

    const-string v6, "getBuiltInTypeByClassName"

    const-string v7, "getPrimitiveKotlinType"

    const-string v8, "getArrayElementType"

    const-string v9, "getPrimitiveArrayKotlinType"

    const-string v10, "getArrayType"

    const-string v11, "getEnumType"

    const/4 v12, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_16
    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_17
    const-string v3, "getAnnotationType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_18
    aput-object v11, v2, v12

    goto/16 :goto_3

    :pswitch_19
    aput-object v10, v2, v12

    goto/16 :goto_3

    :pswitch_1a
    aput-object v9, v2, v12

    goto/16 :goto_3

    :pswitch_1b
    aput-object v8, v2, v12

    goto/16 :goto_3

    :pswitch_1c
    const-string v3, "getIterableType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_1d
    const-string v3, "getStringType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_1e
    const-string v3, "getUnitType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_1f
    const-string v3, "getBooleanType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_20
    const-string v3, "getCharType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_21
    const-string v3, "getDoubleType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_22
    const-string v3, "getFloatType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_23
    const-string v3, "getLongType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_24
    const-string v3, "getIntType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_25
    const-string v3, "getShortType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_26
    const-string v3, "getByteType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_27
    const-string v3, "getNumberType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_28
    aput-object v7, v2, v12

    goto/16 :goto_3

    :pswitch_29
    const-string v3, "getDefaultBound"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_2a
    const-string v3, "getNullableAnyType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_2b
    const-string v3, "getAnyType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_2c
    const-string v3, "getNullableNothingType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_2d
    const-string v3, "getNothingType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_2e
    aput-object v6, v2, v12

    goto/16 :goto_3

    :pswitch_2f
    const-string v3, "getMutableListIterator"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_30
    const-string v3, "getListIterator"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_31
    const-string v3, "getMutableMapEntry"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_32
    const-string v3, "getMapEntry"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_33
    const-string v3, "getMutableMap"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_34
    const-string v3, "getMap"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_35
    const-string v3, "getMutableSet"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_36
    const-string v3, "getSet"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_37
    const-string v3, "getMutableList"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_38
    const-string v3, "getList"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_39
    const-string v3, "getMutableCollection"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3a
    const-string v3, "getCollection"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3b
    const-string v3, "getMutableIterator"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3c
    const-string v3, "getMutableIterable"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3d
    const-string v3, "getIterable"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3e
    const-string v3, "getIterator"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3f
    const-string v3, "getKMutableProperty2"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_40
    const-string v3, "getKMutableProperty1"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_41
    const-string v3, "getKMutableProperty0"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_42
    const-string v3, "getKProperty2"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_43
    const-string v3, "getKProperty1"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_44
    const-string v3, "getKProperty0"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_45
    const-string v3, "getKProperty"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_46
    const-string v3, "getKCallable"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_47
    const-string v3, "getKClass"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_48
    const-string v3, "getKSuspendFunction"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_49
    const-string v3, "getKFunction"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_4a
    const-string v3, "getSuspendFunction"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_4b
    aput-object v5, v2, v12

    goto :goto_3

    :pswitch_4c
    aput-object v4, v2, v12

    goto :goto_3

    :pswitch_4d
    const-string v3, "getBuiltInsPackageScope"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_4e
    const-string v3, "getBuiltInPackagesImportedByDefault"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_4f
    const-string v3, "getBuiltInsModule"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_50
    const-string v3, "getStorageManager"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_51
    const-string v3, "getClassDescriptorFactories"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_52
    const-string v3, "getPlatformDependentDeclarationFilter"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_53
    const-string v3, "getAdditionalClassPartsProvider"

    aput-object v3, v2, v12

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_54
    const-string v3, "isNotNullOrNullableFunctionSupertype"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_55
    const-string v3, "isDeprecated"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_56
    const-string v3, "isCloneable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_57
    const-string v3, "isNonPrimitiveArray"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_58
    const-string v3, "isKClass"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_59
    const-string v3, "isThrowable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5a
    const-string v3, "isThrowableOrNullableThrowable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5b
    const-string v3, "isIterableOrNullableIterable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5c
    const-string v3, "isMapOrNullableMap"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5d
    const-string v3, "isSetOrNullableSet"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5e
    const-string v3, "isListOrNullableList"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5f
    const-string v3, "isCollectionOrNullableCollection"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_60
    const-string v3, "isComparable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_61
    const-string v3, "isEnum"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_62
    const-string v3, "isMemberOfAny"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_63
    const-string v3, "isBooleanOrSubtype"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_64
    const-string v3, "isUnitOrNullableUnit"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_65
    const-string v3, "isUnit"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_66
    const-string v3, "isDefaultBound"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_67
    const-string v3, "isNullableAny"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_68
    const-string v3, "isAnyOrNullableAny"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_69
    const-string v3, "isNothingOrNullableNothing"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6a
    const-string v3, "isNullableNothing"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6b
    const-string v3, "isNothing"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6c
    const-string v3, "isConstructedFromGivenClassAndNotNullable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6d
    const-string v3, "isDoubleOrNullableDouble"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6e
    const-string v3, "isUnsignedArrayType"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6f
    const-string v3, "isULongArray"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_70
    const-string v3, "isUIntArray"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_71
    const-string v3, "isUShortArray"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_72
    const-string v3, "isUByteArray"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_73
    const-string v3, "isULong"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_74
    const-string v3, "isUInt"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_75
    const-string v3, "isUShort"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_76
    const-string v3, "isUByte"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_77
    const-string v3, "isDouble"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_78
    const-string v3, "isFloatOrNullableFloat"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_79
    const-string v3, "isFloat"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7a
    const-string v3, "isShort"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7b
    const-string v3, "isLongOrNullableLong"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7c
    const-string v3, "isLong"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7d
    const-string v3, "isByte"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7e
    const-string v3, "isInt"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7f
    const-string v3, "isCharOrNullableChar"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_80
    const-string v3, "isChar"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_81
    const-string v3, "isNumber"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_82
    const-string v3, "isBooleanOrNullableBoolean"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_83
    const-string v3, "isBoolean"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_84
    const-string v3, "isAny"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_85
    const-string v3, "isSpecialClassWithNoSupertypes"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_86
    const-string v3, "isNotNullConstructedFromGivenClass"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_87
    const-string v3, "classFqNameEquals"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_88
    const-string v3, "isTypeConstructorForGivenClass"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_89
    const-string v3, "isConstructedFromGivenClass"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_8a
    const-string v3, "isPrimitiveClass"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_8b
    const-string v3, "isPrimitiveTypeOrNullablePrimitiveType"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_8c
    const-string v3, "isPrimitiveType"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_8d
    const-string v3, "getPrimitiveArrayElementType"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_8e
    const-string v3, "isPrimitiveArray"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_8f
    const-string v3, "isArrayOrPrimitiveArray"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_90
    const-string v3, "isArray"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_91
    aput-object v11, v2, v1

    goto :goto_4

    :pswitch_92
    aput-object v10, v2, v1

    goto :goto_4

    :pswitch_93
    const-string v3, "getPrimitiveArrayType"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_94
    const-string v3, "getPrimitiveType"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_95
    const-string v3, "getPrimitiveArrayKotlinTypeByPrimitiveKotlinType"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_96
    aput-object v9, v2, v1

    goto :goto_4

    :pswitch_97
    const-string v3, "getElementTypeForUnsignedArray"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_98
    aput-object v8, v2, v1

    goto :goto_4

    :pswitch_99
    aput-object v7, v2, v1

    goto :goto_4

    :pswitch_9a
    aput-object v6, v2, v1

    goto :goto_4

    :pswitch_9b
    const-string v3, "getPrimitiveArrayClassDescriptor"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_9c
    const-string v3, "getPrimitiveClassDescriptor"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_9d
    aput-object v5, v2, v1

    goto :goto_4

    :pswitch_9e
    aput-object v4, v2, v1

    goto :goto_4

    :pswitch_9f
    const-string v3, "isUnderKotlinPackage"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_a0
    const-string v3, "isBuiltIn"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_a1
    const-string v3, "setPostponedBuiltinsModuleComputation"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_a2
    const-string v3, "setBuiltInsModule"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_a3
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_a4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_a5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_13
        :pswitch_10
        :pswitch_13
        :pswitch_f
        :pswitch_f
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_e
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_f
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_d
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_c
        :pswitch_15
        :pswitch_b
        :pswitch_13
        :pswitch_a
        :pswitch_12
        :pswitch_12
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_13
        :pswitch_9
        :pswitch_8
        :pswitch_13
        :pswitch_8
        :pswitch_13
        :pswitch_13
        :pswitch_f
        :pswitch_12
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_11
        :pswitch_6
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_5
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_12
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_4
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_16
        :pswitch_16
        :pswitch_4d
        :pswitch_16
        :pswitch_4c
        :pswitch_16
        :pswitch_4b
        :pswitch_16
        :pswitch_16
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_16
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_16
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_16
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_1a
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_19
        :pswitch_16
        :pswitch_16
        :pswitch_19
        :pswitch_16
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_a1
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a0
        :pswitch_9f
        :pswitch_a3
        :pswitch_9e
        :pswitch_a3
        :pswitch_9d
        :pswitch_a3
        :pswitch_9c
        :pswitch_9b
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_9a
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_99
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_98
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_97
        :pswitch_97
        :pswitch_96
        :pswitch_a3
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_92
        :pswitch_92
        :pswitch_a3
        :pswitch_92
        :pswitch_92
        :pswitch_a3
        :pswitch_91
        :pswitch_a3
        :pswitch_a3
        :pswitch_90
        :pswitch_8f
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_94
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_88
        :pswitch_88
        :pswitch_87
        :pswitch_87
        :pswitch_86
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_83
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_61
        :pswitch_60
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a4
        :pswitch_a4
        :pswitch_a5
        :pswitch_a4
        :pswitch_a5
        :pswitch_a4
        :pswitch_a5
        :pswitch_a4
        :pswitch_a4
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a4
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a4
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a4
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a4
        :pswitch_a4
        :pswitch_a4
        :pswitch_a5
        :pswitch_a4
        :pswitch_a4
        :pswitch_a4
        :pswitch_a4
        :pswitch_a4
        :pswitch_a4
        :pswitch_a5
        :pswitch_a4
        :pswitch_a4
        :pswitch_a5
        :pswitch_a4
        :pswitch_a5
        :pswitch_a5
    .end packed-switch
.end method

.method public static b(LU3/e;Ls4/e;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object v0

    invoke-virtual {p1}, Ls4/e;->f()Ls4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls4/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0x68

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0x67

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public static q(LU3/g;)LR3/l;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, LR3/o;->a0:Ljava/util/HashSet;

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, LR3/o;->c0:Ljava/util/HashMap;

    invoke-static {p0}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, LR3/l;

    :cond_0
    return-object v0

    :cond_1
    const/16 p0, 0x4d

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public static s(LU3/e;)LR3/l;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, LR3/o;->Z:Ljava/util/HashSet;

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, LR3/o;->b0:Ljava/util/HashMap;

    invoke-static {p0}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, LR3/l;

    :cond_0
    return-object v0

    :cond_1
    const/16 p0, 0x4c

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public static w(LJ4/C;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, LR3/o;->a:Ls4/e;

    invoke-static {p0, v0}, LR3/j;->z(LJ4/C;Ls4/e;)Z

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x8b

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static x(LJ4/C;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, LR3/o;->g:Ls4/e;

    invoke-static {p0, v0}, LR3/j;->z(LJ4/C;Ls4/e;)Z

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x58

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static y(LU3/j;)Z
    .locals 2

    if-eqz p0, :cond_1

    const-class v0, LG4/c;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lv4/f;->i(LU3/j;Ljava/lang/Class;Z)LU3/j;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/16 p0, 0x9

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static z(LJ4/C;Ls4/e;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-static {p0, p1}, LR3/j;->F(LJ4/M;Ls4/e;)Z

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x62

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x61

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method


# virtual methods
.method public final c(Z)V
    .locals 10

    new-instance v0, LX3/D;

    sget-object v1, LR3/j;->e:Ls4/f;

    const-string v2, "moduleName"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, LR3/j;->d:LI4/l;

    const/16 v2, 0x30

    invoke-direct {v0, v1, v4, p0, v2}, LX3/D;-><init>(Ls4/f;LI4/l;LR3/j;I)V

    iput-object v0, p0, LR3/j;->a:LX3/D;

    sget-object v1, LR3/c;->a:LR3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LR3/b;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/c;

    iget-object v5, p0, LR3/j;->a:LX3/D;

    invoke-virtual {p0}, LR3/j;->l()Ljava/lang/Iterable;

    move-result-object v6

    invoke-virtual {p0}, LR3/j;->o()LW3/d;

    move-result-object v7

    invoke-virtual {p0}, LR3/j;->d()LW3/b;

    move-result-object v8

    move-object v3, v1

    check-cast v3, LG4/b;

    move v9, p1

    invoke-virtual/range {v3 .. v9}, LG4/b;->a(LI4/o;LU3/x;Ljava/lang/Iterable;LW3/d;LW3/b;Z)LU3/C;

    move-result-object p1

    const-string v1, "providerForModuleContent"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, LX3/D;->k:LU3/C;

    iget-object p0, p0, LR3/j;->a:LX3/D;

    filled-new-array {p0}, [LX3/D;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lr3/h;->u0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, LX3/C;

    invoke-direct {v0, p1}, LX3/C;-><init>(Ljava/util/List;)V

    iput-object v0, p0, LX3/D;->j:LX3/C;

    return-void
.end method

.method public d()LW3/b;
    .locals 0

    sget-object p0, LW3/a;->b:LW3/a;

    return-object p0
.end method

.method public final e()LJ4/G;
    .locals 1

    const-string v0, "Any"

    invoke-virtual {p0, v0}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x32

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(LJ4/C;)LJ4/C;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-static {p1}, LR3/j;->x(LJ4/C;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    invoke-virtual {p1}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/P;

    invoke-virtual {p0}, LJ4/P;->b()LJ4/C;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x44

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p1, v2}, LJ4/Z;->g(LJ4/C;Z)LJ4/b0;

    move-result-object v1

    iget-object p0, p0, LR3/j;->b:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LR3/i;

    iget-object p0, p0, LR3/i;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/C;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    sget p0, Lv4/f;->a:I

    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    if-nez p0, :cond_4

    move-object p0, v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lv4/f;->e(LU3/j;)LU3/x;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_a

    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->e()LU3/g;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    sget-object v2, LR3/t;->a:Ljava/util/Set;

    invoke-interface {v1}, LU3/j;->r()Ls4/f;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v2, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, LR3/t;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lz4/e;->f(LU3/g;)Ls4/b;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    sget-object v2, LR3/t;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls4/b;

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {p0, v1}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not array: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const/16 p0, 0x43

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public final g(ILJ4/C;LV3/h;)LJ4/G;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, LJ4/Q;

    invoke-direct {v0, p1, p2}, LJ4/Q;-><init>(ILJ4/C;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "Array"

    invoke-virtual {p0, p2}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object p0

    invoke-static {p3, p0, p1}, LJ4/d;->o(LV3/h;LU3/e;Ljava/util/List;)LJ4/G;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x4f

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x4e

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public final h(LJ4/b0;)LJ4/G;
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, LV3/g;->a:LV3/f;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, LR3/j;->g(ILJ4/C;LV3/h;)LJ4/G;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x53

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(Ls4/c;)LU3/e;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LR3/j;->k()LX3/D;

    move-result-object p0

    invoke-static {p0, p1}, LR3/f;->Y(LX3/D;Ls4/c;)LU3/e;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xd

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0xc

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public final j(Ljava/lang/String;)LU3/e;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p1

    iget-object p0, p0, LR3/j;->c:LI4/e;

    invoke-virtual {p0, p1}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/e;

    return-object p0

    :cond_0
    const/16 p0, 0xe

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k()LX3/D;
    .locals 1

    iget-object v0, p0, LR3/j;->a:LX3/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LR3/j;->a:LX3/D;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public l()Ljava/lang/Iterable;
    .locals 2

    new-instance v0, LS3/a;

    iget-object v1, p0, LR3/j;->d:LI4/l;

    invoke-virtual {p0}, LR3/j;->k()LX3/D;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LS3/a;-><init>(LI4/l;LX3/D;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m()LJ4/G;
    .locals 1

    const-string v0, "Nothing"

    invoke-virtual {p0, v0}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x30

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n()LJ4/G;
    .locals 1

    invoke-virtual {p0}, LR3/j;->e()LJ4/G;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x33

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public o()LW3/d;
    .locals 0

    sget-object p0, LW3/a;->d:LW3/a;

    return-object p0
.end method

.method public final p(LR3/l;)LJ4/G;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, LR3/j;->b:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LR3/i;

    iget-object p0, p0, LR3/i;->a:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/G;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x4a

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x49

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public final r(LR3/l;)LJ4/G;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, LR3/l;->d:Ls4/f;

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x36

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x35

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public final t()LJ4/G;
    .locals 1

    const-string v0, "String"

    invoke-virtual {p0, v0}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x41

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final u(I)LU3/e;
    .locals 2

    sget-object v0, LR3/p;->c:Ls4/c;

    sget-object v1, LS3/e;->h:LS3/e;

    iget-object v1, v1, LS3/e;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object p1

    invoke-virtual {p0, p1}, LR3/j;->i(Ls4/c;)LU3/e;

    move-result-object p0

    return-object p0
.end method

.method public final v()LJ4/G;
    .locals 1

    const-string v0, "Unit"

    invoke-virtual {p0, v0}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x40

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
