.class public interface abstract Ln0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ln0/t;

.field public static final c:Ln0/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln0/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln0/u;->b:Ln0/t;

    new-instance v0, Ln0/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln0/u;->c:Ln0/s;

    return-void
.end method
