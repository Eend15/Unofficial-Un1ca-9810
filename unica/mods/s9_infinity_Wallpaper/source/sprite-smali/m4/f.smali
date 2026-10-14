.class public final Lm4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Z

.field public static final i:Ljava/util/HashMap;


# instance fields
.field public a:[I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:[Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:Lm4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlin.ignore.old.metadata"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lm4/f;->h:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lm4/f;->i:Ljava/util/HashMap;

    new-instance v1, Ls4/c;

    const-string v2, "kotlin.jvm.internal.KotlinClass"

    invoke-direct {v1, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    sget-object v2, Lm4/a;->g:Lm4/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls4/c;

    const-string v2, "kotlin.jvm.internal.KotlinFileFacade"

    invoke-direct {v1, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    sget-object v2, Lm4/a;->h:Lm4/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls4/c;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClass"

    invoke-direct {v1, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    sget-object v2, Lm4/a;->j:Lm4/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls4/c;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClassPart"

    invoke-direct {v1, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    sget-object v2, Lm4/a;->k:Lm4/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls4/c;

    const-string v2, "kotlin.jvm.internal.KotlinSyntheticClass"

    invoke-direct {v1, v2}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    sget-object v2, Lm4/a;->i:Lm4/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
