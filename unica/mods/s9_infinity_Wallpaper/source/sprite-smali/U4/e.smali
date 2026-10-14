.class public final LU4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU4/i;
.implements LU4/d;


# static fields
.field public static final a:LU4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LU4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LU4/e;->a:LU4/e;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)LU4/i;
    .locals 0

    sget-object p0, LU4/e;->a:LU4/e;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Lr3/q;->d:Lr3/q;

    return-object p0
.end method
