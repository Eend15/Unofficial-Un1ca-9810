.class public final Lcom/google/android/material/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/io/Serializable;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->d:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;La0/l;ZZ)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/material/internal/a;->c:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/google/android/material/internal/a;->d:Ljava/io/Serializable;

    .line 7
    iput-object p3, p0, Lcom/google/android/material/internal/a;->e:Ljava/lang/Object;

    .line 8
    iput-boolean p4, p0, Lcom/google/android/material/internal/a;->a:Z

    .line 9
    iput-boolean p5, p0, Lcom/google/android/material/internal/a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/internal/f;)Z
    .locals 5

    invoke-interface {p1}, Lcom/google/android/material/internal/f;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/a;->d:Ljava/io/Serializable;

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/internal/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-boolean v4, p0, Lcom/google/android/material/internal/a;->a:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/f;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/internal/a;->c(Lcom/google/android/material/internal/f;Z)Z

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_3
    return p0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/a;->e:Ljava/lang/Object;

    check-cast v0, LA1/e;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/google/android/material/internal/a;->d:Ljava/io/Serializable;

    check-cast p0, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget p0, Lcom/google/android/material/chip/ChipGroup;->m:I

    iget-object p0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/material/internal/f;Z)Z
    .locals 3

    invoke-interface {p1}, Lcom/google/android/material/internal/f;->getId()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/internal/a;->d:Ljava/io/Serializable;

    check-cast p0, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    return p0
.end method
