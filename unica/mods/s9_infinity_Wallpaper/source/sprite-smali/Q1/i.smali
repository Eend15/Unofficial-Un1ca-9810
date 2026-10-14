.class public final LQ1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, LF0/a;->materialCalendarStyle:I

    const-class v1, Lcom/google/android/material/datepicker/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, LK/I;->q0(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    sget-object v1, LF0/j;->MaterialCalendar:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, LF0/j;->MaterialCalendar_dayStyle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/q;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/q;

    move-result-object v1

    iput-object v1, p0, LQ1/i;->a:Ljava/lang/Object;

    sget v1, LF0/j;->MaterialCalendar_dayInvalidStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/q;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/q;

    move-result-object v1

    iput-object v1, p0, LQ1/i;->g:Ljava/lang/Object;

    sget v1, LF0/j;->MaterialCalendar_daySelectedStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/q;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/q;

    move-result-object v1

    iput-object v1, p0, LQ1/i;->b:Ljava/lang/Object;

    sget v1, LF0/j;->MaterialCalendar_dayTodayStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/q;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/q;

    move-result-object v1

    iput-object v1, p0, LQ1/i;->c:Ljava/lang/Object;

    sget v1, LF0/j;->MaterialCalendar_rangeFillColor:I

    invoke-static {p1, v0, v1}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sget v3, LF0/j;->MaterialCalendar_yearStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/appcompat/widget/q;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/q;

    move-result-object v3

    iput-object v3, p0, LQ1/i;->d:Ljava/lang/Object;

    sget v3, LF0/j;->MaterialCalendar_yearSelectedStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/appcompat/widget/q;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/q;

    move-result-object v3

    iput-object v3, p0, LQ1/i;->e:Ljava/lang/Object;

    sget v3, LF0/j;->MaterialCalendar_yearTodayStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/appcompat/widget/q;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/q;

    move-result-object p1

    iput-object p1, p0, LQ1/i;->f:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, LQ1/i;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(La2/i;La2/f;)V
    .locals 5

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, La2/f;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, LQ1/i;->b:Ljava/lang/Object;

    check-cast v1, Ln1/a;

    iget-object v2, p0, LQ1/i;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    const-class v3, La2/i;

    const-string v4, "dataManager"

    if-eqz v0, :cond_0

    new-instance v0, LQ1/c;

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, LQ1/a;-><init>(Landroid/content/Context;Ln1/a;)V

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, LQ1/c;->d:Ljava/util/EnumMap;

    goto :goto_0

    :cond_0
    new-instance v0, LQ1/g;

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, LQ1/g;-><init>(Landroid/content/Context;Ln1/a;)V

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, LQ1/g;->e:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, LQ1/g;->f:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, p1, p2}, LQ1/a;->a(La2/i;La2/f;)V

    invoke-virtual {p0}, LQ1/i;->b()LQ1/b;

    move-result-object p2

    iput-object p2, v0, LQ1/a;->c:LQ1/b;

    iget-object p0, p0, LQ1/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()LQ1/b;
    .locals 0

    iget-object p0, p0, LQ1/i;->h:Ljava/lang/Object;

    check-cast p0, LW1/c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "callback"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Ljava/util/Calendar;)Lo1/a;
    .locals 11

    const-string v0, ""

    iput-object v0, p0, LQ1/i;->e:Ljava/lang/Object;

    iput-object v0, p0, LQ1/i;->f:Ljava/lang/Object;

    iput-object v0, p0, LQ1/i;->g:Ljava/lang/Object;

    new-instance v1, Lo1/c;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    const/16 v7, 0xe

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    invoke-direct {v1, v3, v4, v5, v6}, Lo1/c;-><init>(IIII)V

    iget-object v5, p0, LQ1/i;->c:Ljava/lang/Object;

    check-cast v5, Lo1/a;

    if-eqz v5, :cond_0

    iget-object v6, p0, LQ1/i;->d:Ljava/lang/Object;

    check-cast v6, Lo1/c;

    if-eqz v6, :cond_0

    iget v7, v6, Lo1/c;->a:I

    if-ne v7, v3, :cond_0

    iget v6, v6, Lo1/c;->b:I

    if-ne v6, v4, :cond_0

    iget-object v5, v5, Lo1/a;->a:Ljava/lang/String;

    iput-object v5, p0, LQ1/i;->e:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v5, p0, LQ1/i;->a:Ljava/lang/Object;

    check-cast v5, Lo1/b;

    iget-object v5, v5, Lo1/b;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    :cond_1
    move-object v5, v0

    goto :goto_0

    :cond_2
    invoke-static {v5, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, p0, LQ1/i;->e:Ljava/lang/Object;

    :goto_1
    iget-object v5, p0, LQ1/i;->c:Ljava/lang/Object;

    check-cast v5, Lo1/a;

    if-eqz v5, :cond_3

    iget-object v6, p0, LQ1/i;->d:Ljava/lang/Object;

    check-cast v6, Lo1/c;

    if-eqz v6, :cond_3

    iget v7, v6, Lo1/c;->a:I

    if-ne v7, v3, :cond_3

    iget v3, v6, Lo1/c;->b:I

    if-ne v3, v4, :cond_3

    iget-object v2, v5, Lo1/a;->b:Ljava/lang/String;

    iput-object v2, p0, LQ1/i;->f:Ljava/lang/Object;

    goto :goto_6

    :cond_3
    iget-object v3, p0, LQ1/i;->h:Ljava/lang/Object;

    check-cast v3, Lo1/d;

    iget-object v3, v3, Lo1/d;->a:Landroid/content/Context;

    sget-object v4, Lf2/a;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lf2/a;->a:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    const-string v3, "getAlternateCalendarText: alternateCalendar = "

    invoke-static {v3, v4}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "AlternateCalendarUtils"

    invoke-static {v5, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    iput-object v4, p0, LQ1/i;->f:Ljava/lang/Object;

    :goto_6
    iget-object v2, p0, LQ1/i;->c:Ljava/lang/Object;

    check-cast v2, Lo1/a;

    if-eqz v2, :cond_7

    iget-object v3, p0, LQ1/i;->d:Ljava/lang/Object;

    check-cast v3, Lo1/c;

    if-eqz v3, :cond_7

    iget v4, v3, Lo1/c;->c:I

    iget v5, v1, Lo1/c;->c:I

    if-ne v4, v5, :cond_7

    iget v3, v3, Lo1/c;->d:I

    iget v4, v1, Lo1/c;->d:I

    if-ne v3, v4, :cond_7

    iget-object p1, v2, Lo1/a;->c:Ljava/lang/String;

    iput-object p1, p0, LQ1/i;->g:Ljava/lang/Object;

    goto/16 :goto_8

    :cond_7
    iget-object v2, p0, LQ1/i;->b:Ljava/lang/Object;

    check-cast v2, Lw0/c;

    iget-object v2, v2, Lw0/c;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v3, "KK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "K"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    const-string v3, "kk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "k"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_9
    const-string v3, "HH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "H"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_a
    const-string v3, "hh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "h"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_c
    iput-object v0, p0, LQ1/i;->g:Ljava/lang/Object;

    :goto_8
    new-instance p1, Lo1/a;

    iget-object v0, p0, LQ1/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, LQ1/i;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, LQ1/i;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v3}, Lo1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, LQ1/i;->c:Ljava/lang/Object;

    iput-object v1, p0, LQ1/i;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public d()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, LQ1/i;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumMap;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    iget-object p0, p0, LQ1/i;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "MM|dd|u-HH:mm"

    goto :goto_0

    :cond_0
    const-string p0, "MM|dd|u-hh:mm"

    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    const/16 v4, 0x2d

    new-array v5, v1, [C

    aput-char v4, v5, v0

    invoke-static {p0, v5}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v6, v1, [C

    aput-char v4, v6, v0

    invoke-static {p0, v6}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "updateDateAndTime : date = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", hourMin = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "TimeContainer"

    invoke-static {v7, v4, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, La2/i;->h:La2/i;

    const/16 v6, 0x7c

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {v5, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La2/i;->g:La2/i;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {v5, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La2/i;->f:La2/i;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {v5, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La2/i;->k:La2/i;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {v5, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La2/i;->j:La2/i;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {v5, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La2/i;->i:La2/i;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {v5, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La2/i;->r:La2/i;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {v5, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La2/i;->m:La2/i;

    invoke-virtual {v2, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/16 v6, 0x3a

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {p0, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_6

    sget-object v5, La2/i;->l:La2/i;

    invoke-virtual {v2, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {p0, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_6

    sget-object v5, La2/i;->p:La2/i;

    invoke-virtual {v2, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {p0, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_6

    sget-object v5, La2/i;->o:La2/i;

    invoke-virtual {v2, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {p0, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v7, :cond_5

    goto :goto_1

    :cond_5
    move v5, v0

    goto :goto_2

    :cond_6
    :goto_1
    move v5, v1

    :goto_2
    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {p0, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La2/i;->l:La2/i;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {p0, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La2/i;->p:La2/i;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {p0, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La2/i;->o:La2/i;

    new-array v7, v1, [C

    aput-char v6, v7, v0

    invoke-static {p0, v7}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_7

    if-nez v3, :cond_7

    move v0, v1

    :cond_7
    return v0
.end method

.method public e()V
    .locals 10

    iget-object v0, p0, LQ1/i;->h:Ljava/lang/Object;

    check-cast v0, Lo1/d;

    iget-object v1, v0, Lo1/d;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "EEEMMMMd"

    goto :goto_0

    :cond_0
    sget v2, Li1/j;->common_date_format_abb_week_month:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "HH:mm"

    if-eqz v2, :cond_1

    iget-object v2, v0, Lo1/d;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, v0, Lo1/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    sget-object v2, Lf2/f;->a:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "ReflectUtil"

    :try_start_0
    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is called"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " invoke IllegalAccessException"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " invoke InvocationTargetException"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_4

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_3
    sget-object v0, Lf2/f;->a:Ljava/lang/reflect/Method;

    :cond_4
    :goto_3
    iget-object v0, p0, LQ1/i;->a:Ljava/lang/Object;

    check-cast v0, Lo1/b;

    iget-object v2, v0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {v1}, Lo1/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    iget-object v6, p0, LQ1/i;->b:Ljava/lang/Object;

    check-cast v6, Lw0/c;

    if-eqz v2, :cond_7

    iget-object v2, v6, Lw0/c;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    if-nez v2, :cond_f

    :cond_7
    iput-object v1, v0, Lo1/b;->c:Ljava/lang/Object;

    invoke-static {v1}, Lo1/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo1/b;->d:Ljava/lang/Object;

    const-string v1, "a|A"

    const-string v2, ""

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lw0/c;->e:Ljava/lang/Object;

    invoke-static {v1}, Le0/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    if-eqz v1, :cond_e

    const-string v5, "^[0-9]{1,2}[^0-9]+[0-9]{1,2}$"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_9

    :cond_8
    const-string v5, "[^0-9]"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_9

    goto :goto_9

    :cond_9
    const/4 v2, -0x1

    move v8, v2

    move v7, v4

    :goto_6
    array-length v9, v5

    if-ge v7, v9, :cond_d

    aget-object v9, v5, v7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    aget-object v9, v5, v7

    invoke-static {v9}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    if-gez v8, :cond_b

    move v8, v7

    goto :goto_7

    :cond_b
    move v2, v7

    goto :goto_8

    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_d
    :goto_8
    aget-object v7, v5, v8

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    aget-object v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_e
    :goto_9
    iput-object v2, v6, Lw0/c;->f:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateFormatter: TimeFormats = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", DateFormats = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "TimeProvider"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v3, p0, LQ1/i;->c:Ljava/lang/Object;

    iput-object v3, p0, LQ1/i;->d:Ljava/lang/Object;

    :cond_f
    return-void
.end method
