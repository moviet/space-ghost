.class public Lcom/fineclouds/spaceghostq1/common/view/b;
.super Ljava/lang/Object;
.source "PrivacyLoadingDialog.java"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0900be

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    .line 30
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 33
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 37
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    const v1, 0x7f040045

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 38
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    const v1, 0x7f0d00fa

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->b:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f02004b

    invoke-static {p1, v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    const v1, 0x7f0d00f9

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/fineclouds/spaceghostq1/common/view/b;->b(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/common/view/b;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 52
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 54
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 57
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v2, "StatusBarView"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    .line 61
    invoke-static {p1}, Lcom/fineclouds/spaceghostq1/common/a/g;->a(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 63
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 82
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 84
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    .line 87
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 92
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 96
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/b;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method
