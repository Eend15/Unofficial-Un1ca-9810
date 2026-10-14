.class public abstract LB2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# direct methods
.method public static a(LA1/e;)Landroid/content/Context;
    .locals 1

    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getApplicationContext(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
