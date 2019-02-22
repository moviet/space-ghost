.class final Landroid/support/design/widget/e;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final a:Z

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private A:Z

.field private B:Landroid/graphics/Bitmap;

.field private C:Landroid/graphics/Paint;

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:Z

.field private final I:Landroid/text/TextPaint;

.field private J:Landroid/view/animation/Interpolator;

.field private K:Landroid/view/animation/Interpolator;

.field private L:F

.field private M:F

.field private N:F

.field private O:I

.field private P:F

.field private Q:F

.field private R:F

.field private S:I

.field private final c:Landroid/view/View;

.field private d:Z

.field private e:F

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/RectF;

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Landroid/graphics/Typeface;

.field private v:Landroid/graphics/Typeface;

.field private w:Landroid/graphics/Typeface;

.field private x:Ljava/lang/CharSequence;

.field private y:Ljava/lang/CharSequence;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/e;->a:Z

    .line 47
    const/4 v0, 0x0

    sput-object v0, Landroid/support/design/widget/e;->b:Landroid/graphics/Paint;

    .line 48
    sget-object v0, Landroid/support/design/widget/e;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Landroid/support/design/widget/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    sget-object v0, Landroid/support/design/widget/e;->b:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    :cond_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(FFFLandroid/view/animation/Interpolator;)F
    .locals 1

    .prologue
    .line 642
    if-eqz p3, :cond_0

    .line 643
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    .line 645
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method private static a(IIF)I
    .locals 5

    .prologue
    .line 632
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 633
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 634
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 635
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 636
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    .line 637
    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v3, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(FF)Z
    .locals 2

    .prologue
    .line 614
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/CharSequence;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 472
    iget-object v2, p0, Landroid/support/design/widget/e;->c:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 474
    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v4/d/e;->d:Landroid/support/v4/d/d;

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/support/v4/d/d;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 472
    goto :goto_0

    .line 474
    :cond_1
    sget-object v0, Landroid/support/v4/d/e;->c:Landroid/support/v4/d/d;

    goto :goto_1
.end method

