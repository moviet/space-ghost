.class public Lcom/fineclouds/spaceghostq1/common/a/a/a/c;
.super Ljava/lang/Object;
.source "ExplosionUtils.java"


# static fields
.field private static final a:F

.field private static final b:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->a:F

    .line 21
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->b:Landroid/graphics/Canvas;

    return-void
.end method

.method public static a(I)I
    .locals 2

    .prologue
    .line 24
    int-to-float v0, p0

    sget v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->a:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 50
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 53
    if-lez p3, :cond_0

    .line 54
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 55
    add-int/lit8 v0, p3, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->a(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 28
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 29
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    .line 35
    invoke-static {v0, v1, v2, v3}, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->a(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    sget-object v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->b:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v2, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->b:Landroid/graphics/Canvas;

    .line 40
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 42
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
