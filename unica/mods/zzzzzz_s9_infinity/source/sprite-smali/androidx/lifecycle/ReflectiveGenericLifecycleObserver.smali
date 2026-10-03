.class Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final d:Landroidx/lifecycle/s;

.field public final e:Landroidx/lifecycle/b;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/s;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->d:Landroidx/lifecycle/s;

    sget-object v0, Landroidx/lifecycle/d;->c:Landroidx/lifecycle/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, v0, Landroidx/lifecycle/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/b;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/d;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/b;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->e:Landroidx/lifecycle/b;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->e:Landroidx/lifecycle/b;

    iget-object v0, v0, Landroidx/lifecycle/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->d:Landroidx/lifecycle/s;

    invoke-static {v1, p1, p2, p0}, Landroidx/lifecycle/b;->a(Ljava/util/List;Landroidx/lifecycle/t;Landroidx/lifecycle/m;Landroidx/lifecycle/s;)V

    sget-object v1, Landroidx/lifecycle/m;->ON_ANY:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p0}, Landroidx/lifecycle/b;->a(Ljava/util/List;Landroidx/lifecycle/t;Landroidx/lifecycle/m;Landroidx/lifecycle/s;)V

    return-void
.end method
