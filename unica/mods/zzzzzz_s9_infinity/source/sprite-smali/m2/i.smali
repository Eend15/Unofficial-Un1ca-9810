.class public final Lm2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lm2/n;


# direct methods
.method public synthetic constructor <init>(Lm2/n;I)V
    .locals 0

    iput p2, p0, Lm2/i;->d:I

    iput-object p1, p0, Lm2/i;->e:Lm2/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw3/c;)Ljava/lang/Object;
    .locals 8

    const/4 p2, 0x0

    sget-object v0, Lq3/m;->a:Lq3/m;

    iget v1, p0, Lm2/i;->d:I

    packed-switch v1, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Lv2/a;

    iget-object v5, p0, Lm2/i;->e:Lm2/n;

    invoke-virtual {v5}, Lm2/n;->d()Lh2/b;

    move-result-object p0

    invoke-virtual {v5}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Data is updated."

    invoke-virtual {p0, p1, v1}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    invoke-virtual {v6, p2}, Lv2/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v6, Lv2/a;->a:Landroid/graphics/Bitmap;

    iget-object v4, v6, Lv2/a;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lm2/n;->c()LW4/t;

    move-result-object p0

    new-instance p1, Lm2/l;

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lm2/l;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lm2/n;Lv2/a;Lu3/d;)V

    invoke-static {p0, p1}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v5}, Lm2/n;->d()Lh2/b;

    move-result-object p0

    invoke-virtual {v5}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "asset is null or same as before. "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    sget p1, Lm2/n;->O:I

    iget-object p0, p0, Lm2/i;->e:Lm2/n;

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Weather is changed."

    invoke-static {p1, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lm2/n;->F:Lr1/c;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lm2/n;->y:Lr2/b;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lr2/b;->a()V

    return-object v0

    :cond_3
    const-string p0, "updateWeatherData"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p0, "weatherRepository"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
