.class public Lcom/fineclouds/spaceghostq1/common/a/a/b/b$c;
.super Lcom/fineclouds/spaceghostq1/common/a/a/b/b$e;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/common/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;


# direct methods
.method public constructor <init>(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 675
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$c;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$e;-><init>(Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;)V

    .line 676
    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$c;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 677
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 684
    invoke-static {p1}, Lcom/fineclouds/spaceghostq1/common/a/a/b/d;->a(Landroid/view/View;)V

    .line 685
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 688
    invoke-static {p1}, Lcom/fineclouds/spaceghostq1/common/a/a/b/d;->a(Landroid/view/View;)V

    .line 689
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$c;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$c;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 690
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$c;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iget-object v0, v0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$c;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 691
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$c;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->e(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;)V

    .line 692
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$c;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$c;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 681
    return-void
.end method
