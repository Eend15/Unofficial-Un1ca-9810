.class public final LP3/m;
.super LP3/p;
.source "SourceFile"

# interfaces
.implements LP3/e;


# instance fields
.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LP3/p;-><init>(Ljava/lang/reflect/Field;ZZ)V

    iput-object p3, p0, LP3/m;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final m([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, LP3/p;->a([Ljava/lang/Object;)V

    iget-object v0, p0, LP3/u;->b:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object p0, p0, LP3/m;->g:Ljava/lang/Object;

    invoke-static {p1}, Lr3/h;->l0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
