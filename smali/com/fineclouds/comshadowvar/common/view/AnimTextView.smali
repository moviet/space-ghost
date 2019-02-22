.class public Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;
.super Landroid/widget/TextView;
.source "AnimTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$a;
    }
.end annotation


# instance fields
.field a:Landroid/animation/ValueAnimator;

.field b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field c:Landroid/animation/Animator$AnimatorListener;

.field private d:Ljava/lang/String;

.field private e:Landroid/text/SpannableString;

.field private f:[D

.field private g:[Lcom/fineclouds/spaceghostq1/common/a/d;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->i:Z

    .line 27
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->j:I

    .line 29
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$1;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$1;-><init>(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 36
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$2;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$2;-><init>(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->c:Landroid/animation/Animator$AnimatorListener;

    .line 70
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->b()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->i:Z

    .line 27
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->j:I

    .line 29
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$1;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$1;-><init>(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 36
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$2;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$2;-><init>(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->c:Landroid/animation/Animator$AnimatorListener;

    .line 74
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->b()V

    .line 75
    return-void
.end method

.method private a(D)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->i:Z

    .line 107
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->getCurrentTextColor()I

    move-result v2

    move v0, v1

    .line 108
    :goto_0
    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->g:[Lcom/fineclouds/spaceghostq1/common/a/d;

    aget-object v3, v3, v0

    .line 110
    iget-object v4, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->f:[D

    aget-wide v4, v4, v0

    add-double/2addr v4, p1

    invoke-direct {p0, v4, v5}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->b(D)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fineclouds/spaceghostq1/common/a/d;->a(I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->e:Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iput-boolean v1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->i:Z

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;D)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->h:Z

    return v0
.end method

.method private b(D)I
    .locals 7

    .prologue
    .line 145
    const-wide v0, 0x406fe00000000000L    # 255.0

    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;)Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->k:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$a;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->h:Z

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a:Landroid/animation/ValueAnimator;

    .line 79
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->c:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->j:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    return-void

    .line 78
    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method private b(I)V
    .locals 6

    .prologue
    .line 116
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->f:[D

    .line 117
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->f:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->f:[D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->i:Z

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->d:Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->e:Landroid/text/SpannableString;

    .line 125
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Lcom/fineclouds/spaceghostq1/common/a/d;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->g:[Lcom/fineclouds/spaceghostq1/common/a/d;

    .line 126
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 127
    new-instance v1, Lcom/fineclouds/spaceghostq1/common/a/d;

    invoke-direct {v1}, Lcom/fineclouds/spaceghostq1/common/a/d;-><init>()V

    .line 128
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->e:Landroid/text/SpannableString;

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x21

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 129
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->g:[Lcom/fineclouds/spaceghostq1/common/a/d;

    aput-object v1, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->b(I)V

    .line 132
    iget-boolean v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->h:Z

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a(D)V

    .line 134
    :cond_1
    return-void

    .line 132
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->h:Z

    .line 92
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 93
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 148
    iput p1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->j:I

    .line 149
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    return-void
.end method

.method public a(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$a;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->k:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$a;

    .line 66
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->h:Z

    .line 100
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a(D)V

    .line 101
    return-void

    .line 100
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 142
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->c()V

    .line 143
    return-void
.end method
