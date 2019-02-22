.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$SavedState;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Z

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/widget/LinearLayout;

.field private f:I

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Z

.field private k:Ljava/lang/CharSequence;

.field private l:Z

.field private m:Landroid/widget/TextView;

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Landroid/content/res/ColorStateList;

.field private s:Landroid/content/res/ColorStateList;

.field private final t:Landroid/support/design/widget/e;

.field private u:Z

.field private v:Landroid/support/design/widget/v;

.field private w:Z


# direct methods
.method private a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 286
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 288
    :goto_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/graphics/Paint;

    .line 292
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {v1}, Landroid/support/design/widget/e;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 293
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {v1}, Landroid/support/design/widget/e;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 294
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 299
    :goto_1
    return-object p1

    .line 286
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    goto :goto_0

    .line 296
    :cond_2
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {v0}, Landroid/support/design/widget/e;->c()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 964
    :goto_0
    return-void

    .line 951
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    if-nez v0, :cond_1

    .line 952
    invoke-static {}, Landroid/support/design/widget/ac;->a()Landroid/support/design/widget/v;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    .line 953
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    sget-object v1, Landroid/support/design/widget/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/v;->a(Landroid/view/animation/Interpolator;)V

    .line 954
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/v;->a(I)V

    .line 955
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$4;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$4;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/v;->a(Landroid/support/design/widget/v$a;)V

    .line 962
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {v1}, Landroid/support/design/widget/e;->c()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/v;->a(FF)V

    .line 963
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    invoke-virtual {v0}, Landroid/support/design/widget/v;->a()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 681
    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    .line 682
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->n:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 683
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    .line 694
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    if-eq v3, v0, :cond_0

    .line 695
    invoke-direct {p0, v2}, Landroid/support/design/widget/TextInputLayout;->b(Z)V

    .line 696
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->d()V

    .line 698
    :cond_0
    return-void

    .line 686
    :cond_1
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->n:I

    if-le p1, v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    .line 687
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    if-eq v3, v0, :cond_2

    .line 688
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->p:I

    :goto_2
    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 691
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->n:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 686
    goto :goto_1

    .line 688
    :cond_4
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->o:I

    goto :goto_2
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 733
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 738
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_2

    .line 739
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/graphics/drawable/Drawable;)V

    .line 753
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    instance-of v0, p0, Landroid/support/v4/b/a/i;

    if-eqz v0, :cond_3

    .line 741
    check-cast p0, Landroid/support/v4/b/a/i;

    invoke-interface {p0}, Landroid/support/v4/b/a/i;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 742
    :cond_3
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_1

    .line 743
    check-cast p0, Landroid/graphics/drawable/DrawableContainer;

    .line 744
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 746
    if-eqz v0, :cond_1

    .line 747
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    .line 748
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/graphics/drawable/Drawable;)V

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;I)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;Z)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->b(Z)V

    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    instance-of v0, p1, Landroid/support/design/widget/t;

    if-nez v0, :cond_1

    .line 227
    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    .line 234
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/e;->a(Landroid/graphics/Typeface;)V

    .line 235
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/e;->a(F)V

    .line 237
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    .line 238
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    const v2, 0x800007

    and-int/2addr v2, v0

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Landroid/support/design/widget/e;->d(I)V

    .line 240
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/e;->c(I)V

    .line 243
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 260
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    .line 261
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    .line 265
    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 271
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    .line 275
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 276
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->c()V

    .line 280
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->b(Z)V

    .line 281
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 471
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    .line 444
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 445
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 449
    new-instance v0, Landroid/support/v4/widget/Space;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    .line 450
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 451
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->c()V

    .line 457
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 459
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    .line 460
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->l:Z

    return v0
.end method

