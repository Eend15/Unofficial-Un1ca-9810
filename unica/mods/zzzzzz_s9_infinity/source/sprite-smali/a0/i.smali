.class public final La0/i;
.super Landroid/os/RemoteCallbackList;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .locals 0

    iput-object p1, p0, La0/i;->a:Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, La0/d;

    const-string v0, "callback"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cookie"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La0/i;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->e:Ljava/util/LinkedHashMap;

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
