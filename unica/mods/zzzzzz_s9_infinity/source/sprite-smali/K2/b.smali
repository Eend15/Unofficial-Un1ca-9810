.class public final LK2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh3/a;

.field public final b:Lh3/a;

.field public final c:Lh3/a;

.field public final d:Lh3/a;

.field public final e:Lh3/a;

.field public final f:Lh3/a;

.field public final g:Lh3/a;

.field public final h:Lh3/a;

.field public final i:Lh3/a;


# direct methods
.method public constructor <init>(Lh3/a;Lh3/a;Lh3/a;Lh3/a;Lh3/a;Lh3/a;Lh3/a;Lh3/a;Lh3/a;)V
    .locals 1

    const-string v0, "generateAllImagesCallHandler"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generationImageCallHandler"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getGeneratedImageCallHandler"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearGeneratedImagesCallHandler"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteGeneratedImageCallHandler"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelGenerateCallHandler"

    invoke-static {p6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryGenerateState"

    invoke-static {p7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportGeneratedImages"

    invoke-static {p8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getManualDumpHandler"

    invoke-static {p9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/b;->a:Lh3/a;

    iput-object p2, p0, LK2/b;->b:Lh3/a;

    iput-object p3, p0, LK2/b;->c:Lh3/a;

    iput-object p4, p0, LK2/b;->d:Lh3/a;

    iput-object p5, p0, LK2/b;->e:Lh3/a;

    iput-object p6, p0, LK2/b;->f:Lh3/a;

    iput-object p7, p0, LK2/b;->g:Lh3/a;

    iput-object p8, p0, LK2/b;->h:Lh3/a;

    iput-object p9, p0, LK2/b;->i:Lh3/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LK2/a;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "clear_generated_images"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, LK2/b;->d:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/a;

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "generate_time_weather_image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, LK2/b;->b:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/a;

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "query_generate_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, LK2/b;->g:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/a;

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "export_generated_images"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, LK2/b;->h:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/a;

    goto :goto_1

    :sswitch_4
    const-string v0, "delete_generated_image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, LK2/b;->e:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/a;

    goto :goto_1

    :sswitch_5
    const-string v0, "cancel_generate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, LK2/b;->f:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/a;

    goto :goto_1

    :sswitch_6
    const-string v0, "get_dump_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, LK2/b;->i:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/a;

    goto :goto_1

    :sswitch_7
    const-string v0, "get_generated_image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, LK2/b;->c:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/a;

    goto :goto_1

    :sswitch_8
    const-string v0, "generate_all_time_weather_images"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, LK2/b;->a:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/a;

    goto :goto_1

    :cond_8
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x705c1393 -> :sswitch_8
        -0x4d14883e -> :sswitch_7
        -0x321ba294 -> :sswitch_6
        0x966c19a -> :sswitch_5
        0x1f0b2417 -> :sswitch_4
        0x30658453 -> :sswitch_3
        0x43843d9e -> :sswitch_2
        0x5ace4268 -> :sswitch_1
        0x71b146da -> :sswitch_0
    .end sparse-switch
.end method
