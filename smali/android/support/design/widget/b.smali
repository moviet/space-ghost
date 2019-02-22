.class public Landroid/support/design/widget/b;
.super Landroid/support/v7/app/j;
.source "BottomSheetDialog.java"


# instance fields
.field private a:Landroid/support/design/widget/BottomSheetBehavior$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p1, p2}, Landroid/support/design/widget/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/j;-><init>(Landroid/content/Context;I)V

    .line 133
    new-instance v0, Landroid/support/design/widget/b$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/b$2;-><init>(Landroid/support/design/widget/b;)V

    iput-object v0, p0, Landroid/support/design/widget/b;->a:Landroid/support/design/widget/BottomSheetBehavior$a;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/b;->a(I)Z

    .line 47
    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/design/R$attr;->bottomSheetDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 130
    :cond_0
    :goto_0
    return p1

    .line 127
    :cond_1
    sget p1, Landroid/support/design/R$style;->Theme_Design_Light_BottomSheetDialog:I

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/support/design/widget/b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$layout;->design_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    .line 80
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/support/design/widget/b;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 83
    :cond_0
    sget v1, Landroid/support/design/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 84
    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/b;->a:Landroid/support/design/widget/BottomSheetBehavior$a;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/support/design/widget/BottomSheetBehavior$a;)V

    .line 85
    if-nez p3, :cond_2

    .line 86
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    :goto_0
    invoke-direct {p0}, Landroid/support/design/widget/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget v1, Landroid/support/design/R$id;->touch_outside:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/b$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/b$1;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_1
    return-object v0

    .line 88
    :cond_2
    invoke-virtual {v1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 106
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 111
    invoke-virtual {p0}, Landroid/support/design/widget/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101035b

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 115
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroid/support/design/widget/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 65
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v0}, Landroid/support/design/widget/b;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/j;->setContentView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/support/design/widget/b;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/j;->setContentView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/design/widget/b;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/j;->setContentView(Landroid/view/View;)V

    .line 75
    return-void
.end method
