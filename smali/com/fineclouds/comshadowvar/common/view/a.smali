.class public Lcom/fineclouds/spaceghostq1/common/view/a;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    iput p1, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->a:I

    .line 18
    iput p2, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->b:I

    .line 19
    iput-boolean p3, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->c:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    .line 24
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 25
    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->a:I

    rem-int v1, v0, v1

    .line 27
    iget-boolean v2, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->c:Z

    if-eqz v2, :cond_2

    .line 28
    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->b:I

    iget v3, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->b:I

    mul-int/2addr v3, v1

    iget v4, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->a:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 29
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->a:I

    div-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 31
    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->a:I

    if-ge v0, v1, :cond_0

    .line 32
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 34
    :cond_0
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 42
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->b:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->a:I

    div-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 37
    iget v2, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->b:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->a:I

    div-int/2addr v1, v3

    sub-int v1, v2, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 38
    iget v1, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->a:I

    if-lt v0, v1, :cond_1

    .line 39
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/view/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method
