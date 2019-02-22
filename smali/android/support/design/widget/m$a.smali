.class Landroid/support/design/widget/m$a;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/m;

.field private final b:Landroid/support/design/widget/CoordinatorLayout;

.field private final c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/design/widget/m;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 292
    iput-object p1, p0, Landroid/support/design/widget/m$a;->a:Landroid/support/design/widget/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Landroid/support/design/widget/m$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    .line 294
    iput-object p3, p0, Landroid/support/design/widget/m$a;->c:Landroid/view/View;

    .line 295
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/design/widget/m$a;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/m$a;->a:Landroid/support/design/widget/m;

    invoke-static {v0}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/m;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Landroid/support/design/widget/m$a;->a:Landroid/support/design/widget/m;

    invoke-static {v0}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/m;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Landroid/support/design/widget/m$a;->a:Landroid/support/design/widget/m;

    iget-object v1, p0, Landroid/support/design/widget/m$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/m$a;->c:Landroid/view/View;

    iget-object v3, p0, Landroid/support/design/widget/m$a;->a:Landroid/support/design/widget/m;

    invoke-static {v3}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/m;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/m;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 303
    iget-object v0, p0, Landroid/support/design/widget/m$a;->c:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/m$a;->a:Landroid/support/design/widget/m;

    iget-object v1, p0, Landroid/support/design/widget/m$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/m$a;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    goto :goto_0
.end method
