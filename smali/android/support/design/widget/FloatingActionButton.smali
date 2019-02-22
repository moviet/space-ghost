.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/support/design/widget/VisibilityAwareImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$c;
    a = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButton$b;,
        Landroid/support/design/widget/FloatingActionButton$Behavior;,
        Landroid/support/design/widget/FloatingActionButton$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/ColorStateList;

.field private b:Landroid/graphics/PorterDuff$Mode;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Landroid/graphics/Rect;

.field private i:Landroid/support/v7/widget/AppCompatImageHelper;

.field private j:Landroid/support/design/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    .line 116
    invoke-static {p1}, Landroid/support/design/widget/u;->a(Landroid/content/Context;)V

    .line 118
    sget-object v0, Landroid/support/design/R$styleable;->FloatingActionButton:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    .line 122
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTintMode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    .line 124
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_rippleColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    .line 125
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->e:I

    .line 126
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    .line 127
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_elevation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 128
    sget v2, Landroid/support/design/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 130
    sget v3, Landroid/support/design/R$styleable;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/design/widget/FloatingActionButton;->g:Z

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    new-instance v0, Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroid/support/v7/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;Landroid/support/v7/widget/AppCompatDrawableManager;)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 134
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 136
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/design/R$dimen;->design_fab_image_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 137
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->a()I

    move-result v3

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:I

    .line 139
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    iget v6, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/design/widget/k;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 141
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/k;->c(F)V

    .line 142
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/k;->d(F)V

    .line 143
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/k;->e()V

    .line 144
    return-void
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 411
    .line 412
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 413
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 414
    sparse-switch v1, :sswitch_data_0

    .line 431
    :goto_0
    :sswitch_0
    return p0

    .line 424
    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 428
    goto :goto_0

    .line 414
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .prologue
    .line 435
    sparse-switch p0, :sswitch_data_0

    .line 447
    :goto_0
    return-object p1

    .line 437
    :sswitch_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 439
    :sswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 441
    :sswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 443
    :sswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 445
    :sswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 435
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method private a(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/k$a;
    .locals 1

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/design/widget/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;)V

    goto :goto_0
.end method

.method private a(Landroid/support/design/widget/FloatingActionButton$a;Z)V
    .locals 2

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/k$a;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/k;->b(Landroid/support/design/widget/k$a;Z)V

    .line 274
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton;->b(Landroid/support/design/widget/FloatingActionButton$a;Z)V

    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:I

    return v0
.end method

.method private b(Landroid/support/design/widget/FloatingActionButton$a;Z)V
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/k$a;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/k;->a(Landroid/support/design/widget/k$a;Z)V

    .line 296
    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton$a;Z)V

    return-void
.end method

.method private c()Landroid/support/design/widget/k;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->j:Landroid/support/design/widget/k;

    if-nez v0, :cond_0

    .line 662
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->d()Landroid/support/design/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->j:Landroid/support/design/widget/k;

    .line 664
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->j:Landroid/support/design/widget/k;

    return-object v0
.end method

.method static synthetic c(Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Z

    return v0
.end method

.method private d()Landroid/support/design/widget/k;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 668
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 669
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 670
    new-instance v0, Landroid/support/design/widget/l;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0, v2}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$1;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/l;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/q;)V

    .line 674
    :goto_0
    return-object v0

    .line 671
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 672
    new-instance v0, Landroid/support/design/widget/j;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0, v2}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$1;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/j;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/q;)V

    goto :goto_0

    .line 674
    :cond_1
    new-instance v0, Landroid/support/design/widget/i;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0, v2}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$1;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/i;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/q;)V

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 349
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:I

    packed-switch v0, :pswitch_data_0

    .line 354
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    .line 351
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 372
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->drawableStateChanged()V

    .line 373
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/k;->a([I)V

    .line 374
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 379
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->jumpDrawablesToCurrentState()V

    .line 380
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/k;->b()V

    .line 381
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->onAttachedToWindow()V

    .line 361
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/k;->f()V

    .line 362
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->onDetachedFromWindow()V

    .line 367
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/k;->g()V

    .line 368
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->a()I

    move-result v0

    .line 150
    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v1

    .line 151
    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v0

    .line 155
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 158
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 161
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .prologue
    .line 245
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 235
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .prologue
    .line 240
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 199
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    .line 200
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/k;->a(Landroid/content/res/ColorStateList;)V

    .line 202
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 228
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    .line 229
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->c()Landroid/support/design/widget/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/k;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 231
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 252
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method
