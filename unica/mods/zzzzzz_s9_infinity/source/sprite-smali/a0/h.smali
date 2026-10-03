.class public final La0/h;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic b:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .locals 0

    iput-object p1, p0, La0/h;->b:Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "androidx.room.IMultiInstanceInvalidationService"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_e

    const/4 v0, 0x0

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    const-string p3, "tables"

    invoke-static {p2, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La0/h;->b:Landroidx/room/MultiInstanceInvalidationService;

    iget-object p3, p0, Landroidx/room/MultiInstanceInvalidationService;->f:La0/i;

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Landroidx/room/MultiInstanceInvalidationService;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_2

    const-string p0, "ROOM"

    const-string p1, "Remote invalidation client ID not registered"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :try_start_1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->f:La0/i;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    :try_start_2
    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService;->f:La0/i;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v4}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Landroidx/room/MultiInstanceInvalidationService;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eq p1, v4, :cond_4

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService;->f:La0/i;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, La0/d;

    invoke-virtual {v3, p2}, La0/d;->a([Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_4
    const-string v4, "ROOM"

    const-string v5, "Error invoking a remote callback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    :try_start_5
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->f:La0/i;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_5
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->f:La0/i;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p3

    goto/16 :goto_8

    :goto_3
    monitor-exit p3

    throw p0

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const-string p4, "androidx.room.IMultiInstanceInvalidationCallback"

    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    if-eqz p4, :cond_8

    instance-of v0, p4, La0/d;

    if-eqz v0, :cond_8

    move-object v0, p4

    check-cast v0, La0/d;

    goto :goto_4

    :cond_8
    new-instance v0, La0/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, La0/d;->b:Landroid/os/IBinder;

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const-string p2, "callback"

    invoke-static {v0, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La0/h;->b:Landroidx/room/MultiInstanceInvalidationService;

    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationService;->f:La0/i;

    monitor-enter p2

    :try_start_6
    iget-object p4, p0, Landroidx/room/MultiInstanceInvalidationService;->f:La0/i;

    invoke-virtual {p4, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :catchall_2
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    const-string p4, "androidx.room.IMultiInstanceInvalidationCallback"

    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    if-eqz p4, :cond_b

    instance-of v0, p4, La0/d;

    if-eqz v0, :cond_b

    move-object v0, p4

    check-cast v0, La0/d;

    goto :goto_5

    :cond_b
    new-instance v0, La0/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, La0/d;->b:Landroid/os/IBinder;

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "callback"

    invoke-static {v0, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-nez p1, :cond_c

    goto :goto_7

    :cond_c
    iget-object p0, p0, La0/h;->b:Landroidx/room/MultiInstanceInvalidationService;

    iget-object p4, p0, Landroidx/room/MultiInstanceInvalidationService;->f:La0/i;

    monitor-enter p4

    :try_start_7
    iget v2, p0, Landroidx/room/MultiInstanceInvalidationService;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/room/MultiInstanceInvalidationService;->d:I

    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService;->f:La0/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->e:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v2

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_9

    :cond_d
    iget p1, p0, Landroidx/room/MultiInstanceInvalidationService;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/room/MultiInstanceInvalidationService;->d:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_6
    monitor-exit p4

    :goto_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    :goto_9
    monitor-exit p4

    throw p0

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
