.class public final LV/a;
.super LV/b;
.source "SourceFile"


# static fields
.field public static final b:LV/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LV/a;

    invoke-direct {v0}, LV/b;-><init>()V

    sput-object v0, LV/a;->b:LV/a;

    return-void
.end method
