.class public Lcom/fineclouds/spaceghostq1/common/a/a/a/a;
.super Landroid/animation/ValueAnimator;
.source "ExplosionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;
    }
.end annotation


# static fields
.field static a:J

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:F

.field private static final d:F

.field private static final e:F

.field private static final f:F


# instance fields
.field private g:Landroid/graphics/Paint;

.field private h:[Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x400

    sput-wide v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->a:J

    .line 21
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->b:Landroid/view/animation/Interpolator;

    .line 23
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->a(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->c:F

    .line 24
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->a(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->d:F

    .line 25
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->a(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->e:F

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/c;->a(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->f:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    const/16 v2, 0x11

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->g:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->i:Landroid/graphics/Rect;

    .line 34
    const/16 v3, 0xf

    .line 35
    const/16 v0, 0xe1

    new-array v0, v0, [Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->h:[Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;

    .line 36
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int v5, v0, v2

    .line 38
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int v6, v0, v2

    move v2, v1

    .line 39
    :goto_0
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 40
    :goto_1
    if-ge v0, v3, :cond_0

    .line 41
    iget-object v7, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->h:[Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;

    mul-int v8, v2, v3

    add-int/2addr v8, v0

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v9, v5

    add-int/lit8 v10, v2, 0x1

    mul-int/2addr v10, v6

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-direct {p0, v9, v4}, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->a(ILjava/util/Random;)Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;

    move-result-object v9

    aput-object v9, v7, v8

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->j:Landroid/view/View;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->setFloatValues([F)V

    .line 46
    sget-object v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    sget-wide v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    return-void

    .line 45
    nop

    :array_0
    .array-data 4
        0x0
        0x3fb33333    # 1.4f
    .end array-data
.end method

.method static synthetic a()F
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->e:F

    return v0
.end method

.method private a(ILjava/util/Random;)Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const v5, 0x3e4ccccd    # 0.2f

    .line 50
    new-instance v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;-><init>(Lcom/fineclouds/spaceghostq1/common/a/a/a/a;Lcom/fineclouds/spaceghostq1/common/a/a/a/a$1;)V

    .line 51
    iput p1, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->b:I

    .line 52
    sget v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->e:F

    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->e:F

    .line 53
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    .line 54
    sget v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->e:F

    sget v2, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->c:F

    sget v3, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->e:F

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->h:F

    .line 58
    :goto_0
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    .line 59
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3e3851ec    # 0.18f

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    mul-float/2addr v0, v3

    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->i:F

    .line 60
    cmpg-float v0, v2, v5

    if-gez v0, :cond_1

    iget v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->i:F

    :goto_1
    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->i:F

    .line 61
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v3, v6

    mul-float/2addr v0, v3

    const v3, 0x3fe66666    # 1.8f

    mul-float/2addr v0, v3

    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->j:F

    .line 62
    cmpg-float v0, v2, v5

    if-gez v0, :cond_2

    iget v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->j:F

    .line 63
    :goto_2
    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->j:F

    .line 64
    const/high16 v0, 0x40800000    # 4.0f

    iget v2, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->i:F

    mul-float/2addr v0, v2

    iget v2, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->j:F

    div-float/2addr v0, v2

    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->k:F

    .line 65
    iget v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->k:F

    neg-float v0, v0

    iget v2, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->j:F

    div-float/2addr v0, v2

    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->l:F

    .line 66
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->d:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 67
    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->f:F

    .line 68
    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->c:F

    .line 69
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->d:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 70
    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->g:F

    .line 71
    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->d:F

    .line 72
    const v0, 0x3e0f5c29    # 0.14f

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v0, v2

    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->m:F

    .line 73
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v0, v2

    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->n:F

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->a:F

    .line 75
    return-object v1

    .line 56
    :cond_0
    sget v0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->f:F

    sget v2, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->e:F

    sget v3, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->f:F

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->h:F

    goto/16 :goto_0

    .line 60
    :cond_1
    iget v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->i:F

    iget v3, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->i:F

    mul-float/2addr v3, v5

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    goto/16 :goto_1

    .line 62
    :cond_2
    const v0, 0x3f4ccccd    # 0.8f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_3

    iget v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->j:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    goto :goto_2

    :cond_3
    iget v0, v1, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->j:F

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return v0

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->h:[Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 82
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->a(F)V

    .line 83
    iget v0, v4, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->a:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->g:Landroid/graphics/Paint;

    iget v5, v4, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->b:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->g:Landroid/graphics/Paint;

    iget v5, v4, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->b:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v4, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 86
    iget v0, v4, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->c:F

    iget v5, v4, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->d:F

    iget v4, v4, Lcom/fineclouds/spaceghostq1/common/a/a/a/a$a;->e:F

    iget-object v6, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 90
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 95
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 96
    return-void
.end method
