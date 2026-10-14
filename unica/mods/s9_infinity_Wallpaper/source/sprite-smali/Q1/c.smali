.class public final LQ1/c;
.super LQ1/a;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/EnumMap;


# virtual methods
.method public final a(La2/i;La2/f;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LQ1/c;->d:Ljava/util/EnumMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lo1/a;Ljava/util/EnumMap;)V
    .locals 7

    const-string v0, "dateTime"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dateAndTimeMap"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p0, LQ1/a;->b:Ljava/util/EnumMap;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/i;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, LQ1/a;->a:Ln1/a;

    invoke-virtual {v3}, Ln1/a;->p()LS2/b;

    move-result-object v3

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v4}, LS2/b;->l(La2/i;II)Z

    invoke-virtual {p2, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, LQ1/c;->d:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string p2, "<get-keys>(...)"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La2/i;

    invoke-virtual {v1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La2/f;

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p2, La2/f;->n:Landroid/view/View;

    goto :goto_2

    :cond_4
    move-object p2, v2

    :goto_2
    const-string v3, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.suitcase.layout.ElementView"

    invoke-static {p2, v3}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, LR1/c;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p2, LR1/c;->g:La2/f;

    iget-object v4, v3, La2/f;->l:Ljava/lang/String;

    const-string v5, "horizontal"

    invoke-static {v4, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v5, :cond_5

    invoke-virtual {p2, v6}, Landroid/view/View;->setScaleX(F)V

    goto :goto_3

    :cond_5
    const-string v5, "vertical"

    invoke-static {v4, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p2, v6}, Landroid/view/View;->setScaleY(F)V

    :cond_6
    :goto_3
    iget-object v4, v3, La2/f;->b:La2/i;

    sget-object v5, La2/i;->e:La2/i;

    iget-object v6, p2, LR1/c;->h:LS2/b;

    if-eq v4, v5, :cond_9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    if-gez v0, :cond_7

    iget-object v0, v3, La2/f;->b:La2/i;

    invoke-virtual {v6, v0}, LS2/b;->d(La2/i;)Ljava/lang/String;

    move-result-object v4

    :cond_7
    iget-object v0, p2, LR1/c;->i:Ljava/lang/String;

    invoke-static {v0, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, v3, La2/f;->g:Ljava/lang/String;

    invoke-virtual {v6, v3, v4, v0}, LS2/b;->f(La2/f;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v4, p2, LR1/c;->i:Ljava/lang/String;

    goto :goto_4

    :cond_9
    invoke-virtual {v6, v3}, LS2/b;->e(La2/f;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    :goto_4
    invoke-virtual {p2, v2}, LR1/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_a
    :goto_5
    return-void
.end method
