.class public final Lv0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/app/Notification;

.field public final synthetic f:I

.field public final synthetic g:Landroidx/work/impl/foreground/SystemForegroundService;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/b;->g:Landroidx/work/impl/foreground/SystemForegroundService;

    iput p2, p0, Lv0/b;->d:I

    iput-object p3, p0, Lv0/b;->e:Landroid/app/Notification;

    iput p4, p0, Lv0/b;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lv0/b;->e:Landroid/app/Notification;

    iget v1, p0, Lv0/b;->f:I

    iget-object v2, p0, Lv0/b;->g:Landroidx/work/impl/foreground/SystemForegroundService;

    iget p0, p0, Lv0/b;->d:I

    invoke-static {v2, p0, v0, v1}, Lv0/c;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    return-void
.end method
