.class public final synthetic LV4/k;
.super LF3/i;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final l:LV4/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LV4/k;

    const-string v1, "next"

    const-string v2, "next()Lkotlin/text/MatchResult;"

    const-class v3, LV4/h;

    invoke-direct {v0, v3, v1, v2}, LF3/i;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LV4/k;->l:LV4/k;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LV4/h;

    const-string p0, "p0"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LV4/j;

    invoke-virtual {p1}, LV4/j;->a()LV4/j;

    move-result-object p0

    return-object p0
.end method
