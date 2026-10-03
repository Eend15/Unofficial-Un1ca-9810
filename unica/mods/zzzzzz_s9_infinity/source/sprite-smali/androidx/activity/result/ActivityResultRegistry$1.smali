.class Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/activity/result/a;

.field public final synthetic f:Ld/a;

.field public final synthetic g:Landroidx/activity/result/g;


# direct methods
.method public constructor <init>(Landroidx/activity/result/g;Ljava/lang/String;Landroidx/activity/result/a;Ld/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->g:Landroidx/activity/result/g;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->e:Landroidx/activity/result/a;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->f:Ld/a;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 3

    sget-object p1, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Ljava/lang/String;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->g:Landroidx/activity/result/g;

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/activity/result/g;->f:Ljava/util/HashMap;

    new-instance p2, Landroidx/activity/result/e;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->e:Landroidx/activity/result/a;

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->f:Ld/a;

    invoke-direct {p2, p0, v2}, Landroidx/activity/result/e;-><init>(Ld/a;Landroidx/activity/result/a;)V

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, Landroidx/activity/result/g;->g:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p2}, Landroidx/activity/result/a;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, v1, Landroidx/activity/result/g;->h:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/activity/result/ActivityResult;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget p1, p2, Landroidx/activity/result/ActivityResult;->d:I

    iget-object p2, p2, Landroidx/activity/result/ActivityResult;->e:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Ld/a;->c(Landroid/content/Intent;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v2, p0}, Landroidx/activity/result/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v1, Landroidx/activity/result/g;->f:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1, v0}, Landroidx/activity/result/g;->f(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
