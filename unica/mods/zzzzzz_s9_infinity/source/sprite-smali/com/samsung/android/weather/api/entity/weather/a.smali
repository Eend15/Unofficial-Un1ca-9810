.class public final synthetic Lcom/samsung/android/weather/api/entity/weather/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LE3/c;


# direct methods
.method public synthetic constructor <init>(LE3/c;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/weather/api/entity/weather/a;->a:I

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/a;->b:LE3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/a;->b:LE3/c;

    check-cast p0, LK/c;

    invoke-virtual {p0, p1, p2}, LK/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/a;->b:LE3/c;

    check-cast p0, LK/c;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->d(LK/c;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/a;->b:LE3/c;

    check-cast p0, LK/c;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->b(LK/c;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
