.class public final Ln1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lw0/i;


# direct methods
.method public constructor <init>(Lw0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/b;->a:Lw0/i;

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object p0, p0, Ln1/b;->a:Lw0/i;

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v0, LM1/d;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v0, LM1/d;->a:Ljava/lang/Object;

    check-cast v5, [F

    invoke-static {p1, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, LM1/d;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v0, LM1/d;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v0, LM1/d;->b:Ljava/lang/Object;

    check-cast v5, [F

    invoke-static {p1, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, LM1/d;->b()V

    :goto_0
    iget-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln1/c;

    iget-object v1, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, LM1/d;

    iget-object v1, v1, LM1/d;->f:Ljava/lang/Object;

    check-cast v1, [F

    aget v2, v1, v4

    aget v1, v1, v3

    invoke-interface {v0, v2, v1}, Ln1/c;->j(FF)V

    goto :goto_1

    :cond_2
    return-void
.end method
