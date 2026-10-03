.class public abstract LX3/c;
.super LX3/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(LI4/o;LU3/j;LV3/h;Ls4/f;IZILU3/M;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p5, :cond_1

    if-eqz p8, :cond_0

    invoke-direct/range {p0 .. p8}, LX3/k;-><init>(LI4/o;LU3/j;LV3/h;Ls4/f;IZILU3/M;)V

    return-void

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, LX3/c;->z0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x4

    invoke-static {p0}, LX3/c;->z0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, LX3/c;->z0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, LX3/c;->z0(I)V

    throw v0
.end method

.method public static synthetic z0(I)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    const-string p0, "storageManager"

    aput-object p0, v0, v1

    goto :goto_0

    :pswitch_0
    const-string p0, "supertypeLoopChecker"

    aput-object p0, v0, v1

    goto :goto_0

    :pswitch_1
    const-string p0, "source"

    aput-object p0, v0, v1

    goto :goto_0

    :pswitch_2
    const-string p0, "variance"

    aput-object p0, v0, v1

    goto :goto_0

    :pswitch_3
    const-string p0, "name"

    aput-object p0, v0, v1

    goto :goto_0

    :pswitch_4
    const-string p0, "annotations"

    aput-object p0, v0, v1

    goto :goto_0

    :pswitch_5
    const-string p0, "containingDeclaration"

    aput-object p0, v0, v1

    :goto_0
    const/4 p0, 0x1

    const-string v1, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor"

    aput-object v1, v0, p0

    const/4 p0, 0x2

    const-string v1, "<init>"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, LX3/k;->i:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, "reified "

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, LX3/k;->z()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LX3/k;->z()I

    move-result v1

    invoke-static {v1}, LB/a;->A(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
