.class public final Lp0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lp0/b;

.field public final b:Landroidx/recyclerview/widget/y;

.field public final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayedWorkTracker"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp0/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lp0/b;Landroidx/recyclerview/widget/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/a;->a:Lp0/b;

    iput-object p2, p0, Lp0/a;->b:Landroidx/recyclerview/widget/y;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lp0/a;->c:Ljava/util/HashMap;

    return-void
.end method
