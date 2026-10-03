.class public final Lo0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo0/a;->a:Lo0/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string p1, "context.noBackupFilesDir"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
