.class public abstract LO3/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:[LL3/l;


# instance fields
.field public final a:LO3/k0;

.field public final synthetic b:LO3/z;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LO3/w;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v3, "moduleData"

    const-string v4, "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"

    invoke-direct {v0, v2, v3, v4}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    filled-new-array {v0}, [LL3/l;

    move-result-object v0

    sput-object v0, LO3/w;->c:[LL3/l;

    return-void
.end method

.method public constructor <init>(LO3/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/w;->b:LO3/z;

    new-instance p1, LC4/g;

    const/16 v0, 0xe

    invoke-direct {p1, v0, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0, p1}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object p1

    iput-object p1, p0, LO3/w;->a:LO3/k0;

    return-void
.end method
