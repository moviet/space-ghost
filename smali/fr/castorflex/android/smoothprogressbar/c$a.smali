.class public Lfr/castorflex/android/smoothprogressbar/c$a;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/smoothprogressbar/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:I

.field private c:[I

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:F

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Lfr/castorflex/android/smoothprogressbar/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/castorflex/android/smoothprogressbar/c$a;-><init>(Landroid/content/Context;Z)V

    .line 630
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    invoke-direct {p0, p1, p2}, Lfr/castorflex/android/smoothprogressbar/c$a;->a(Landroid/content/Context;Z)V

    .line 634
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 659
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 660
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->a:Landroid/view/animation/Interpolator;

    .line 661
    if-nez p2, :cond_0

    .line 662
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$integer;->spb_default_sections_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->b:I

    .line 663
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$string;->spb_default_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->d:F

    .line 664
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$bool;->spb_default_reversed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->g:Z

    .line 665
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$bool;->spb_default_progressiveStart_activated:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->k:Z

    .line 666
    new-array v1, v2, [I

    sget v2, Lfr/castorflex/android/smoothprogressbar/R$color;->spb_default_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->c:[I

    .line 667
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$dimen;->spb_default_stroke_separator_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->j:I

    .line 668
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$dimen;->spb_default_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->i:F

    .line 678
    :goto_0
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->d:F

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->e:F

    .line 679
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->d:F

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->f:F

    .line 680
    iput-boolean v3, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->m:Z

    .line 681
    return-void

    .line 670
    :cond_0
    iput v4, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->b:I

    .line 671
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->d:F

    .line 672
    iput-boolean v3, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->g:Z

    .line 673
    iput-boolean v3, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->k:Z

    .line 674
    new-array v0, v2, [I

    const v1, -0xcc4a1b

    aput v1, v0, v3

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->c:[I

    .line 675
    iput v4, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->j:I

    .line 676
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->i:F

    goto :goto_0
.end method


# virtual methods
.method public a(F)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 1

    .prologue
    .line 713
    const-string v0, "Width"

    invoke-static {p1, v0}, Lfr/castorflex/android/smoothprogressbar/b;->a(FLjava/lang/String;)V

    .line 714
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->i:F

    .line 715
    return-object p0
.end method

.method public a(I)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 1

    .prologue
    .line 690
    const-string v0, "Sections count"

    invoke-static {p1, v0}, Lfr/castorflex/android/smoothprogressbar/b;->a(ILjava/lang/String;)V

    .line 691
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->b:I

    .line 692
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->n:Landroid/graphics/drawable/Drawable;

    .line 758
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 1

    .prologue
    .line 684
    const-string v0, "Interpolator"

    invoke-static {p1, v0}, Lfr/castorflex/android/smoothprogressbar/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->a:Landroid/view/animation/Interpolator;

    .line 686
    return-object p0
.end method

.method public a(Z)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 0

    .prologue
    .line 737
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->g:Z

    .line 738
    return-object p0
.end method

.method public a([I)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 0

    .prologue
    .line 707
    invoke-static {p1}, Lfr/castorflex/android/smoothprogressbar/b;->a([I)V

    .line 708
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->c:[I

    .line 709
    return-object p0
.end method

.method public a()Lfr/castorflex/android/smoothprogressbar/c;
    .locals 17

    .prologue
    .line 637
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->l:Z

    if-eqz v1, :cond_0

    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->c:[I

    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->i:F

    invoke-static {v1, v2}, Lfr/castorflex/android/smoothprogressbar/b;->a([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->n:Landroid/graphics/drawable/Drawable;

    .line 640
    :cond_0
    new-instance v1, Lfr/castorflex/android/smoothprogressbar/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->a:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->j:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->c:[I

    move-object/from16 v0, p0

    iget v6, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->i:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->d:F

    move-object/from16 v0, p0

    iget v8, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->e:F

    move-object/from16 v0, p0

    iget v9, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->f:F

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->g:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->h:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->o:Lfr/castorflex/android/smoothprogressbar/c$b;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->k:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->n:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lfr/castorflex/android/smoothprogressbar/c$a;->m:Z

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Lfr/castorflex/android/smoothprogressbar/c;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLfr/castorflex/android/smoothprogressbar/c$b;ZLandroid/graphics/drawable/Drawable;ZLfr/castorflex/android/smoothprogressbar/c$1;)V

    .line 655
    return-object v1
.end method

.method public b()Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->l:Z

    .line 763
    return-object p0
.end method

.method public b(F)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 0

    .prologue
    .line 719
    invoke-static {p1}, Lfr/castorflex/android/smoothprogressbar/b;->a(F)V

    .line 720
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->d:F

    .line 721
    return-object p0
.end method

.method public b(I)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 2

    .prologue
    .line 696
    int-to-float v0, p1

    const-string v1, "Separator length"

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/b;->a(FLjava/lang/String;)V

    .line 697
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->j:I

    .line 698
    return-object p0
.end method

.method public b(Z)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 0

    .prologue
    .line 742
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->h:Z

    .line 743
    return-object p0
.end method

.method public c(F)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 0

    .prologue
    .line 725
    invoke-static {p1}, Lfr/castorflex/android/smoothprogressbar/b;->a(F)V

    .line 726
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->e:F

    .line 727
    return-object p0
.end method

.method public c(I)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 2

    .prologue
    .line 702
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->c:[I

    .line 703
    return-object p0
.end method

.method public c(Z)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 0

    .prologue
    .line 747
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->k:Z

    .line 748
    return-object p0
.end method

.method public d(F)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 0

    .prologue
    .line 731
    invoke-static {p1}, Lfr/castorflex/android/smoothprogressbar/b;->a(F)V

    .line 732
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->f:F

    .line 733
    return-object p0
.end method

.method public d(Z)Lfr/castorflex/android/smoothprogressbar/c$a;
    .locals 0

    .prologue
    .line 771
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/c$a;->m:Z

    .line 772
    return-object p0
.end method
