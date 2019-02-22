.class Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;
.super Lcom/fineclouds/spaceghostq1/common/a/a/b/b$e;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic e:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 303
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->e:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->b:I

    iput p4, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->c:I

    iput-object p5, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$e;-><init>(Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->b:I

    if-eqz v0, :cond_0

    .line 310
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 312
    :cond_0
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->c:I

    if-eqz v0, :cond_1

    .line 313
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 315
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 319
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->e:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 320
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->e:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->d(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->e:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->e(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;)V

    .line 322
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->e:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 306
    return-void
.end method
