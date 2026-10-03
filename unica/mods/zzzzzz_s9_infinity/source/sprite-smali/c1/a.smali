.class public final Lc1/a;
.super LR3/f;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc1/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final G(Ljava/lang/String;)LR3/f;
    .locals 0

    iget p0, p0, Lc1/a;->b:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "resources"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lc1/a;

    const/16 p1, 0x16

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_0

    :cond_0
    const-string p0, "animations"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lc1/a;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_0

    :cond_1
    const-string p0, "modular"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lc1/a;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_0

    :cond_2
    const-string p0, "joints"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lc1/a;

    const/16 p1, 0xe

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_0

    :cond_3
    const-string p0, "layout"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lc1/a;

    const/16 p1, 0x13

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const-string p0, "animations"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lc1/a;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_1

    :cond_5
    const-string p0, "joints"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lc1/a;

    const/16 p1, 0xe

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_1

    :cond_6
    const-string p0, "layout"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lc1/a;

    const/16 p1, 0x13

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_2
    const/4 p0, 0x0

    return-object p0

    :pswitch_3
    const-string p0, "animation"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lc1/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_2

    :cond_8
    const-string p0, "scaleAnimation"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lc1/a;

    const/16 p1, 0x18

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_2

    :cond_9
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_4
    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    const-string p0, "anchor"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lc1/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_3

    :cond_a
    const/4 p0, 0x0

    :goto_3
    return-object p0

    :pswitch_6
    const-string p0, "imageArray"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Lc1/a;

    const/16 p1, 0xc

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_4

    :cond_b
    const-string p0, "frame"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Lc1/a;

    const/16 p1, 0xd

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_4

    :cond_c
    const/4 p0, 0x0

    :goto_4
    return-object p0

    :pswitch_7
    const/4 p0, 0x0

    return-object p0

    :pswitch_8
    const-string p0, "layoutArray"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    new-instance p0, Lc1/a;

    const/16 p1, 0x12

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_5

    :cond_d
    const/4 p0, 0x0

    :goto_5
    return-object p0

    :pswitch_9
    const-string p0, "container"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    new-instance p0, Lc1/a;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_6

    :cond_e
    const/4 p0, 0x0

    :goto_6
    return-object p0

    :pswitch_a
    const-string p0, "item"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    new-instance p0, Lc1/a;

    const/16 p1, 0x11

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_7

    :cond_f
    const/4 p0, 0x0

    :goto_7
    return-object p0

    :pswitch_b
    const-string p0, "joints"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    new-instance p0, Lc1/a;

    const/16 p1, 0xe

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_8

    :cond_10
    const-string p0, "container"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    new-instance p0, Lc1/a;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_8

    :cond_11
    const/4 p0, 0x0

    :goto_8
    return-object p0

    :pswitch_c
    const-string p0, "scene"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    new-instance p0, Lc1/a;

    const/16 p1, 0x19

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_9

    :cond_12
    const-string p0, "bounds"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Lc1/a;

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_9

    :cond_13
    const-string p0, "source"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    new-instance p0, Lc1/a;

    const/16 p1, 0x1a

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_9

    :cond_14
    const/4 p0, 0x0

    :goto_9
    return-object p0

    :pswitch_d
    const-string p0, "layer"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    new-instance p0, Lc1/a;

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_a

    :cond_15
    const/4 p0, 0x0

    :goto_a
    return-object p0

    :pswitch_e
    const-string p0, "distance"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    new-instance p0, Lc1/a;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_b

    :cond_16
    const-string p0, "revolute"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    new-instance p0, Lc1/a;

    const/16 p1, 0x17

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_b

    :cond_17
    const/4 p0, 0x0

    :goto_b
    return-object p0

    :pswitch_f
    const/4 p0, 0x0

    return-object p0

    :pswitch_10
    const-string p0, "item"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    new-instance p0, Lc1/a;

    const/16 p1, 0x15

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_c

    :cond_18
    const/4 p0, 0x0

    :goto_c
    return-object p0

    :pswitch_11
    const-string p0, "item"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    new-instance p0, Lc1/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_d

    :cond_19
    const/4 p0, 0x0

    :goto_d
    return-object p0

    :pswitch_12
    const-string p0, "behavior"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    new-instance p0, Lc1/a;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_e

    :cond_1a
    const/4 p0, 0x0

    :goto_e
    return-object p0

    :pswitch_13
    const-string p0, "anchor"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    new-instance p0, Lc1/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_f

    :cond_1b
    const/4 p0, 0x0

    :goto_f
    return-object p0

    :pswitch_14
    const-string p0, "resources"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    new-instance p0, Lc1/a;

    const/16 p1, 0x16

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_10

    :cond_1c
    const/4 p0, 0x0

    :goto_10
    return-object p0

    :pswitch_15
    const-string p0, "element"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    new-instance p0, Lc1/a;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_11

    :cond_1d
    const-string p0, "behavior"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    new-instance p0, Lc1/a;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_11

    :cond_1e
    const-string p0, "action"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    new-instance p0, Lc1/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_11

    :cond_1f
    const/4 p0, 0x0

    :goto_11
    return-object p0

    :pswitch_16
    const/4 p0, 0x0

    return-object p0

    :pswitch_17
    const/4 p0, 0x0

    return-object p0

    :pswitch_18
    const-string p0, "frame"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    new-instance p0, Lc1/a;

    const/16 p1, 0xb

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_12

    :cond_20
    const-string p0, "viewProperty"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    new-instance p0, Lc1/a;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lc1/a;-><init>(I)V

    goto :goto_12

    :cond_21
    const/4 p0, 0x0

    :goto_12
    return-object p0

    :pswitch_19
    const/4 p0, 0x0

    return-object p0

    :pswitch_1a
    const/4 p0, 0x0

    return-object p0

    :pswitch_1b
    const/4 p0, 0x0

    return-object p0

    :pswitch_1c
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final V(Lorg/w3c/dom/Node;)La1/a;
    .locals 7

    iget p0, p0, Lc1/a;->b:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "wallpaper"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lc1/E;

    invoke-direct {p0}, Lc1/E;-><init>()V

    :goto_0
    return-object p0

    :pswitch_0
    const-string p0, "viewProperty"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    new-instance p0, Lc1/D;

    invoke-direct {p0}, Lc1/D;-><init>()V

    :goto_1
    return-object p0

    :pswitch_1
    const-string p0, "template"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    new-instance p0, Lc1/C;

    invoke-direct {p0}, Lc1/C;-><init>()V

    :goto_2
    return-object p0

    :pswitch_2
    const-string p0, "source"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    new-instance p0, Lc1/B;

    invoke-direct {p0}, Lc1/B;-><init>()V

    :goto_3
    return-object p0

    :pswitch_3
    const-string p0, "scene"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_4

    :cond_4
    new-instance p0, Lc1/A;

    invoke-direct {p0}, Lc1/A;-><init>()V

    :goto_4
    return-object p0

    :pswitch_4
    const-string p0, "scaleAnimation"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    new-instance p0, Lc1/z;

    invoke-direct {p0}, Lc1/e;-><init>()V

    new-instance v0, Lb1/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v2, "pivotX"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    new-instance v0, Lb1/a;

    const-string v2, "pivotY"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    move-object p1, p0

    :goto_5
    return-object p1

    :pswitch_5
    const-string p0, "revolute"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_6

    :cond_6
    new-instance p0, Lc1/y;

    invoke-direct {p0}, Lc1/y;-><init>()V

    :goto_6
    return-object p0

    :pswitch_6
    const-string p0, "resources"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    const/4 p0, 0x0

    goto :goto_7

    :cond_7
    new-instance p0, Lc1/x;

    invoke-direct {p0}, La1/a;-><init>()V

    :goto_7
    return-object p0

    :pswitch_7
    const-string p0, "item"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_8

    :cond_8
    new-instance p0, Lc1/w;

    invoke-direct {p0}, Lc1/w;-><init>()V

    :goto_8
    return-object p0

    :pswitch_8
    const-string p0, "modular"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_9

    :cond_9
    new-instance p0, Lc1/v;

    invoke-direct {p0}, La1/a;-><init>()V

    :goto_9
    return-object p0

    :pswitch_9
    const-string p0, "layout"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_a

    :cond_a
    new-instance p0, Lc1/u;

    invoke-direct {p0}, Lc1/u;-><init>()V

    :goto_a
    return-object p0

    :pswitch_a
    const-string p0, "layoutArray"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_b

    :cond_b
    new-instance p0, Lc1/t;

    invoke-direct {p0}, Lc1/t;-><init>()V

    :goto_b
    return-object p0

    :pswitch_b
    const-string p0, "item"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_c

    :cond_c
    new-instance p0, Lc1/s;

    invoke-direct {p0}, Lc1/s;-><init>()V

    :goto_c
    return-object p0

    :pswitch_c
    const-string p0, "layer"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    goto :goto_d

    :cond_d
    new-instance p0, Lc1/r;

    invoke-direct {p0}, Lc1/r;-><init>()V

    :goto_d
    return-object p0

    :pswitch_d
    const-string p0, "layerList"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_e

    :cond_e
    new-instance p0, Lc1/q;

    invoke-direct {p0}, Lc1/q;-><init>()V

    :goto_e
    return-object p0

    :pswitch_e
    const-string p0, "joints"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x0

    if-nez p0, :cond_f

    goto :goto_f

    :cond_f
    new-instance p0, Lc1/p;

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v0, Lb1/a;

    const-string v2, "id"

    const-string v3, ""

    const/4 v5, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    move-object v4, p0

    :goto_f
    return-object v4

    :pswitch_f
    const-string p0, "frame"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_10

    :cond_10
    new-instance p0, Lc1/o;

    invoke-direct {p0}, La1/a;-><init>()V

    :goto_10
    return-object p0

    :pswitch_10
    const-string p0, "imageArray"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    goto :goto_11

    :cond_11
    new-instance p0, Lc1/n;

    invoke-direct {p0}, Lc1/n;-><init>()V

    :goto_11
    return-object p0

    :pswitch_11
    const-string p0, "frame"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    goto :goto_12

    :cond_12
    new-instance p0, Lc1/m;

    invoke-direct {p0}, Lc1/m;-><init>()V

    :goto_12
    return-object p0

    :pswitch_12
    const-string p0, "element"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    goto :goto_13

    :cond_13
    new-instance p0, Lc1/l;

    invoke-direct {p0}, Lc1/l;-><init>()V

    :goto_13
    return-object p0

    :pswitch_13
    const-string p0, "distance"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_14

    :cond_14
    new-instance p0, Lc1/k;

    invoke-direct {p0}, Lc1/k;-><init>()V

    :goto_14
    return-object p0

    :pswitch_14
    const-string p0, "content"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto :goto_15

    :cond_15
    new-instance p0, Lc1/j;

    invoke-direct {p0}, Lc1/j;-><init>()V

    :goto_15
    return-object p0

    :pswitch_15
    const-string p0, "container"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    goto :goto_16

    :cond_16
    new-instance p0, Lc1/i;

    invoke-direct {p0}, Lc1/i;-><init>()V

    :goto_16
    return-object p0

    :pswitch_16
    const-string p0, "bounds"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x0

    goto :goto_17

    :cond_17
    new-instance p0, Lc1/h;

    invoke-direct {p0}, Lc1/h;-><init>()V

    :goto_17
    return-object p0

    :pswitch_17
    const-string p0, "behavior"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x0

    goto :goto_18

    :cond_18
    new-instance p0, Lc1/g;

    invoke-direct {p0}, Lc1/g;-><init>()V

    :goto_18
    return-object p0

    :pswitch_18
    const-string p0, "animations"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x0

    if-nez p0, :cond_19

    goto :goto_19

    :cond_19
    new-instance p0, Lc1/f;

    invoke-direct {p0}, La1/a;-><init>()V

    new-instance v0, Lb1/a;

    const-string v2, "id"

    const-string v3, ""

    const/4 v5, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lb1/a;-><init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V

    move-object v4, p0

    :goto_19
    return-object v4

    :pswitch_19
    const-string p0, "animation"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    goto :goto_1a

    :cond_1a
    new-instance p0, Lc1/e;

    invoke-direct {p0}, Lc1/e;-><init>()V

    :goto_1a
    return-object p0

    :pswitch_1a
    const-string p0, "item"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x0

    goto :goto_1b

    :cond_1b
    new-instance p0, Lc1/d;

    invoke-direct {p0}, Lc1/d;-><init>()V

    :goto_1b
    return-object p0

    :pswitch_1b
    const-string p0, "anchor"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x0

    goto :goto_1c

    :cond_1c
    new-instance p0, Lc1/c;

    invoke-direct {p0}, Lc1/c;-><init>()V

    :goto_1c
    return-object p0

    :pswitch_1c
    const-string p0, "action"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x0

    goto :goto_1d

    :cond_1d
    new-instance p0, Lc1/b;

    invoke-direct {p0}, Lc1/b;-><init>()V

    :goto_1d
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
