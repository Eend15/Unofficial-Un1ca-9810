.class public abstract Le5/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Le5/m;->g:Le5/m;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v0

    iget-object v0, v0, Le5/m;->d:[B

    sput-object v0, Le5/H;->a:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    return-void
.end method
