.class public final Lokhttp3/Cookie$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000cH\u0002J\'\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008\u001bJ\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000cH\u0007J\u001e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001d2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0010\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000cH\u0002J \u0010\"\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u000cH\u0002J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u000cH\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/Cookie$Companion;",
        "",
        "()V",
        "DAY_OF_MONTH_PATTERN",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "MONTH_PATTERN",
        "TIME_PATTERN",
        "YEAR_PATTERN",
        "dateCharacterOffset",
        "",
        "input",
        "",
        "pos",
        "limit",
        "invert",
        "",
        "domainMatch",
        "urlHost",
        "domain",
        "parse",
        "Lokhttp3/Cookie;",
        "currentTimeMillis",
        "",
        "url",
        "Lokhttp3/HttpUrl;",
        "setCookie",
        "parse$okhttp",
        "parseAll",
        "",
        "headers",
        "Lokhttp3/Headers;",
        "parseDomain",
        "s",
        "parseExpires",
        "parseMaxAge",
        "pathMatch",
        "path",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LF3/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/Cookie$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$domainMatch(Lokhttp3/Cookie$Companion;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lokhttp3/Cookie$Companion;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$pathMatch(Lokhttp3/Cookie$Companion;Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lokhttp3/Cookie$Companion;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final dateCharacterOffset(Ljava/lang/String;IIZ)I
    .locals 3

    :goto_0
    if-ge p2, p3, :cond_7

    add-int/lit8 p0, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_0
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_5

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    const/16 v1, 0x30

    if-gt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    const/16 v1, 0x61

    if-gt v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_3

    const/16 v1, 0x41

    if-gt v1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v2

    :goto_2
    xor-int/lit8 v1, p4, 0x1

    if-ne v0, v1, :cond_6

    return p2

    :cond_6
    move p2, p0

    goto :goto_0

    :cond_7
    return p3
.end method

.method private final domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1, p2}, LV4/u;->f0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p0, p2

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p2, 0x2e

    if-ne p0, p2, :cond_1

    invoke-static {p1}, Lokhttp3/internal/Util;->canParseAsIpAddress(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "."

    invoke-static {p1, p0}, LV4/u;->f0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p0}, LV4/m;->C0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/HostnamesKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final parseExpires(Ljava/lang/String;II)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v0, v1, v4, v2, v3}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v4

    invoke-static {}, Lokhttp3/Cookie;->access$getTIME_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v6, -0x1

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_0
    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ge v4, v2, :cond_4

    add-int/lit8 v15, v4, 0x1

    invoke-direct {v0, v1, v15, v2, v13}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v15

    invoke-virtual {v5, v4, v15}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const-string v4, "matcher.group(1)"

    if-ne v8, v6, :cond_0

    invoke-static {}, Lokhttp3/Cookie;->access$getTIME_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "matcher.group(2)"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "matcher.group(3)"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_1

    :cond_0
    if-ne v9, v6, :cond_1

    invoke-static {}, Lokhttp3/Cookie;->access$getDAY_OF_MONTH_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_1
    if-ne v10, v6, :cond_2

    invoke-static {}, Lokhttp3/Cookie;->access$getMONTH_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "US"

    invoke-static {v4, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lokhttp3/Cookie;->access$getMONTH_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    const-string v10, "MONTH_PATTERN.pattern()"

    invoke-static {v4, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x6

    const/4 v13, 0x0

    invoke-static {v4, v3, v13, v13, v10}, LV4/m;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    div-int/lit8 v10, v3, 0x4

    goto :goto_1

    :cond_2
    if-ne v7, v6, :cond_3

    invoke-static {}, Lokhttp3/Cookie;->access$getYEAR_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_3
    :goto_1
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v15, v2, v3}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x46

    if-gt v0, v7, :cond_5

    const/16 v1, 0x64

    if-ge v7, v1, :cond_5

    add-int/lit16 v7, v7, 0x76c

    :cond_5
    if-ltz v7, :cond_6

    if-ge v7, v0, :cond_6

    add-int/lit16 v7, v7, 0x7d0

    :cond_6
    const/16 v0, 0x641

    const-string v1, "Failed requirement."

    if-lt v7, v0, :cond_c

    if-eq v10, v6, :cond_b

    if-gt v13, v9, :cond_a

    const/16 v0, 0x20

    if-ge v9, v0, :cond_a

    if-ltz v8, :cond_9

    const/16 v0, 0x18

    if-ge v8, v0, :cond_9

    if-ltz v11, :cond_8

    const/16 v0, 0x3c

    if-ge v11, v0, :cond_8

    if-ltz v12, :cond_7

    if-ge v12, v0, :cond_7

    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {v0, v13, v7}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v10, v13

    invoke-virtual {v0, v14, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final parseMaxAge(Ljava/lang/String;)J
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0

    :catch_0
    move-exception p0

    const-string v2, "-?\\d+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "compile(...)"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {p1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    const-string v2, "-"

    invoke-static {p1, v2, p0}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    return-wide v0

    :cond_2
    throw p0
.end method

.method private final pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/"

    invoke-static {p2, v1}, LV4/u;->f0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p2, 0x2f

    if-ne p0, p2, :cond_2

    return v0

    :cond_2
    return p1
.end method


# virtual methods
.method public final parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setCookie"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lokhttp3/Cookie$Companion;->parse$okhttp(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object p0

    return-object p0
.end method

.method public final parse$okhttp(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    const-string v1, "url"

    move-object/from16 v8, p3

    invoke-static {v8, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "setCookie"

    invoke-static {v7, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x3b

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v1, p4

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v9

    const/16 v2, 0x3d

    const/4 v5, 0x2

    move v4, v9

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v9, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v7, v3, v1, v4, v2}, Lokhttp3/internal/Util;->trimSubstring$default(Ljava/lang/String;IIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v11}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    :goto_0
    return-object v2

    :cond_2
    add-int/2addr v1, v4

    invoke-static {v7, v1, v9}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_3

    return-object v2

    :cond_3
    add-int/2addr v9, v4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/16 v5, -0x1

    move-object v10, v2

    move/from16 v17, v3

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v4

    move-wide v15, v5

    const-wide v22, 0xe677d21fdbffL

    move-object v4, v10

    :goto_1
    if-ge v9, v1, :cond_b

    const/16 v2, 0x3b

    invoke-static {v7, v2, v9, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v2

    const/16 v13, 0x3d

    invoke-static {v7, v13, v9, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v13

    invoke-static {v7, v9, v13}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    if-ge v13, v2, :cond_4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v7, v13, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_4
    const-string v13, ""

    :goto_2
    const-string v14, "expires"

    invoke-static {v9, v14}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v0, v13, v3, v9}, Lokhttp3/Cookie$Companion;->parseExpires(Ljava/lang/String;II)J

    move-result-wide v22
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/16 v19, 0x1

    goto :goto_4

    :cond_5
    const-string v14, "max-age"

    invoke-static {v9, v14}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    :try_start_1
    invoke-direct {v0, v13}, Lokhttp3/Cookie$Companion;->parseMaxAge(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_6
    const-string v14, "domain"

    invoke-static {v9, v14}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    :try_start_2
    invoke-direct {v0, v13}, Lokhttp3/Cookie$Companion;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v20, v3

    goto :goto_4

    :cond_7
    const-string v14, "path"

    invoke-static {v9, v14}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object v4, v13

    goto :goto_4

    :cond_8
    const-string v13, "secure"

    invoke-static {v9, v13}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v17, 0x1

    goto :goto_4

    :cond_9
    const-string v13, "httponly"

    invoke-static {v9, v13}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v18, 0x1

    :catch_0
    :cond_a
    :goto_4
    add-int/lit8 v9, v2, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_b
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v7, v15, v1

    if-nez v7, :cond_d

    :cond_c
    move-wide v13, v1

    goto :goto_7

    :cond_d
    cmp-long v1, v15, v5

    if-eqz v1, :cond_10

    const-wide v1, 0x20c49ba5e353f7L

    cmp-long v1, v15, v1

    if-gtz v1, :cond_e

    const/16 v1, 0x3e8

    int-to-long v1, v1

    mul-long/2addr v15, v1

    goto :goto_5

    :cond_e
    const-wide v15, 0x7fffffffffffffffL

    :goto_5
    add-long v1, p1, v15

    cmp-long v5, v1, p1

    if-ltz v5, :cond_f

    const-wide v5, 0xe677d21fdbffL

    cmp-long v7, v1, v5

    if-lez v7, :cond_c

    goto :goto_6

    :cond_f
    const-wide v5, 0xe677d21fdbffL

    :goto_6
    move-wide v13, v5

    goto :goto_7

    :cond_10
    move-wide/from16 v13, v22

    :goto_7
    invoke-virtual/range {p3 .. p3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    if-nez v10, :cond_11

    move-object v15, v1

    const/4 v0, 0x0

    goto :goto_8

    :cond_11
    invoke-direct {v0, v1, v10}, Lokhttp3/Cookie$Companion;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    move-object v15, v10

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_13

    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    invoke-virtual {v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v1

    invoke-virtual {v1, v15}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    :cond_13
    const-string v0, "/"

    if-eqz v4, :cond_15

    invoke-static {v4, v0, v3}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_9

    :cond_14
    move-object/from16 v16, v4

    goto :goto_a

    :cond_15
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/16 v4, 0x2f

    invoke-static {v1, v4, v3, v2}, LV4/m;->z0(Ljava/lang/String;CII)I

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_16
    move-object/from16 v16, v0

    :goto_a
    new-instance v0, Lokhttp3/Cookie;

    const/16 v21, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v21}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLF3/f;)V

    return-object v0
.end method

.method public final parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Set-Cookie"

    invoke-virtual {p2, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lokhttp3/Cookie$Companion;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string p1, "{\n        Collections.un\u2026ableList(cookies)\n      }"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object p0, Lr3/r;->d:Lr3/r;

    :goto_2
    return-object p0
.end method
