.class public abstract Lm3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq3/j;

.field public static final b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm3/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lq3/j;

    invoke-direct {v1, v0}, Lq3/j;-><init>(LE3/a;)V

    sput-object v1, Lm3/b;->a:Lq3/j;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lm3/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method
