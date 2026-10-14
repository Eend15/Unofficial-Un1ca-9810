.class public final LV3/k;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final d:LV3/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LV3/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, LV3/k;->d:LV3/k;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LV3/h;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object p0

    return-object p0
.end method
