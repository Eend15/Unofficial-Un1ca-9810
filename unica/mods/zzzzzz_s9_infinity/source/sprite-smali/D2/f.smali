.class public final LD2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:LG4/d;

.field public final c:Lo3/a;

.field public final d:Lh3/b;


# direct methods
.method public synthetic constructor <init>(LG4/d;Lo3/a;Lh3/b;I)V
    .locals 0

    iput p4, p0, LD2/f;->a:I

    iput-object p1, p0, LD2/f;->b:LG4/d;

    iput-object p2, p0, LD2/f;->c:Lo3/a;

    iput-object p3, p0, LD2/f;->d:Lh3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, LD2/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD2/f;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/f;->d:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/a;

    iget-object p0, p0, LD2/f;->b:LG4/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LW2/a;

    invoke-direct {p0, v0, v1}, LW2/a;-><init>(Landroid/content/Context;LO2/a;)V

    return-object p0

    :pswitch_0
    iget-object v0, p0, LD2/f;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/f;->d:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/a;

    iget-object p0, p0, LD2/f;->b:LG4/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;-><init>(Landroid/content/Context;LO2/a;)V

    return-object p0

    :pswitch_1
    iget-object v0, p0, LD2/f;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/f;->d:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/a;

    iget-object p0, p0, LD2/f;->b:LG4/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LV2/c;

    invoke-direct {p0, v0, v1}, LV2/c;-><init>(Landroid/content/Context;LO2/a;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
