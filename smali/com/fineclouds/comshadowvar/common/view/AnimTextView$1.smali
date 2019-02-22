.class Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$1;
.super Ljava/lang/Object;
.source "AnimTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$1;->a:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 33
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$1;->a:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$1;->a:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;D)V

    .line 34
    return-void

    .line 33
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    float-to-double v0, v0

    goto :goto_0
.end method
