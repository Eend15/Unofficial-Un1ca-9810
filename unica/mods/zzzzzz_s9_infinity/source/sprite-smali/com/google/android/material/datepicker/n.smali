.class public final Lcom/google/android/material/datepicker/n;
.super Landroidx/recyclerview/widget/F;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Calendar;

.field public final b:Ljava/util/Calendar;

.field public final synthetic c:Lcom/google/android/material/datepicker/q;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/n;->c:Lcom/google/android/material/datepicker/q;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/material/datepicker/G;->f(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/n;->a:Ljava/util/Calendar;

    invoke-static {p1}, Lcom/google/android/material/datepicker/G;->f(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/n;->b:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    instance-of v3, v2, Lcom/google/android/material/datepicker/J;

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    instance-of v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    check-cast v2, Lcom/google/android/material/datepicker/J;

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v4, v0, Lcom/google/android/material/datepicker/n;->c:Lcom/google/android/material/datepicker/q;

    iget-object v5, v4, Lcom/google/android/material/datepicker/q;->Y:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v5}, Lcom/google/android/material/datepicker/DateSelector;->e()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJ/b;

    iget-object v7, v6, LJ/b;->a:Ljava/lang/Object;

    if-eqz v7, :cond_1

    iget-object v6, v6, LJ/b;->b:Ljava/lang/Object;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, v0, Lcom/google/android/material/datepicker/n;->a:Ljava/util/Calendar;

    invoke-virtual {v9, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v0, Lcom/google/android/material/datepicker/n;->b:Ljava/util/Calendar;

    invoke-virtual {v8, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v9, v2, Lcom/google/android/material/datepicker/J;->d:Lcom/google/android/material/datepicker/q;

    iget-object v9, v9, Lcom/google/android/material/datepicker/q;->Z:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v9, v9, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/Month;

    iget v9, v9, Lcom/google/android/material/datepicker/Month;->f:I

    sub-int/2addr v7, v9

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v8, v2, Lcom/google/android/material/datepicker/J;->d:Lcom/google/android/material/datepicker/q;

    iget-object v8, v8, Lcom/google/android/material/datepicker/q;->Z:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v8, v8, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/Month;

    iget v8, v8, Lcom/google/android/material/datepicker/Month;->f:I

    sub-int/2addr v6, v8

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v9

    iget v10, v3, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    div-int/2addr v7, v10

    div-int/2addr v6, v10

    move v10, v7

    :goto_1
    if-gt v10, v6, :cond_1

    iget v11, v3, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    mul-int/2addr v11, v10

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, v4, Lcom/google/android/material/datepicker/q;->c0:LQ1/i;

    iget-object v13, v13, LQ1/i;->d:Ljava/lang/Object;

    check-cast v13, Landroidx/appcompat/widget/q;

    iget-object v13, v13, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v13

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    iget-object v13, v4, Lcom/google/android/material/datepicker/q;->c0:LQ1/i;

    iget-object v13, v13, LQ1/i;->d:Ljava/lang/Object;

    check-cast v13, Landroidx/appcompat/widget/q;

    iget-object v13, v13, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v13

    if-ne v10, v7, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v13

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_2
    if-ne v10, v6, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v13

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v15

    :goto_3
    int-to-float v13, v14

    int-to-float v12, v12

    int-to-float v14, v15

    int-to-float v11, v11

    iget-object v15, v4, Lcom/google/android/material/datepicker/q;->c0:LQ1/i;

    iget-object v15, v15, LQ1/i;->h:Ljava/lang/Object;

    move-object/from16 v21, v15

    check-cast v21, Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v13

    move/from16 v18, v12

    move/from16 v19, v14

    move/from16 v20, v11

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    :goto_5
    return-void
.end method
