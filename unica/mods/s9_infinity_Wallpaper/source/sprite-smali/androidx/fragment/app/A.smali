.class public final Landroidx/fragment/app/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final d:Landroidx/fragment/app/L;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/L;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/A;->d:Landroidx/fragment/app/L;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 2
    const-class v6, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v0, Landroidx/fragment/app/A;->d:Landroidx/fragment/app/L;

    if-eqz v6, :cond_0

    .line 3
    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {v0, v2, v3, v7}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/L;)V

    return-object v0

    .line 4
    :cond_0
    const-string v6, "fragment"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_1

    return-object v6

    .line 5
    :cond_1
    const-string v1, "class"

    invoke-interface {v3, v6, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v8, LR/c;->Fragment:[I

    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    if-nez v1, :cond_2

    .line 7
    sget v1, LR/c;->Fragment_android_name:I

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_2
    sget v9, LR/c;->Fragment_android_id:I

    invoke-virtual {v8, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 9
    sget v10, LR/c;->Fragment_android_tag:I

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 12
    :try_start_0
    invoke-static {v1, v8}, Landroidx/fragment/app/F;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 13
    const-class v11, Landroidx/fragment/app/r;

    invoke-virtual {v11, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v8, v4

    :goto_0
    if-nez v8, :cond_4

    :cond_3
    move-object v0, v6

    goto/16 :goto_a

    :cond_4
    if-eqz p1, :cond_5

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v8

    goto :goto_1

    :cond_5
    move v8, v4

    :goto_1
    if-ne v8, v5, :cond_7

    if-ne v9, v5, :cond_7

    if-eqz v10, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    if-eq v9, v5, :cond_8

    .line 16
    invoke-virtual {v7, v9}, Landroidx/fragment/app/L;->A(I)Landroidx/fragment/app/r;

    move-result-object v11

    goto :goto_3

    :cond_8
    move-object v11, v6

    :goto_3
    const/4 v12, 0x1

    if-nez v11, :cond_d

    if-eqz v10, :cond_d

    .line 17
    iget-object v11, v7, Landroidx/fragment/app/L;->c:Lw0/i;

    .line 18
    iget-object v13, v11, Lw0/i;->e:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v12

    :goto_4
    if-ltz v14, :cond_a

    .line 20
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/r;

    if-eqz v15, :cond_9

    .line 21
    iget-object v6, v15, Landroidx/fragment/app/r;->A:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v11, v15

    goto :goto_5

    :cond_9
    add-int/2addr v14, v5

    const/4 v6, 0x0

    goto :goto_4

    .line 22
    :cond_a
    iget-object v6, v11, Lw0/i;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    .line 23
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/Q;

    if-eqz v11, :cond_b

    .line 24
    iget-object v11, v11, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object v13, v11, Landroidx/fragment/app/r;->A:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    :cond_d
    :goto_5
    if-nez v11, :cond_e

    if-eq v8, v5, :cond_e

    .line 25
    invoke-virtual {v7, v8}, Landroidx/fragment/app/L;->A(I)Landroidx/fragment/app/r;

    move-result-object v11

    .line 26
    :cond_e
    const-string v5, "Fragment "

    const/4 v6, 0x2

    const-string v13, "FragmentManager"

    if-nez v11, :cond_12

    .line 27
    invoke-virtual {v7}, Landroidx/fragment/app/L;->C()Landroidx/fragment/app/F;

    move-result-object v3

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 29
    invoke-virtual {v3, v1}, Landroidx/fragment/app/F;->a(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v11

    .line 30
    iput-boolean v12, v11, Landroidx/fragment/app/r;->p:Z

    if-eqz v9, :cond_f

    move v2, v9

    goto :goto_6

    :cond_f
    move v2, v8

    .line 31
    :goto_6
    iput v2, v11, Landroidx/fragment/app/r;->y:I

    .line 32
    iput v8, v11, Landroidx/fragment/app/r;->z:I

    .line 33
    iput-object v10, v11, Landroidx/fragment/app/r;->A:Ljava/lang/String;

    .line 34
    iput-boolean v12, v11, Landroidx/fragment/app/r;->q:Z

    .line 35
    iput-object v7, v11, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    .line 36
    iget-object v2, v7, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    .line 37
    iput-object v2, v11, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    .line 38
    iget-object v3, v2, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    .line 39
    iput-boolean v12, v11, Landroidx/fragment/app/r;->F:Z

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_7

    .line 40
    :cond_10
    iget-object v2, v2, Landroidx/fragment/app/v;->d:Landroidx/fragment/app/w;

    :goto_7
    if-eqz v2, :cond_11

    .line 41
    iput-boolean v12, v11, Landroidx/fragment/app/r;->F:Z

    .line 42
    :cond_11
    invoke-virtual {v7, v11}, Landroidx/fragment/app/L;->a(Landroidx/fragment/app/r;)Landroidx/fragment/app/Q;

    move-result-object v2

    .line 43
    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 47
    :cond_12
    iget-boolean v2, v11, Landroidx/fragment/app/r;->q:Z

    if-nez v2, :cond_19

    .line 48
    iput-boolean v12, v11, Landroidx/fragment/app/r;->q:Z

    .line 49
    iput-object v7, v11, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/L;

    .line 50
    iget-object v2, v7, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    .line 51
    iput-object v2, v11, Landroidx/fragment/app/r;->v:Landroidx/fragment/app/v;

    .line 52
    iget-object v3, v2, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    .line 53
    iput-boolean v12, v11, Landroidx/fragment/app/r;->F:Z

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_8

    .line 54
    :cond_13
    iget-object v2, v2, Landroidx/fragment/app/v;->d:Landroidx/fragment/app/w;

    :goto_8
    if-eqz v2, :cond_14

    .line 55
    iput-boolean v12, v11, Landroidx/fragment/app/r;->F:Z

    .line 56
    :cond_14
    invoke-virtual {v7, v11}, Landroidx/fragment/app/L;->f(Landroidx/fragment/app/r;)Landroidx/fragment/app/Q;

    move-result-object v2

    .line 57
    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Retained Fragment "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_15
    :goto_9
    move-object/from16 v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    sget-object v6, LS/d;->a:LS/c;

    .line 62
    new-instance v6, LS/e;

    invoke-direct {v6, v11, v3, v4}, LS/e;-><init>(Landroidx/fragment/app/r;Landroid/view/ViewGroup;I)V

    .line 63
    invoke-static {v6}, LS/d;->b(LS/f;)V

    .line 64
    invoke-static {v11}, LS/d;->a(Landroidx/fragment/app/r;)LS/c;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    iput-object v3, v11, Landroidx/fragment/app/r;->G:Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {v2}, Landroidx/fragment/app/Q;->k()V

    .line 68
    invoke-virtual {v2}, Landroidx/fragment/app/Q;->j()V

    .line 69
    iget-object v3, v11, Landroidx/fragment/app/r;->H:Landroid/view/View;

    if-eqz v3, :cond_18

    if-eqz v9, :cond_16

    .line 70
    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    .line 71
    :cond_16
    iget-object v1, v11, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    .line 72
    iget-object v1, v11, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :cond_17
    iget-object v1, v11, Landroidx/fragment/app/r;->H:Landroid/view/View;

    new-instance v3, Landroidx/fragment/app/z;

    invoke-direct {v3, v0, v2}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/A;Landroidx/fragment/app/Q;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 74
    iget-object v0, v11, Landroidx/fragment/app/r;->H:Landroid/view/View;

    return-object v0

    .line 75
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, " did not create a view."

    .line 76
    invoke-static {v5, v1, v2}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_a
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/A;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
