.class public final LP3/i;
.super LP3/l;
.source "SourceFile"

# interfaces
.implements LP3/e;


# instance fields
.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 1

    const-string v0, "field"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, LP3/l;-><init>(Ljava/lang/reflect/Field;Z)V

    iput-object p1, p0, LP3/i;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final m([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LK/I;->h(LP3/f;[Ljava/lang/Object;)V

    iget-object p1, p0, LP3/u;->b:Ljava/lang/reflect/Member;

    check-cast p1, Ljava/lang/reflect/Field;

    iget-object p0, p0, LP3/i;->e:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
