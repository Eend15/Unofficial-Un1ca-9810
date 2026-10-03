.class public final La4/t;
.super La4/v;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    const-string v0, "member"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/t;->a:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/reflect/Member;
    .locals 0

    iget-object p0, p0, La4/t;->a:Ljava/lang/reflect/Field;

    return-object p0
.end method
