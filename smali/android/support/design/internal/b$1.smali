.class Landroid/support/design/internal/b$1;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/b;


# direct methods
.method constructor <init>(Landroid/support/design/internal/b;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    check-cast p1, Landroid/support/design/internal/NavigationMenuItemView;

    .line 316
    iget-object v0, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/b;->a(Z)V

    .line 317
    invoke-virtual {p1}, Landroid/support/design/internal/NavigationMenuItemView;->b()Landroid/support/v7/view/menu/h;

    move-result-object v0

    .line 318
    iget-object v1, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->a(Landroid/support/design/internal/b;)Landroid/support/v7/view/menu/f;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/view/menu/f;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/l;I)Z

    move-result v1

    .line 319
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->b(Landroid/support/design/internal/b;)Landroid/support/design/internal/b$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/design/internal/b$b;->a(Landroid/support/v7/view/menu/h;)V

    .line 322
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/b;->a(Z)V

    .line 323
    iget-object v0, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/b;->updateMenuView(Z)V

    .line 324
    return-void
.end method
