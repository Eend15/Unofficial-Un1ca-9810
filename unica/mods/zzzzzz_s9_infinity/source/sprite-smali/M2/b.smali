.class public final synthetic LM2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    iput p4, p0, LM2/b;->a:I

    iput-object p1, p0, LM2/b;->b:Ljava/lang/Object;

    iput-object p2, p0, LM2/b;->c:Ljava/lang/Object;

    iput-object p3, p0, LM2/b;->d:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, LM2/b;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object v0, p0, LM2/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    iget-object v1, p0, LM2/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object p0, p0, LM2/b;->d:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->b(Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_0
    check-cast p1, LF2/b;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LM2/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;

    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, LF2/b;->a:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GenerateAllWorker"

    invoke-virtual {v1, v3, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, LM2/b;->c:Ljava/lang/Object;

    check-cast v1, LF3/s;

    iget-object p0, p0, LM2/b;->d:Ljava/io/Serializable;

    check-cast p0, LF3/r;

    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    const/16 v4, 0x65

    if-eq p1, v4, :cond_0

    const/16 v4, 0x12c

    if-eq p1, v4, :cond_1

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    iput-object v0, v1, LF3/s;->d:Ljava/lang/Object;

    iput p1, p0, LF3/r;->d:I

    goto :goto_0

    :cond_0
    new-instance p1, Ln0/l;

    sget-object v0, Ln0/g;->c:Ln0/g;

    invoke-direct {p1, v0}, Ln0/l;-><init>(Ln0/g;)V

    iput-object p1, v1, LF3/s;->d:Ljava/lang/Object;

    const/16 p1, 0xc8

    iput p1, p0, LF3/r;->d:I

    goto :goto_0

    :cond_1
    new-instance p1, Ln0/l;

    sget-object v4, Ln0/g;->c:Ln0/g;

    invoke-direct {p1, v4}, Ln0/l;-><init>(Ln0/g;)V

    iput-object p1, v1, LF3/s;->d:Ljava/lang/Object;

    iput v2, p0, LF3/r;->d:I

    iget-object p0, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget p1, p0, LH2/a;->g:I

    const/16 v1, 0xc9

    if-ne p1, v1, :cond_2

    iget-object p1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {p1}, LO2/a;->b()LS2/b;

    move-result-object p1

    const-string v1, "completeGenerating"

    invoke-virtual {p1, v3, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, LH2/a;->c:I

    iget-wide v1, p0, LH2/a;->b:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->h(IJ)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
