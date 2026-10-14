.class public final Landroidx/lifecycle/J;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final d:Landroidx/lifecycle/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/J;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/J;->d:Landroidx/lifecycle/J;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LV/b;

    const-string p0, "$this$initializer"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/lifecycle/M;

    invoke-direct {p0}, Landroidx/lifecycle/M;-><init>()V

    return-object p0
.end method
