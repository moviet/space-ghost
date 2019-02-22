.class Landroid/support/design/widget/i$1;
.super Landroid/support/design/widget/a$a;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/i;->a(Landroid/support/design/widget/k$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/k$a;

.field final synthetic c:Landroid/support/design/widget/i;


# direct methods
.method constructor <init>(Landroid/support/design/widget/i;ZLandroid/support/design/widget/k$a;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Landroid/support/design/widget/i$1;->c:Landroid/support/design/widget/i;

    iput-boolean p2, p0, Landroid/support/design/widget/i$1;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/i$1;->b:Landroid/support/design/widget/k$a;

    invoke-direct {p0}, Landroid/support/design/widget/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/design/widget/i$1;->c:Landroid/support/design/widget/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/i;Z)Z

    .line 179
    iget-object v0, p0, Landroid/support/design/widget/i$1;->c:Landroid/support/design/widget/i;

    iget-object v0, v0, Landroid/support/design/widget/i;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/16 v1, 0x8

    iget-boolean v2, p0, Landroid/support/design/widget/i$1;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    .line 180
    iget-object v0, p0, Landroid/support/design/widget/i$1;->b:Landroid/support/design/widget/k$a;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/design/widget/i$1;->b:Landroid/support/design/widget/k$a;

    invoke-interface {v0}, Landroid/support/design/widget/k$a;->b()V

    .line 183
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/widget/i$1;->c:Landroid/support/design/widget/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/i;Z)Z

    .line 174
    return-void
.end method
