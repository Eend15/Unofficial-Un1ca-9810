.class public final Lcom/google/android/material/datepicker/x;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field public static final f:I


# instance fields
.field public final a:Lcom/google/android/material/datepicker/Month;

.field public final b:Lcom/google/android/material/datepicker/DateSelector;

.field public c:Ljava/util/Collection;

.field public d:LQ1/i;

.field public final e:Lcom/google/android/material/datepicker/CalendarConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/datepicker/G;->f(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/x;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    iput-object p2, p0, Lcom/google/android/material/datepicker/x;->b:Lcom/google/android/material/datepicker/DateSelector;

    iput-object p3, p0, Lcom/google/android/material/datepicker/x;->e:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->j()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/x;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->m()I

    move-result v1

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/x;->b()I

    move-result p0

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->m()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->n(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/Month;->m()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/datepicker/Month;->h:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final c(Landroid/widget/TextView;J)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/x;->e:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->f:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-interface {v0, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->f(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/x;->b:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/G;->a(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/G;->a(J)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/datepicker/x;->d:LQ1/i;

    iget-object p0, p0, LQ1/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/q;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/material/datepicker/G;->e()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/google/android/material/datepicker/x;->d:LQ1/i;

    iget-object p0, p0, LQ1/i;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/q;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/material/datepicker/x;->d:LQ1/i;

    iget-object p0, p0, LQ1/i;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/q;

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/google/android/material/datepicker/x;->d:LQ1/i;

    iget-object p0, p0, LQ1/i;->g:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/q;

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q;->g(Landroid/widget/TextView;)V

    return-void
.end method

.method public final d(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 2

    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/Month;->l(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/material/datepicker/Month;->d:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/G;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/x;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, v1, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/Month;->m()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/x;->c(Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    iget v0, p0, Lcom/google/android/material/datepicker/Month;->h:I

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/Month;->m()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/x;->a(I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    iget p0, p0, Lcom/google/android/material/datepicker/Month;->g:I

    div-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/x;->d:LQ1/i;

    if-nez v1, :cond_0

    new-instance v1, LQ1/i;

    invoke-direct {v1, v0}, LQ1/i;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/datepicker/x;->d:LQ1/i;

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, LF0/g;->mtrl_calendar_day:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/Month;->m()I

    move-result p3

    sub-int p3, p1, p3

    if-ltz p3, :cond_4

    iget v2, p2, Lcom/google/android/material/datepicker/Month;->h:I

    if-lt p3, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    add-int/2addr p3, v2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/datepicker/Month;->n(I)J

    move-result-wide v3

    new-instance p3, Lcom/google/android/material/datepicker/Month;

    invoke-static {}, Lcom/google/android/material/datepicker/G;->e()Ljava/util/Calendar;

    move-result-object v5

    invoke-direct {p3, v5}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    iget p3, p3, Lcom/google/android/material/datepicker/Month;->f:I

    iget p2, p2, Lcom/google/android/material/datepicker/Month;->f:I

    const-string v5, "UTC"

    if-ne p2, p3, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "MMMEd"

    invoke-static {p3, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    invoke-static {v5}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "yMMMEd"

    invoke-static {p3, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    invoke-static {v5}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p2, 0x8

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/x;->a(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/datepicker/x;->c(Landroid/widget/TextView;J)V

    :goto_3
    return-object v0
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