.method private static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1004
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 1005
    if-ne v3, p1, :cond_1

    .line 1006
    const/4 v0, 0x1

    .line 1009
    :cond_0
    return v0

    .line 1004
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 304
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v3

    const v4, 0x101009c

    invoke-static {v3, v4}, Landroid/support/design/widget/TextInputLayout;->a([II)Z

    move-result v3

    .line 305
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->b()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 307
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/e;->b(I)V

    .line 311
    :cond_0
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 312
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/e;->a(I)V

    .line 319
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-eqz v1, :cond_7

    .line 321
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->c(Z)V

    .line 326
    :goto_3
    return-void

    :cond_3
    move v0, v2

    .line 303
    goto :goto_0

    :cond_4
    move v1, v2

    .line 305
    goto :goto_1

    .line 313
    :cond_5
    if-eqz v3, :cond_6

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_6

    .line 314
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/e;->a(I)V

    goto :goto_2

    .line 315
    :cond_6
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/e;->a(I)V

    goto :goto_2

    .line 324
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->d(Z)V

    goto :goto_3
.end method

.method static synthetic c(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/e;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 466
    return-void
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 351
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->c:Ljava/lang/CharSequence;

    .line 352
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->a(Ljava/lang/CharSequence;)V

    .line 353
    return-void
.end method

.method private c(Z)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 926
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    invoke-virtual {v0}, Landroid/support/design/widget/v;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    invoke-virtual {v0}, Landroid/support/design/widget/v;->e()V

    .line 929
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->u:Z

    if-eqz v0, :cond_1

    .line 930
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->a(F)V

    .line 934
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/e;->b(F)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 701
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->e()V

    .line 703
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 704
    if-nez v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 708
    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 712
    :cond_1
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 714
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 717
    :cond_2
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 719
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 725
    :cond_3
    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/graphics/drawable/Drawable;)V

    .line 726
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 937
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    invoke-virtual {v0}, Landroid/support/design/widget/v;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/v;

    invoke-virtual {v0}, Landroid/support/design/widget/v;->e()V

    .line 940
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->u:Z

    if-eqz v0, :cond_1

    .line 941
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->a(F)V

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/e;->b(F)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 756
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 757
    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 762
    if-eqz v0, :cond_0

    .line 766
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->w:Z

    if-nez v1, :cond_0

    .line 771
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 773
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_2

    .line 776
    check-cast v0, Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/design/widget/h;->a(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->w:Z

    .line 781
    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->w:Z

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->w:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->c(Ljava/lang/CharSequence;)V

    .line 346
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 348
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 485
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->g:Z

    if-eq v0, p1, :cond_1

    .line 486
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 490
    :cond_0
    if-eqz p1, :cond_2

    .line 491
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    .line 493
    :try_start_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 505
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;I)V

    .line 512
    :goto_1
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->g:Z

    .line 514
    :cond_1
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 497
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 499
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$color;->design_textinput_error_color_light:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 507
    :cond_2
    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    .line 508
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->d()V

    .line 509
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;)V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    goto :goto_1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 193
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 194
    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/EditText;)V

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p3}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 539
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->k:Ljava/lang/CharSequence;

    .line 546
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->g:Z

    if-nez v0, :cond_2

    .line 547
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 556
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    .line 557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    .line 560
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 562
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    if-eqz v0, :cond_6

    .line 563
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    if-eqz v3, :cond_4

    .line 567
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    .line 569
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 571
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v2, Landroid/support/design/widget/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v2, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v2, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 602
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->d()V

    .line 603
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->b(Z)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 557
    goto :goto_1

    .line 583
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 584
    if-eqz v3, :cond_7

    .line 585
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v2, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v2, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v2, p0, p1}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_2

    .line 597
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 890
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 892
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->a(Landroid/graphics/Canvas;)V

    .line 895
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 899
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 901
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 903
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 905
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/e;->a(IIII)V

    .line 911
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/e;->b(IIII)V

    .line 914
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/e;

    invoke-virtual {v0}, Landroid/support/design/widget/e;->e()V

    .line 916
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 842
    instance-of v0, p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 843
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 850
    :goto_0
    return-void

    .line 846
    :cond_0
    check-cast p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    .line 847
    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 848
    iget-object v0, p1, Landroid/support/design/widget/TextInputLayout$SavedState;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->b(Ljava/lang/CharSequence;)V

    .line 849
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->requestLayout()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 832
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 833
    new-instance v1, Landroid/support/design/widget/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 834
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->b()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->a:Ljava/lang/CharSequence;

    .line 837
    :cond_0
    return-object v1
.end method

.method public refreshDrawableState()V
    .locals 1

    .prologue
    .line 920
    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 922
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->b(Z)V

    .line 923
    return-void
.end method
