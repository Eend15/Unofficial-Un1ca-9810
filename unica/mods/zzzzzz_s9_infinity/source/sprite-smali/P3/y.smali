.class public abstract LP3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/f;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP3/y;->b:Ljava/lang/reflect/Method;

    iput-object p2, p0, LP3/y;->c:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "unboxMethod.returnType"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LP3/y;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final k()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, LP3/y;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LP3/y;->c:Ljava/util/List;

    return-object p0
.end method
