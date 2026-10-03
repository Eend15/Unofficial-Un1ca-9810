.class public final LG/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LG/e;


# instance fields
.field public final a:LG/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    new-instance v0, LG/e;

    new-instance v2, LG/f;

    invoke-direct {v2, v1}, LG/f;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v0, v2}, LG/e;-><init>(LG/f;)V

    sput-object v0, LG/e;->b:LG/e;

    return-void
.end method

.method public constructor <init>(LG/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/e;->a:LG/f;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LG/e;

    if-eqz v0, :cond_0

    check-cast p1, LG/e;

    iget-object p1, p1, LG/e;->a:LG/f;

    iget-object p0, p0, LG/e;->a:LG/f;

    invoke-virtual {p0, p1}, LG/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LG/e;->a:LG/f;

    iget-object p0, p0, LG/f;->a:Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LG/e;->a:LG/f;

    iget-object p0, p0, LG/f;->a:Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
