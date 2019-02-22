.class Landroid/support/design/widget/SwipeDismissBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/SwipeDismissBehavior;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 1

    .prologue
    .line 213
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->c:I

    return-void
.end method

.method private a(Landroid/view/View;F)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 272
    cmpl-float v0, p2, v5

    if-eqz v0, :cond_6

    .line 273
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 276
    :goto_0
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 294
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 273
    goto :goto_0

    .line 279
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v3

    if-nez v3, :cond_4

    .line 282
    if-eqz v0, :cond_3

    cmpg-float v0, p2, v5

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_3
    cmpl-float v0, p2, v5

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 283
    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v3

    if-ne v3, v1, :cond_7

    .line 286
    if-eqz v0, :cond_5

    cmpl-float v0, p2, v5

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_5
    cmpg-float v0, p2, v5

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 289
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    sub-int/2addr v0, v3

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v4}, Landroid/support/design/widget/SwipeDismissBehavior;->d(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 291
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v2

    .line 294
    goto :goto_1
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 304
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 308
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v2

    if-nez v2, :cond_2

    .line 309
    if-eqz v0, :cond_1

    .line 310
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 311
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 329
    :goto_1
    invoke-static {v1, p2, v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(III)I

    move-result v0

    return v0

    .line 304
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_1
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 314
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 316
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 317
    if-eqz v0, :cond_3

    .line 318
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 319
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 321
    :cond_3
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 322
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    goto :goto_1

    .line 325
    :cond_4
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 326
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 227
    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->c:I

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 236
    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$a;->a(I)V

    .line 243
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 339
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->e(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 341
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->f(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 344
    int-to-float v2, p2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    .line 345
    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 353
    :goto_0
    return-void

    .line 346
    :cond_0
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    .line 347
    invoke-static {p1, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 350
    :cond_1
    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/SwipeDismissBehavior;->a(FFF)F

    move-result v0

    .line 351
    sub-float v0, v4, v0

    invoke-static {v5, v0, v4}, Landroid/support/design/widget/SwipeDismissBehavior;->b(FFF)F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5

    .prologue
    .line 248
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->c:I

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 252
    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior$1;->a(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    sub-int/2addr v0, v1

    .line 258
    :goto_0
    const/4 v1, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    .line 264
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->b(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    new-instance v1, Landroid/support/design/widget/SwipeDismissBehavior$b;

    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {v1, v2, p1, v0}, Landroid/support/design/widget/SwipeDismissBehavior$b;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 269
    :cond_0
    :goto_2
    return-void

    .line 255
    :cond_1
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 261
    :cond_2
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    goto :goto_1

    .line 266
    :cond_3
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$a;->a(Landroid/view/View;)V

    goto :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
