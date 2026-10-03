.class public final Lt4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt4/b;

.field public final b:I


# direct methods
.method public constructor <init>(ILt4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt4/h;->a:Lt4/b;

    iput p1, p0, Lt4/h;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lt4/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lt4/h;

    iget-object v0, p1, Lt4/h;->a:Lt4/b;

    iget-object v2, p0, Lt4/h;->a:Lt4/b;

    if-ne v2, v0, :cond_1

    iget p0, p0, Lt4/h;->b:I

    iget p1, p1, Lt4/h;->b:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lt4/h;->a:Lt4/b;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget p0, p0, Lt4/h;->b:I

    add-int/2addr v0, p0

    return v0
.end method
