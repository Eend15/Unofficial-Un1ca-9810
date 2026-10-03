.class public abstract Ls4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LV4/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LV4/l;

    const-string v1, "[^\\p{L}\\p{Digit}]"

    invoke-direct {v0, v1}, LV4/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls4/g;->a:LV4/l;

    return-void
.end method
