.class public final synthetic Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZLandroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->lambda$createSingle$2(Ljava/lang/Object;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
