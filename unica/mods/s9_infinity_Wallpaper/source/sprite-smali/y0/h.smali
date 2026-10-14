.class public final Ly0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ly0/h;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Ly0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly0/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly0/h;->c:Ly0/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ly0/i;->f:Lp4/g;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lp4/g;->O(Ly0/h;Ljava/lang/Thread;)V

    return-void
.end method
