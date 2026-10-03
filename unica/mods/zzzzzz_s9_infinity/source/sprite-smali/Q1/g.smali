.class public final LQ1/g;
.super LQ1/a;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public e:Ljava/util/EnumMap;

.field public f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ln1/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LQ1/g;->d:I

    invoke-direct {p0, p1, p2}, LQ1/a;-><init>(Landroid/content/Context;Ln1/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln1/a;LR1/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LQ1/g;->d:I

    const-string v0, "dataManager"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, LQ1/a;-><init>(Landroid/content/Context;Ln1/a;)V

    .line 3
    iput-object p3, p0, LQ1/g;->f:Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, La2/i;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, LQ1/g;->e:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public final a(La2/i;La2/f;)V
    .locals 3

    iget v0, p0, LQ1/g;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, La2/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClockAdded : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TextClock"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LQ1/g;->e:Ljava/util/EnumMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LQ1/g;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lo1/a;Ljava/util/EnumMap;)V
    .locals 12

    iget v0, p0, LQ1/g;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "dateTime"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateAndTimeMap"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LQ1/g;->f:Ljava/lang/Object;

    check-cast p0, LR1/e;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTimeChanged : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , text="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lo1/a;->a:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TextClock"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lo1/a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const-string v0, "dateTime"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dateAndTimeMap"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/i;

    invoke-virtual {p2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, LQ1/a;->b:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LQ1/a;->b:Ljava/util/EnumMap;

    invoke-virtual {p2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v1, p0, LQ1/g;->e:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ1/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    const-string v4, "Modular"

    iget-object v5, v1, LQ1/f;->c:Ljava/lang/String;

    invoke-virtual {v1}, LQ1/f;->a()La2/m;

    move-result-object v6

    iget-object v6, v6, La2/m;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onDestroy, modularId = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", item = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, LQ1/f;->a()La2/m;

    move-result-object v4

    iget-object v4, v4, La2/m;->b:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/j;

    iget-object v6, v1, LQ1/f;->a:LQ1/b;

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v6, LW1/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, LW1/c;->m:LX1/i;

    if-eqz v6, :cond_2

    iget-object v7, v6, LX1/i;->f:Ln/f;

    iget-object v5, v5, La2/j;->a:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln5/c;

    if-eqz v5, :cond_2

    iget-object v7, v6, LX1/i;->k:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, v6, LX1/i;->j:Ljava/util/ArrayList;

    new-instance v8, LX1/d;

    invoke-direct {v8, v5}, LX1/d;-><init>(Ln5/c;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v7

    throw p0

    :cond_3
    invoke-virtual {v1}, LQ1/f;->a()La2/m;

    move-result-object v4

    iget-object v4, v4, La2/m;->c:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/f;

    iget-object v6, v1, LQ1/f;->a:LQ1/b;

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v6, LW1/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, LW1/c;->m:LX1/i;

    if-eqz v6, :cond_4

    iget-object v5, v5, La2/f;->B:Ll5/a;

    if-eqz v5, :cond_4

    iget-object v7, v6, LX1/i;->k:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v6, v6, LX1/i;->j:Ljava/util/ArrayList;

    new-instance v8, LX1/c;

    invoke-direct {v8, v5}, LX1/c;-><init>(Ll5/a;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v7

    throw p0

    :cond_5
    invoke-virtual {v1}, LQ1/f;->a()La2/m;

    move-result-object v4

    iget-object v4, v4, La2/m;->c:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/f;

    iget-object v6, v1, LQ1/f;->a:LQ1/b;

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v6, LW1/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, LW1/c;->o:LS2/b;

    if-eqz v6, :cond_8

    iget-object v7, v5, La2/f;->n:Landroid/view/View;

    if-eqz v7, :cond_7

    move-object v8, v7

    check-cast v8, LR1/b;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v8, v6, LS2/b;->d:Ljava/lang/Object;

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object v7, v5, La2/f;->a:Ljava/lang/String;

    iget-object v8, v6, LS2/b;->e:Ljava/lang/Object;

    check-cast v8, Ln/f;

    invoke-virtual {v8, v7}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v5, La2/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/f;

    iget-object v9, v8, La2/f;->a:Ljava/lang/String;

    iget-object v10, v6, LS2/b;->f:Ljava/lang/Object;

    check-cast v10, Ln/f;

    invoke-virtual {v10, v9}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v8, La2/f;->n:Landroid/view/View;

    goto :goto_4

    :cond_7
    iput-object v2, v5, La2/f;->n:Landroid/view/View;

    goto :goto_3

    :cond_8
    const-string p0, "viewPool"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_9
    iget-object v1, p0, LQ1/g;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/f;

    if-eqz v1, :cond_1

    new-instance v4, LQ1/f;

    iget-object v5, p0, LQ1/a;->c:LQ1/b;

    if-eqz v5, :cond_10

    const-string v6, "dataManager"

    iget-object v7, p0, LQ1/a;->a:Ln1/a;

    invoke-static {v7, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, LQ1/f;->a:LQ1/b;

    const-string v5, ""

    iput-object v5, v4, LQ1/f;->c:Ljava/lang/String;

    iget-object v5, p0, LQ1/a;->b:Ljava/util/EnumMap;

    invoke-virtual {v5, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, v1, La2/f;->r:Ljava/lang/String;

    iput-object v6, v4, LQ1/f;->c:Ljava/lang/String;

    iget-object v7, v7, Ln1/a;->b:Ljava/lang/Object;

    check-cast v7, La2/q;

    iget-object v7, v7, La2/q;->s:LA1/e;

    iget-object v7, v7, LA1/e;->d:Ljava/lang/Object;

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/l;

    if-eqz v5, :cond_b

    if-eqz v6, :cond_a

    iget-object v6, v6, La2/l;->a:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/m;

    goto :goto_5

    :cond_a
    move-object v5, v2

    goto :goto_5

    :cond_b
    if-eqz v6, :cond_a

    iget-object v5, v6, La2/l;->a:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/m;

    :goto_5
    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    iput-object v5, v4, LQ1/f;->b:La2/m;

    iget-object v5, v4, LQ1/f;->c:Ljava/lang/String;

    invoke-virtual {v4}, LQ1/f;->a()La2/m;

    move-result-object v6

    iget-object v6, v6, La2/m;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onCreate, modularId = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", item = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "Modular"

    invoke-static {v7, v5, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, LQ1/d;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v1}, LQ1/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4}, LQ1/f;->a()La2/m;

    move-result-object v6

    iget-object v6, v6, La2/m;->c:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    :cond_c
    :goto_6
    iget-object v7, v4, LQ1/f;->a:LQ1/b;

    if-ge v3, v6, :cond_f

    invoke-virtual {v4}, LQ1/f;->a()La2/m;

    move-result-object v8

    iget-object v8, v8, La2/m;->c:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/f;

    iget-boolean v9, v8, La2/f;->H:Z

    const/4 v10, 0x1

    if-nez v9, :cond_d

    iget v9, v8, La2/f;->c:I

    iget v11, v1, La2/f;->c:I

    add-int/2addr v9, v11

    iput v9, v8, La2/f;->c:I

    iget v9, v8, La2/f;->d:I

    iget v11, v1, La2/f;->d:I

    add-int/2addr v9, v11

    iput v9, v8, La2/f;->d:I

    iput-boolean v10, v8, La2/f;->H:Z

    :cond_d
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, LQ1/f;->a()La2/m;

    move-result-object v9

    iget-object v9, v9, La2/m;->c:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ne v3, v9, :cond_e

    check-cast v7, LW1/c;

    iget-object v7, v7, LW1/c;->m:LX1/i;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v8, v10, v5}, LX1/i;->b(La2/f;ZLE3/b;)V

    goto :goto_6

    :cond_e
    check-cast v7, LW1/c;

    iget-object v7, v7, LW1/c;->m:LX1/i;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v8, v10, v2}, LX1/i;->b(La2/f;ZLE3/b;)V

    goto :goto_6

    :cond_f
    check-cast v7, LW1/c;

    invoke-virtual {v7}, LW1/c;->q()V

    iget-object v1, p0, LQ1/g;->e:Ljava/util/EnumMap;

    invoke-virtual {v1, v0, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_10
    const-string p0, "callback"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
