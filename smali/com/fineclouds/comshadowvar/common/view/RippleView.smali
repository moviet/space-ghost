.class public Lcom/fineclouds/spaceghostq1/common/view/RippleView;
.super Landroid/widget/RelativeLayout;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fineclouds/spaceghostq1/common/view/RippleView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/os/Handler;

.field private g:F

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:I

.field private o:F

.field private p:Landroid/view/animation/ScaleAnimation;

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Integer;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Bitmap;

.field private v:I

.field private w:I

.field private final x:Ljava/lang/Runnable;

.field private y:Lcom/fineclouds/spaceghostq1/common/view/RippleView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    .line 61
    const/16 v0, 0x5a

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->g:F

    .line 64
    iput-boolean v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->h:Z

    .line 65
    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    .line 66
    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->j:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->k:I

    .line 68
    iput v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->l:F

    .line 69
    iput v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->m:F

    .line 81
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/view/RippleView$1;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/common/view/RippleView$1;-><init>(Lcom/fineclouds/spaceghostq1/common/view/RippleView;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->x:Ljava/lang/Runnable;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    .line 61
    const/16 v0, 0x5a

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->g:F

    .line 64
    iput-boolean v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->h:Z

    .line 65
    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    .line 66
    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->j:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->k:I

    .line 68
    iput v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->l:F

    .line 69
    iput v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->m:F

    .line 81
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/view/RippleView$1;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/common/view/RippleView$1;-><init>(Lcom/fineclouds/spaceghostq1/common/view/RippleView;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->x:Ljava/lang/Runnable;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    .line 61
    const/16 v0, 0x5a

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->g:F

    .line 64
    iput-boolean v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->h:Z

    .line 65
    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    .line 66
    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->j:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->k:I

    .line 68
    iput v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->l:F

    .line 69
    iput v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->m:F

    .line 81
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/view/RippleView$1;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/common/view/RippleView$1;-><init>(Lcom/fineclouds/spaceghostq1/common/view/RippleView;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->x:Ljava/lang/Runnable;

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 278
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 280
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 281
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->l:F

    int-to-float v5, p1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->m:F

    int-to-float v6, p1

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->l:F

    int-to-float v7, p1

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->m:F

    int-to-float v8, p1

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 284
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 285
    iget v4, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->l:F

    iget v5, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->m:F

    int-to-float v6, p1

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 287
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 288
    iget-object v4, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 290
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-object v0, Lcom/fineclouds/spaceghostq1/R$styleable;->RippleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->v:I

    .line 116
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->s:Ljava/lang/Integer;

    .line 117
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->q:Ljava/lang/Boolean;

    .line 118
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->r:Ljava/lang/Boolean;

    .line 119
    const/4 v1, 0x2

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    .line 120
    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    .line 121
    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    .line 122
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->w:I

    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->f:Landroid/os/Handler;

    .line 124
    const/16 v1, 0x9

    const v2, 0x3f83d70a    # 1.03f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->o:F

    .line 125
    const/4 v1, 0x3

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->n:I

    .line 126
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->setWillNotDraw(Z)V

    .line 153
    invoke-virtual {p0, v4}, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->setDrawingCacheEnabled(Z)V

    .line 154
    invoke-virtual {p0, v4}, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->setClickable(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 159
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 160
    iget-boolean v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->h:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 163
    iput-boolean v3, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->h:Z

    .line 164
    iput v3, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    .line 165
    iput v6, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->k:I

    .line 166
    iput v3, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->j:I

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->invalidate()V

    .line 173
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->y:Lcom/fineclouds/spaceghostq1/common/view/RippleView$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->y:Lcom/fineclouds/spaceghostq1/common/view/RippleView$a;

    invoke-interface {v0, p0}, Lcom/fineclouds/spaceghostq1/common/view/RippleView$a;->a(Lcom/fineclouds/spaceghostq1/common/view/RippleView;)V

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->x:Ljava/lang/Runnable;

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    if-nez v0, :cond_3

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    :cond_3
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->l:F

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->m:F

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->g:F

    iget v3, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    int-to-float v3, v3

    iget v4, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    const-string v1, "#ffff4444"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->u:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 187
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->k:I

    if-ne v0, v6, :cond_4

    .line 188
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->k:I

    .line 190
    :cond_4
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->j:I

    .line 191
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->g:F

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->j:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->k:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 199
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->j:I

    int-to-float v3, v3

    iget v4, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->k:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 207
    :goto_1
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    goto/16 :goto_0

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->i:I

    int-to-float v3, v3

    iget v4, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->c:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->d:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 214
    iput p1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->a:I

    .line 215
    iput p2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->b:I

    .line 217
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->o:F

    iget v4, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->o:F

    div-int/lit8 v3, p1, 0x2

    int-to-float v5, v3

    div-int/lit8 v3, p2, 0x2

    int-to-float v6, v3

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->p:Landroid/view/animation/ScaleAnimation;

    .line 218
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->p:Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->n:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 219
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->p:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 220
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/RippleView;->p:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 221
    return-void
.end method
