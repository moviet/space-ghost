.class public Lcom/fineclouds/spaceghostq1/dual/a/b;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "RvItemTouchHelperCallback.java"


# instance fields
.field private final a:Lcom/fineclouds/spaceghostq1/dual/a/a;


# direct methods
.method public constructor <init>(Lcom/fineclouds/spaceghostq1/dual/a/a;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/a/b;->a:Lcom/fineclouds/spaceghostq1/dual/a/a;

    .line 20
    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 90
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 91
    instance-of v0, p2, Lcom/fineclouds/spaceghostq1/dual/a/c;

    if-eqz v0, :cond_0

    .line 93
    check-cast p2, Lcom/fineclouds/spaceghostq1/dual/a/c;

    .line 94
    invoke-interface {p2}, Lcom/fineclouds/spaceghostq1/dual/a/c;->b()V

    .line 96
    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 38
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/dual/a/b;->makeMovementFlags(II)I

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/dual/a/b;->makeMovementFlags(II)I

    move-result v0

    goto :goto_0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 67
    iget-object v1, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 68
    iget-object v0, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    goto :goto_0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/a/b;->a:Lcom/fineclouds/spaceghostq1/dual/a/a;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/fineclouds/spaceghostq1/dual/a/a;->a(II)V

    .line 53
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 77
    if-eqz p2, :cond_0

    .line 78
    instance-of v0, p1, Lcom/fineclouds/spaceghostq1/dual/a/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/fineclouds/spaceghostq1/dual/a/c;

    .line 81
    invoke-interface {v0}, Lcom/fineclouds/spaceghostq1/dual/a/c;->a()V

    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 85
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/a/b;->a:Lcom/fineclouds/spaceghostq1/dual/a/a;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fineclouds/spaceghostq1/dual/a/a;->a(I)V

    .line 60
    return-void
.end method
