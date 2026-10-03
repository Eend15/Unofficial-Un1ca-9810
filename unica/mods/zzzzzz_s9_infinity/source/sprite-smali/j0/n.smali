.class public final Lj0/n;
.super Lj0/m;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln/f;

.field public final synthetic b:Lj0/o;


# direct methods
.method public constructor <init>(Lj0/o;Ln/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/n;->b:Lj0/o;

    iput-object p2, p0, Lj0/n;->a:Ln/f;

    return-void
.end method


# virtual methods
.method public final d(Lj0/l;)V
    .locals 2

    iget-object v0, p0, Lj0/n;->b:Lj0/o;

    iget-object v0, v0, Lj0/o;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lj0/n;->a:Ln/f;

    invoke-virtual {v1, v0}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lj0/l;->u(Lj0/k;)V

    return-void
.end method