.method private c(F)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 316
    invoke-direct {p0, p1}, Landroid/support/design/widget/e;->d(F)V

    .line 317
    iget v0, p0, Landroid/support/design/widget/e;->q:F

    iget v1, p0, Landroid/support/design/widget/e;->r:F

    iget-object v2, p0, Landroid/support/design/widget/e;->J:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e;->s:F

    .line 319
    iget v0, p0, Landroid/support/design/widget/e;->o:F

    iget v1, p0, Landroid/support/design/widget/e;->p:F

    iget-object v2, p0, Landroid/support/design/widget/e;->J:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e;->t:F

    .line 322
    iget v0, p0, Landroid/support/design/widget/e;->k:F

    iget v1, p0, Landroid/support/design/widget/e;->l:F

    iget-object v2, p0, Landroid/support/design/widget/e;->K:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/e;->e(F)V

    .line 325
    iget v0, p0, Landroid/support/design/widget/e;->n:I

    iget v1, p0, Landroid/support/design/widget/e;->m:I

    if-eq v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/e;->m:I

    iget v2, p0, Landroid/support/design/widget/e;->n:I

    invoke-static {v1, v2, p1}, Landroid/support/design/widget/e;->a(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 333
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/e;->P:F

    iget v2, p0, Landroid/support/design/widget/e;->L:F

    invoke-static {v1, v2, p1, v5}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/e;->Q:F

    iget v3, p0, Landroid/support/design/widget/e;->M:F

    invoke-static {v2, v3, p1, v5}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/e;->R:F

    iget v4, p0, Landroid/support/design/widget/e;->N:F

    invoke-static {v3, v4, p1, v5}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/e;->S:I

    iget v5, p0, Landroid/support/design/widget/e;->O:I

    invoke-static {v4, v5, p1}, Landroid/support/design/widget/e;->a(IIF)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 339
    iget-object v0, p0, Landroid/support/design/widget/e;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 340
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/e;->n:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method private d(F)V
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/design/widget/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/e;->J:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 419
    iget-object v0, p0, Landroid/support/design/widget/e;->h:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/widget/e;->o:F

    iget v2, p0, Landroid/support/design/widget/e;->p:F

    iget-object v3, p0, Landroid/support/design/widget/e;->J:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 421
    iget-object v0, p0, Landroid/support/design/widget/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/e;->J:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 423
    iget-object v0, p0, Landroid/support/design/widget/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/e;->J:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 425
    return-void
.end method

.method private e(F)V
    .locals 2

    .prologue
    .line 480
    invoke-direct {p0, p1}, Landroid/support/design/widget/e;->f(F)V

    .line 483
    sget-boolean v0, Landroid/support/design/widget/e;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/e;->F:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/e;->A:Z

    .line 485
    iget-boolean v0, p0, Landroid/support/design/widget/e;->A:Z

    if-eqz v0, :cond_0

    .line 487
    invoke-direct {p0}, Landroid/support/design/widget/e;->h()V

    .line 490
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/e;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 491
    return-void

    .line 483
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Landroid/support/design/widget/e;->e:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/e;->c(F)V

    .line 313
    return-void
.end method

.method private f(F)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Landroid/support/design/widget/e;->x:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget v0, p0, Landroid/support/design/widget/e;->l:F

    invoke-static {p1, v0}, Landroid/support/design/widget/e;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 501
    iget-object v0, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 502
    iget v0, p0, Landroid/support/design/widget/e;->l:F

    .line 503
    iput v6, p0, Landroid/support/design/widget/e;->F:F

    .line 504
    iget-object v4, p0, Landroid/support/design/widget/e;->w:Landroid/graphics/Typeface;

    iget-object v5, p0, Landroid/support/design/widget/e;->u:Landroid/graphics/Typeface;

    if-eq v4, v5, :cond_a

    .line 505
    iget-object v4, p0, Landroid/support/design/widget/e;->u:Landroid/graphics/Typeface;

    iput-object v4, p0, Landroid/support/design/widget/e;->w:Landroid/graphics/Typeface;

    move v4, v3

    move v3, v0

    move v0, v1

    .line 525
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 526
    iget v5, p0, Landroid/support/design/widget/e;->G:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/support/design/widget/e;->H:Z

    if-nez v5, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    move v0, v1

    .line 527
    :goto_2
    iput v3, p0, Landroid/support/design/widget/e;->G:F

    .line 528
    iput-boolean v2, p0, Landroid/support/design/widget/e;->H:Z

    .line 531
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_0

    .line 532
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/e;->G:F

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 533
    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/support/design/widget/e;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 535
    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/e;->F:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 538
    iget-object v0, p0, Landroid/support/design/widget/e;->x:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v4, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 540
    iget-object v1, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    iput-object v0, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    .line 542
    iget-object v0, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/design/widget/e;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/e;->z:Z

    goto :goto_0

    .line 509
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    .line 510
    iget v3, p0, Landroid/support/design/widget/e;->k:F

    .line 511
    iget-object v0, p0, Landroid/support/design/widget/e;->w:Landroid/graphics/Typeface;

    iget-object v5, p0, Landroid/support/design/widget/e;->v:Landroid/graphics/Typeface;

    if-eq v0, v5, :cond_9

    .line 512
    iget-object v0, p0, Landroid/support/design/widget/e;->v:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/design/widget/e;->w:Landroid/graphics/Typeface;

    move v0, v1

    .line 516
    :goto_4
    iget v5, p0, Landroid/support/design/widget/e;->k:F

    invoke-static {p1, v5}, Landroid/support/design/widget/e;->a(FF)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 518
    iput v6, p0, Landroid/support/design/widget/e;->F:F

    goto :goto_1

    .line 521
    :cond_6
    iget v5, p0, Landroid/support/design/widget/e;->k:F

    div-float v5, p1, v5

    iput v5, p0, Landroid/support/design/widget/e;->F:F

    goto :goto_1

    :cond_7
    move v0, v2

    .line 526
    goto :goto_2

    :cond_8
    move v1, v2

    .line 535
    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v4, v3

    move v3, v0

    move v0, v2

    goto/16 :goto_1
.end method

.method private g()V
    .locals 10

    .prologue
    const v9, 0x800007

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 343
    iget v5, p0, Landroid/support/design/widget/e;->G:F

    .line 346
    iget v0, p0, Landroid/support/design/widget/e;->l:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/e;->f(F)V

    .line 347
    iget-object v0, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v0, v2, v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 349
    :goto_0
    iget v6, p0, Landroid/support/design/widget/e;->j:I

    iget-boolean v2, p0, Landroid/support/design/widget/e;->z:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v6, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 351
    and-int/lit8 v6, v2, 0x70

    sparse-switch v6, :sswitch_data_0

    .line 360
    iget-object v6, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    iget-object v7, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 361
    div-float/2addr v6, v8

    iget-object v7, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 362
    iget-object v7, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Landroid/support/design/widget/e;->p:F

    .line 365
    :goto_2
    and-int/2addr v2, v9

    sparse-switch v2, :sswitch_data_1

    .line 374
    iget-object v0, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/e;->r:F

    .line 378
    :goto_3
    iget v0, p0, Landroid/support/design/widget/e;->k:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/e;->f(F)V

    .line 379
    iget-object v0, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    .line 381
    :cond_0
    iget v0, p0, Landroid/support/design/widget/e;->i:I

    iget-boolean v2, p0, Landroid/support/design/widget/e;->z:Z

    if-eqz v2, :cond_3

    :goto_4
    invoke-static {v0, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 383
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_2

    .line 392
    iget-object v2, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 393
    div-float/2addr v2, v8

    iget-object v3, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 394
    iget-object v3, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/e;->o:F

    .line 397
    :goto_5
    and-int/2addr v0, v9

    sparse-switch v0, :sswitch_data_3

    .line 406
    iget-object v0, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/e;->q:F

    .line 411
    :goto_6
    invoke-direct {p0}, Landroid/support/design/widget/e;->i()V

    .line 413
    invoke-direct {p0, v5}, Landroid/support/design/widget/e;->e(F)V

    .line 414
    return-void

    :cond_1
    move v0, v1

    .line 347
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 349
    goto/16 :goto_1

    .line 353
    :sswitch_0
    iget-object v6, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iput v6, p0, Landroid/support/design/widget/e;->p:F

    goto :goto_2

    .line 356
    :sswitch_1
    iget-object v6, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Landroid/support/design/widget/e;->p:F

    goto :goto_2

    .line 367
    :sswitch_2
    iget-object v2, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v8

    sub-float v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/e;->r:F

    goto :goto_3

    .line 370
    :sswitch_3
    iget-object v2, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/e;->r:F

    goto/16 :goto_3

    :cond_3
    move v3, v4

    .line 381
    goto :goto_4

    .line 385
    :sswitch_4
    iget-object v2, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/e;->o:F

    goto :goto_5

    .line 388
    :sswitch_5
    iget-object v2, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/e;->o:F

    goto :goto_5

    .line 399
    :sswitch_6
    iget-object v0, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/e;->q:F

    goto :goto_6

    .line 402
    :sswitch_7
    iget-object v0, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/e;->q:F

    goto :goto_6

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 365
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    .line 383
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 397
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 548
    iget-object v0, p0, Landroid/support/design/widget/e;->B:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-direct {p0, v4}, Landroid/support/design/widget/e;->c(F)V

    .line 554
    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e;->D:F

    .line 555
    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e;->E:F

    .line 557
    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 558
    iget v1, p0, Landroid/support/design/widget/e;->E:F

    iget v3, p0, Landroid/support/design/widget/e;->D:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 560
    if-lez v0, :cond_0

    if-lez v5, :cond_0

    .line 564
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/e;->B:Landroid/graphics/Bitmap;

    .line 566
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/design/widget/e;->B:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 567
    iget-object v1, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 569
    iget-object v0, p0, Landroid/support/design/widget/e;->C:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/e;->C:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Landroid/support/design/widget/e;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Landroid/support/design/widget/e;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/e;->B:Landroid/graphics/Bitmap;

    .line 607
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/e;->d:Z

    .line 172
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(F)V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/support/design/widget/e;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 127
    iput p1, p0, Landroid/support/design/widget/e;->k:F

    .line 128
    invoke-virtual {p0}, Landroid/support/design/widget/e;->e()V

    .line 130
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Landroid/support/design/widget/e;->n:I

    if-eq v0, p1, :cond_0

    .line 141
    iput p1, p0, Landroid/support/design/widget/e;->n:I

    .line 142
    invoke-virtual {p0}, Landroid/support/design/widget/e;->e()V

    .line 144
    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/e;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/support/design/widget/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/e;->H:Z

    .line 157
    invoke-virtual {p0}, Landroid/support/design/widget/e;->a()V

    .line 159
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 430
    iget-object v0, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/widget/e;->d:Z

    if-eqz v0, :cond_2

    .line 431
    iget v4, p0, Landroid/support/design/widget/e;->s:F

    .line 432
    iget v5, p0, Landroid/support/design/widget/e;->t:F

    .line 434
    iget-boolean v0, p0, Landroid/support/design/widget/e;->A:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/e;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 438
    :goto_0
    if-eqz v1, :cond_4

    .line 439
    iget v0, p0, Landroid/support/design/widget/e;->D:F

    iget v3, p0, Landroid/support/design/widget/e;->F:F

    mul-float/2addr v0, v3

    .line 440
    iget v3, p0, Landroid/support/design/widget/e;->E:F

    iget v6, p0, Landroid/support/design/widget/e;->F:F

    mul-float/2addr v3, v6

    .line 452
    :goto_1
    if-eqz v1, :cond_0

    .line 453
    add-float/2addr v5, v0

    .line 456
    :cond_0
    iget v0, p0, Landroid/support/design/widget/e;->F:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    .line 457
    iget v0, p0, Landroid/support/design/widget/e;->F:F

    iget v3, p0, Landroid/support/design/widget/e;->F:F

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 460
    :cond_1
    if-eqz v1, :cond_5

    .line 462
    iget-object v0, p0, Landroid/support/design/widget/e;->B:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/design/widget/e;->C:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 468
    :cond_2
    :goto_2
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 469
    return-void

    :cond_3
    move v1, v2

    .line 434
    goto :goto_0

    .line 442
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iget v3, p0, Landroid/support/design/widget/e;->F:F

    mul-float/2addr v0, v3

    .line 443
    iget-object v3, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget v6, p0, Landroid/support/design/widget/e;->F:F

    mul-float/2addr v3, v6

    goto :goto_1

    .line 464
    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/e;->I:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method a(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Landroid/support/design/widget/e;->v:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/widget/e;->u:Landroid/graphics/Typeface;

    .line 272
    invoke-virtual {p0}, Landroid/support/design/widget/e;->e()V

    .line 273
    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 590
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->x:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/e;->x:Ljava/lang/CharSequence;

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/e;->y:Ljava/lang/CharSequence;

    .line 593
    invoke-direct {p0}, Landroid/support/design/widget/e;->i()V

    .line 594
    invoke-virtual {p0}, Landroid/support/design/widget/e;->e()V

    .line 596
    :cond_1
    return-void
.end method

.method b()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/design/widget/e;->u:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->u:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method b(F)V
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/o;->a(FFF)F

    move-result v0

    .line 293
    iget v1, p0, Landroid/support/design/widget/e;->e:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 294
    iput v0, p0, Landroid/support/design/widget/e;->e:F

    .line 295
    invoke-direct {p0}, Landroid/support/design/widget/e;->f()V

    .line 297
    :cond_0
    return-void
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/support/design/widget/e;->m:I

    if-eq v0, p1, :cond_0

    .line 148
    iput p1, p0, Landroid/support/design/widget/e;->m:I

    .line 149
    invoke-virtual {p0}, Landroid/support/design/widget/e;->e()V

    .line 151
    :cond_0
    return-void
.end method

.method b(IIII)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/e;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/design/widget/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/e;->H:Z

    .line 165
    invoke-virtual {p0}, Landroid/support/design/widget/e;->a()V

    .line 167
    :cond_0
    return-void
.end method

.method c()F
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Landroid/support/design/widget/e;->e:F

    return v0
.end method

.method c(I)V
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Landroid/support/design/widget/e;->i:I

    if-eq v0, p1, :cond_0

    .line 176
    iput p1, p0, Landroid/support/design/widget/e;->i:I

    .line 177
    invoke-virtual {p0}, Landroid/support/design/widget/e;->e()V

    .line 179
    :cond_0
    return-void
.end method

.method d()F
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Landroid/support/design/widget/e;->l:F

    return v0
.end method

.method d(I)V
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Landroid/support/design/widget/e;->j:I

    if-eq v0, p1, :cond_0

    .line 187
    iput p1, p0, Landroid/support/design/widget/e;->j:I

    .line 188
    invoke-virtual {p0}, Landroid/support/design/widget/e;->e()V

    .line 190
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Landroid/support/design/widget/e;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 579
    invoke-direct {p0}, Landroid/support/design/widget/e;->g()V

    .line 580
    invoke-direct {p0}, Landroid/support/design/widget/e;->f()V

    .line 582
    :cond_0
    return-void
.end method
