.class Landroid/support/design/widget/ad;
.super Ljava/lang/Object;
.source "ViewUtilsLollipop.java"


# direct methods
.method static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 26
    return-void
.end method
