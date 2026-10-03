.class public final Lb1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/Object;

.field public final c:Landroidx/recyclerview/widget/y;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(La1/a;Ljava/lang/String;Ljava/lang/Object;Landroidx/recyclerview/widget/y;I)V
    .locals 0

    iput p5, p0, Lb1/a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-object p5, p0, Lb1/a;->c:Landroidx/recyclerview/widget/y;

    iget-object p1, p1, La1/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lb1/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lb1/a;->b:Ljava/lang/Object;

    iput-object p4, p0, Lb1/a;->c:Landroidx/recyclerview/widget/y;

    return-void
.end method
