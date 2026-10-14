.class public final Lx0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx0/q;

.field public static final b:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx0/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx0/q;->a:Lx0/q;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lx0/q;->b:Ljava/util/WeakHashMap;

    return-void
.end method
