.class Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;
.super Lcom/fineclouds/spaceghostq1/common/a/a/b/b$e;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->a(Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 381
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->d:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->a:Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;

    iput-object p3, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$e;-><init>(Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 388
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 389
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 390
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 391
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->d:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->a:Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 392
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->d:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->f(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->a:Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->d:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->e(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;)V

    .line 394
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->d:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$6;->a:Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 384
    return-void
.end method
