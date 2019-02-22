.class Landroid/support/design/widget/i$2;
.super Landroid/support/design/widget/a$a;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/i;->b(Landroid/support/design/widget/k$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/k$a;

.field final synthetic b:Landroid/support/design/widget/i;


# direct methods
.method constructor <init>(Landroid/support/design/widget/i;Landroid/support/design/widget/k$a;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Landroid/support/design/widget/i$2;->b:Landroid/support/design/widget/i;

    iput-object p2, p0, Landroid/support/design/widget/i$2;->a:Landroid/support/design/widget/k$a;

    invoke-direct {p0}, Landroid/support/design/widget/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/design/widget/i$2;->a:Landroid/support/design/widget/k$a;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/support/design/widget/i$2;->a:Landroid/support/design/widget/k$a;

    invoke-interface {v0}, Landroid/support/design/widget/k$a;->a()V

    .line 205
    :cond_0
    return-void
.end method
