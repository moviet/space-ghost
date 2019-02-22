.class Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$2;
.super Ljava/lang/Object;
.source "AnimTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 36
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$2;->a:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 50
    const-string v0, "AnimTextView"

    const-string v1, "onAnimationCancel: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 44
    const-string v0, "AnimTextView"

    const-string v1, "onAnimationEnd: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$2;->a:Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->b(Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;)Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView$a;->a()V

    .line 46
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 55
    const-string v0, "AnimTextView"

    const-string v1, "onAnimationRepeat: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 39
    const-string v0, "AnimTextView"

    const-string v1, "onAnimationStart: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
