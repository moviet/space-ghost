.class Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;
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

.field final synthetic c:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 361
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->c:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->a:Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;

    iput-object p3, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$e;-><init>(Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 368
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 369
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 370
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 371
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->c:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->a:Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 372
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->c:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->f(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->a:Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->c:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->e(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;)V

    .line 374
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->c:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$5;->a:Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 364
    return-void
.end method
