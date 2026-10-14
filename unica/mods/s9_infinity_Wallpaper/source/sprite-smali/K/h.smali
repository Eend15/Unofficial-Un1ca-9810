.class public final synthetic LK/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic d:LK/j;

.field public final synthetic e:LK/k;


# direct methods
.method public synthetic constructor <init>(LK/j;LK/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/h;->d:LK/j;

    iput-object p2, p0, LK/h;->e:LK/k;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 1

    sget-object p1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    iget-object v0, p0, LK/h;->d:LK/j;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, LK/h;->e:LK/k;

    invoke-virtual {v0, p0}, LK/j;->b(LK/k;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
