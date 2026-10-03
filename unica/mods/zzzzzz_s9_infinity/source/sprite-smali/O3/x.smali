.class public final LO3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final b:LO3/x;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LO3/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LO3/x;-><init>(I)V

    sput-object v0, LO3/x;->b:LO3/x;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LO3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, LO3/x;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LL3/h;

    check-cast p1, LO3/L;

    invoke-virtual {p1}, LO3/L;->a()Ljava/lang/String;

    move-result-object p0

    check-cast p2, LL3/h;

    check-cast p2, LO3/L;

    invoke-virtual {p2}, LO3/L;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lp4/g;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Ljava/lang/reflect/Method;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-static {p2, p0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lp4/g;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, LU3/n;

    check-cast p2, LU3/n;

    invoke-static {p1, p2}, LU3/o;->b(LU3/n;LU3/n;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
