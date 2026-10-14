.class public final Landroidx/recyclerview/widget/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LJ/c;


# instance fields
.field public a:I

.field public b:LK/o;

.field public c:LK/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LJ/c;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LJ/c;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/e0;->d:LJ/c;

    return-void
.end method

.method public static a()Landroidx/recyclerview/widget/e0;
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/e0;->d:LJ/c;

    invoke-virtual {v0}, LJ/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/e0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/e0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method
