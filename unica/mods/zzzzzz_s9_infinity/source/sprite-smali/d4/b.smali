.class public abstract Ld4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/c;

.field public static final b:Ls4/c;

.field public static final c:Ls4/c;

.field public static final d:Ls4/c;

.field public static final e:Ljava/util/Map;

.field public static final f:Ljava/util/LinkedHashMap;

.field public static final g:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ls4/c;

    const-string v1, "javax.annotation.meta.TypeQualifierNickname"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld4/b;->a:Ls4/c;

    new-instance v0, Ls4/c;

    const-string v1, "javax.annotation.meta.TypeQualifier"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld4/b;->b:Ls4/c;

    new-instance v0, Ls4/c;

    const-string v1, "javax.annotation.meta.TypeQualifierDefault"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld4/b;->c:Ls4/c;

    new-instance v0, Ls4/c;

    const-string v1, "kotlin.annotations.jvm.UnderMigration"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld4/b;->d:Ls4/c;

    sget-object v0, Ld4/a;->g:Ld4/a;

    sget-object v1, Ld4/a;->e:Ld4/a;

    sget-object v2, Ld4/a;->f:Ld4/a;

    sget-object v3, Ld4/a;->i:Ld4/a;

    sget-object v4, Ld4/a;->h:Ld4/a;

    filled-new-array {v0, v1, v2, v3, v4}, [Ld4/a;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ld4/y;->c:Ls4/c;

    new-instance v3, Ld4/n;

    new-instance v4, Lk4/i;

    sget-object v5, Lk4/h;->e:Lk4/h;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lk4/i;-><init>(Lk4/h;Z)V

    invoke-direct {v3, v4, v0, v6, v6}, Ld4/n;-><init>(Lk4/i;Ljava/util/Collection;ZZ)V

    new-instance v0, Lq3/f;

    invoke-direct {v0, v1, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lr3/v;->e0(Lq3/f;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ld4/b;->e:Ljava/util/Map;

    new-instance v1, Ls4/c;

    const-string v3, "javax.annotation.ParametersAreNullableByDefault"

    invoke-direct {v1, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v3, Ld4/n;

    new-instance v4, Lk4/i;

    sget-object v7, Lk4/h;->d:Lk4/h;

    invoke-direct {v4, v7, v6}, Lk4/i;-><init>(Lk4/h;Z)V

    invoke-static {v2}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Ld4/n;-><init>(Lk4/i;Ljava/util/List;)V

    new-instance v4, Lq3/f;

    invoke-direct {v4, v1, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ls4/c;

    const-string v3, "javax.annotation.ParametersAreNonnullByDefault"

    invoke-direct {v1, v3}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v3, Ld4/n;

    new-instance v7, Lk4/i;

    invoke-direct {v7, v5, v6}, Lk4/i;-><init>(Lk4/h;Z)V

    invoke-static {v2}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v7, v2}, Ld4/n;-><init>(Lk4/i;Ljava/util/List;)V

    new-instance v2, Lq3/f;

    invoke-direct {v2, v1, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v2}, [Lq3/f;

    move-result-object v1

    invoke-static {v1}, Lr3/v;->f0([Lq3/f;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    sput-object v2, Ld4/b;->f:Ljava/util/LinkedHashMap;

    sget-object v0, Ld4/y;->e:Ls4/c;

    sget-object v1, Ld4/y;->f:Ls4/c;

    filled-new-array {v0, v1}, [Ls4/c;

    move-result-object v0

    invoke-static {v0}, Lr3/h;->v0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ld4/b;->g:Ljava/util/Set;

    return-void
.end method
