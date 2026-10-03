.class public final LV/c;
.super LV/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LV/a;->b:LV/a;

    invoke-direct {p0, v0}, LV/c;-><init>(LV/b;)V

    return-void
.end method

.method public constructor <init>(LV/b;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, LV/b;-><init>()V

    .line 3
    iget-object p0, p0, LV/b;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, LV/b;->a:Ljava/util/LinkedHashMap;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
