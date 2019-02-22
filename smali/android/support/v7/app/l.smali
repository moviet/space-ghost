.class Landroid/support/v7/app/l;
.super Landroid/support/v7/app/a;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/l$b;,
        Landroid/support/v7/app/l$c;,
        Landroid/support/v7/app/l$a;,
        Landroid/support/v7/app/l$d;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/DecorToolbar;

.field private b:Z

.field private c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/support/v7/view/menu/e;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/l;->f:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Landroid/support/v7/app/l$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/l$1;-><init>(Landroid/support/v7/app/l;)V

    iput-object v0, p0, Landroid/support/v7/app/l;->h:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Landroid/support/v7/app/l$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/l$2;-><init>(Landroid/support/v7/app/l;)V

    iput-object v0, p0, Landroid/support/v7/app/l;->i:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 74
    new-instance v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    .line 75
    new-instance v0, Landroid/support/v7/app/l$d;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/app/l$d;-><init>(Landroid/support/v7/app/l;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    .line 76
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    iget-object v1, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 77
    iget-object v0, p0, Landroid/support/v7/app/l;->i:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 78
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/l;Landroid/view/Menu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/support/v7/app/l;->a(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, p1}, Landroid/support/v7/app/l;->b(Landroid/view/Menu;)V

    .line 517
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/e;

    if-nez v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/e;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/e;->a()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 522
    iget-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/e;

    iget-object v1, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/e;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/m;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/l;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/app/l;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/support/v7/app/l;->b:Z

    return p1
.end method

.method private b(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 528
    iget-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/e;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/support/v7/view/menu/f;

    if-eqz v0, :cond_1

    .line 529
    check-cast p1, Landroid/support/v7/view/menu/f;

    .line 531
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 532
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 533
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 534
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 537
    sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 538
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    .line 539
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 543
    :cond_0
    sget v3, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 544
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_2

    .line 545
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 550
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 551
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 554
    new-instance v0, Landroid/support/v7/view/menu/e;

    sget v2, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/e;

    .line 555
    iget-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/e;

    new-instance v1, Landroid/support/v7/app/l$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/app/l$c;-><init>(Landroid/support/v7/app/l;Landroid/support/v7/app/l$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/e;->a(Landroid/support/v7/view/menu/l$a;)V

    .line 556
    iget-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/e;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/l;)V

    .line 558
    :cond_1
    return-void

    .line 547
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/app/l;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/support/v7/app/l;->b:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/app/l;)Landroid/support/v7/widget/DecorToolbar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    return-object v0
.end method

.method private k()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-boolean v0, p0, Landroid/support/v7/app/l;->d:Z

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    new-instance v1, Landroid/support/v7/app/l$a;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/app/l$a;-><init>(Landroid/support/v7/app/l;Landroid/support/v7/app/l$1;)V

    new-instance v2, Landroid/support/v7/app/l$b;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/app/l$b;-><init>(Landroid/support/v7/app/l;Landroid/support/v7/app/l$1;)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/DecorToolbar;->setMenuCallbacks(Landroid/support/v7/view/menu/l$a;Landroid/support/v7/view/menu/f$a;)V

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/l;->d:Z

    .line 595
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 142
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/support/v7/app/a;->a(Landroid/content/res/Configuration;)V

    .line 192
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 475
    invoke-direct {p0}, Landroid/support/v7/app/l;->k()Landroid/view/Menu;

    move-result-object v3

    .line 476
    if-eqz v3, :cond_0

    .line 477
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 480
    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 485
    :cond_0
    return v1

    .line 477
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 479
    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public e(Z)V
    .locals 3

    .prologue
    .line 503
    iget-boolean v0, p0, Landroid/support/v7/app/l;->e:Z

    if-ne p1, v0, :cond_1

    .line 512
    :cond_0
    return-void

    .line 506
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/app/l;->e:Z

    .line 508
    iget-object v0, p0, Landroid/support/v7/app/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 509
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 510
    iget-object v0, p0, Landroid/support/v7/app/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/a$b;

    invoke-interface {v0, p1}, Landroid/support/v7/app/a$b;->a(Z)V

    .line 509
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/l;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 433
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/l;->h:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->collapseActionView()V

    .line 441
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/l;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method

.method public i()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method j()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-direct {p0}, Landroid/support/v7/app/l;->k()Landroid/view/Menu;

    move-result-object v1

    .line 448
    instance-of v2, v1, Landroid/support/v7/view/menu/f;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/support/v7/view/menu/f;

    move-object v2, v0

    .line 449
    :goto_0
    if-eqz v2, :cond_0

    .line 450
    invoke-virtual {v2}, Landroid/support/v7/view/menu/f;->g()V

    .line 453
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 454
    iget-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :cond_2
    if-eqz v2, :cond_3

    .line 460
    invoke-virtual {v2}, Landroid/support/v7/view/menu/f;->h()V

    .line 463
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    .line 448
    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 460
    invoke-virtual {v2}, Landroid/support/v7/view/menu/f;->h()V

    :cond_5
    throw v0
.end method
