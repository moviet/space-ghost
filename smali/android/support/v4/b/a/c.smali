.class Landroid/support/v4/b/a/c;
.super Ljava/lang/Object;
.source "DrawableCompatBase.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 53
    instance-of v0, p0, Landroid/support/v4/b/a/o;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/support/v4/b/a/j;

    invoke-direct {v0, p0}, Landroid/support/v4/b/a/j;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 56
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/b/a/o;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Landroid/support/v4/b/a/o;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/o;->setTint(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/b/a/o;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Landroid/support/v4/b/a/o;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/o;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 47
    instance-of v0, p0, Landroid/support/v4/b/a/o;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Landroid/support/v4/b/a/o;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/o;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 50
    :cond_0
    return-void
.end method
