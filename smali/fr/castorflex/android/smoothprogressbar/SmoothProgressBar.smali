.class public Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SmoothProgressBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    sget v0, Lfr/castorflex/android/smoothprogressbar/R$attr;->spbStyle:I

    invoke-direct {p0, p1, p2, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21

    .prologue
    .line 35
    invoke-direct/range {p0 .. p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    new-instance v3, Lfr/castorflex/android/smoothprogressbar/c$a;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lfr/castorflex/android/smoothprogressbar/c$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v3}, Lfr/castorflex/android/smoothprogressbar/c$a;->a()Lfr/castorflex/android/smoothprogressbar/c;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 43
    sget-object v3, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar:[I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 46
    sget v4, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_color:I

    sget v6, Lfr/castorflex/android/smoothprogressbar/R$color;->spb_default_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 47
    sget v4, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_sections_count:I

    sget v7, Lfr/castorflex/android/smoothprogressbar/R$integer;->spb_default_sections_count:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 48
    sget v4, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_stroke_separator_length:I

    sget v8, Lfr/castorflex/android/smoothprogressbar/R$dimen;->spb_default_stroke_separator_length:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 49
    sget v4, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_stroke_width:I

    sget v9, Lfr/castorflex/android/smoothprogressbar/R$dimen;->spb_default_stroke_width:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 50
    sget v4, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_speed:I

    sget v10, Lfr/castorflex/android/smoothprogressbar/R$string;->spb_default_speed:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 51
    sget v4, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStart_speed:I

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 52
    sget v4, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStop_speed:I

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 53
    sget v4, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_interpolator:I

    const/4 v13, -0x1

    invoke-virtual {v3, v4, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 54
    sget v13, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_reversed:I

    sget v14, Lfr/castorflex/android/smoothprogressbar/R$bool;->spb_default_reversed:I

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 55
    sget v14, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_mirror_mode:I

    sget v15, Lfr/castorflex/android/smoothprogressbar/R$bool;->spb_default_mirror_mode:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 56
    sget v15, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_colors:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 57
    sget v16, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    sget v17, Lfr/castorflex/android/smoothprogressbar/R$bool;->spb_default_progressiveStart_activated:I

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 58
    sget v17, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_background:I

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 59
    sget v18, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_generate_background_with_colors:I

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 60
    sget v19, Lfr/castorflex/android/smoothprogressbar/R$styleable;->SmoothProgressBar_spb_gradients:I

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 61
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    const/4 v3, 0x0

    .line 65
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_1

    .line 66
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 68
    :cond_1
    if-nez v3, :cond_6

    .line 69
    packed-switch v4, :pswitch_data_0

    .line 81
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v4, v3

    .line 85
    :goto_1
    const/4 v3, 0x0

    .line 87
    if-eqz v15, :cond_2

    .line 88
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 91
    :cond_2
    new-instance v5, Lfr/castorflex/android/smoothprogressbar/c$a;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lfr/castorflex/android/smoothprogressbar/c$a;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v5, v10}, Lfr/castorflex/android/smoothprogressbar/c$a;->b(F)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v5

    .line 93
    invoke-virtual {v5, v11}, Lfr/castorflex/android/smoothprogressbar/c$a;->c(F)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v5

    .line 94
    invoke-virtual {v5, v12}, Lfr/castorflex/android/smoothprogressbar/c$a;->d(F)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v5

    .line 95
    invoke-virtual {v5, v4}, Lfr/castorflex/android/smoothprogressbar/c$a;->a(Landroid/view/animation/Interpolator;)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v4

    .line 96
    invoke-virtual {v4, v7}, Lfr/castorflex/android/smoothprogressbar/c$a;->a(I)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v4

    .line 97
    invoke-virtual {v4, v8}, Lfr/castorflex/android/smoothprogressbar/c$a;->b(I)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v4

    .line 98
    invoke-virtual {v4, v9}, Lfr/castorflex/android/smoothprogressbar/c$a;->a(F)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v13}, Lfr/castorflex/android/smoothprogressbar/c$a;->a(Z)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v14}, Lfr/castorflex/android/smoothprogressbar/c$a;->b(Z)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v4

    .line 101
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lfr/castorflex/android/smoothprogressbar/c$a;->c(Z)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v4

    .line 102
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lfr/castorflex/android/smoothprogressbar/c$a;->d(Z)Lfr/castorflex/android/smoothprogressbar/c$a;

    move-result-object v4

    .line 104
    if-eqz v17, :cond_3

    .line 105
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lfr/castorflex/android/smoothprogressbar/c$a;->a(Landroid/graphics/drawable/Drawable;)Lfr/castorflex/android/smoothprogressbar/c$a;

    .line 108
    :cond_3
    if-eqz v18, :cond_4

    .line 109
    invoke-virtual {v4}, Lfr/castorflex/android/smoothprogressbar/c$a;->b()Lfr/castorflex/android/smoothprogressbar/c$a;

    .line 112
    :cond_4
    if-eqz v3, :cond_5

    array-length v5, v3

    if-lez v5, :cond_5

    .line 113
    invoke-virtual {v4, v3}, Lfr/castorflex/android/smoothprogressbar/c$a;->a([I)Lfr/castorflex/android/smoothprogressbar/c$a;

    .line 117
    :goto_2
    invoke-virtual {v4}, Lfr/castorflex/android/smoothprogressbar/c$a;->a()Lfr/castorflex/android/smoothprogressbar/c;

    move-result-object v3

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 71
    :pswitch_0
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v4, v3

    .line 72
    goto :goto_1

    .line 74
    :pswitch_1
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object v4, v3

    .line 75
    goto :goto_1

    .line 77
    :pswitch_2
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v4, v3

    .line 78
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {v4, v6}, Lfr/castorflex/android/smoothprogressbar/c$a;->c(I)Lfr/castorflex/android/smoothprogressbar/c$a;

    goto :goto_2

    :cond_6
    move-object v4, v3

    goto :goto_1

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lfr/castorflex/android/smoothprogressbar/c;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lfr/castorflex/android/smoothprogressbar/c;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 219
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    instance-of v1, v0, Lfr/castorflex/android/smoothprogressbar/c;

    if-eqz v1, :cond_0

    .line 221
    check-cast v0, Lfr/castorflex/android/smoothprogressbar/c;

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/c;->a(Landroid/view/animation/Interpolator;)V

    .line 222
    :cond_0
    return-void
.end method
