.class Landroid/support/design/widget/j$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/j;->b(Landroid/support/design/widget/k$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/k$a;

.field final synthetic c:Landroid/support/design/widget/j;


# direct methods
.method constructor <init>(Landroid/support/design/widget/j;ZLandroid/support/design/widget/k$a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Landroid/support/design/widget/j$2;->c:Landroid/support/design/widget/j;

    iput-boolean p2, p0, Landroid/support/design/widget/j$2;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/j$2;->b:Landroid/support/design/widget/k$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/design/widget/j$2;->b:Landroid/support/design/widget/k$a;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/support/design/widget/j$2;->b:Landroid/support/design/widget/k$a;

    invoke-interface {v0}, Landroid/support/design/widget/k$a;->a()V

    .line 126
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/design/widget/j$2;->c:Landroid/support/design/widget/j;

    iget-object v0, v0, Landroid/support/design/widget/j;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/j$2;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    .line 119
    return-void
.end method