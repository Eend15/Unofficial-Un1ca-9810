.class public final LO3/e;
.super LO3/n0;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/e;->e:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, LO3/e;->e:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-string p0, "constructor.parameterTypes"

    invoke-static {v0, p0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, LO3/c;->f:LO3/c;

    const-string v2, "<init>("

    const-string v3, ")V"

    const-string v1, ""

    const/16 v5, 0x18

    invoke-static/range {v0 .. v5}, Lr3/h;->p0([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
