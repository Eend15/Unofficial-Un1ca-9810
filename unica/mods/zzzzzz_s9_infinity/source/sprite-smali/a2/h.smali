.class public final La2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5

    const-string v0, "\n            "

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, ""

    const-string v1, "behavior"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "trigger"

    iget-object v3, p0, La2/h;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v2, p0, La2/h;->c:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, La2/h;->b:Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "_"

    invoke-static {v2, v4, v3}, LV4/m;->y0(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, La2/h;->b:Ljava/lang/String;

    :cond_0
    const-string v2, "animation"

    iget-object p0, p0, La2/h;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
