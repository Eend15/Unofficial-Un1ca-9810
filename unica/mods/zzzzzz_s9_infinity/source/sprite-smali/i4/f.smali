.class public final Li4/f;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final d:Li4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li4/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, Li4/f;->d:Li4/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "(raw) "

    invoke-static {p1, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
