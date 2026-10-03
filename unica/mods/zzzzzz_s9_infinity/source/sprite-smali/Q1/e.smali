.class public final synthetic LQ1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LQ1/e;->d:I

    iput-object p2, p0, LQ1/e;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, LQ1/e;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;

    iget-object p0, p0, LQ1/e;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const-string v0, "content"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/j;

    iget v1, v0, Lc5/j;->a:I

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;->getType()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-boolean v0, v0, Lc5/j;->b:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/graphics/Canvas;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object p0, p0, LQ1/e;->e:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_1
    check-cast p1, Ln5/c;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LQ1/e;->e:Ljava/lang/Object;

    check-cast p0, LQ1/f;

    invoke-virtual {p0}, LQ1/f;->a()La2/m;

    move-result-object p1

    iget-object p1, p1, La2/m;->c:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/f;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v1, p0, LQ1/f;->a:LQ1/b;

    check-cast v1, LW1/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, LW1/c;->n(La2/f;)V

    iget-object v0, v1, LW1/c;->o:LS2/b;

    if-eqz v0, :cond_6

    iget-object v2, v1, LW1/c;->A:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v4, v0, LS2/b;->d:Ljava/lang/Object;

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3, v2}, Landroid/view/View;->measure(II)V

    :cond_4
    iget-object v0, v0, LS2/b;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v3, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_5
    iget-object v0, v1, LW1/c;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, LW1/c;->s(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_6
    const-string p0, "viewPool"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
