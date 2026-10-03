.class public final Lcom/google/android/material/datepicker/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/f;


# virtual methods
.method public final a(Ljava/util/ArrayList;J)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->f(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getId()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
