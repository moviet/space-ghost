.class public Lfineclouds/com/mylibrary/b/c;
.super Landroid/app/AlertDialog;
.source "ShareSelectDialog.java"


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/widget/GridView;

.field private c:Lfineclouds/com/mylibrary/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lfineclouds/com/mylibrary/b/a;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lfineclouds/com/mylibrary/b/c;->a:Landroid/content/Intent;

    .line 28
    iput-object p3, p0, Lfineclouds/com/mylibrary/b/c;->c:Lfineclouds/com/mylibrary/b/a;

    .line 29
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 54
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 55
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lfineclouds/com/mylibrary/b/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60
    :cond_0
    return-object p1

    .line 54
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/b/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 33
    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 34
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 35
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/b/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    .line 66
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/b/c;->dismiss()V

    .line 67
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/c;->c:Lfineclouds/com/mylibrary/b/a;

    invoke-interface {v0}, Lfineclouds/com/mylibrary/b/a;->k()V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Lfineclouds/com/mylibrary/R$layout;->share_app_dialog:I

    invoke-virtual {p0, v0}, Lfineclouds/com/mylibrary/b/c;->setContentView(I)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfineclouds/com/mylibrary/b/c;->setCancelable(Z)V

    .line 44
    invoke-direct {p0}, Lfineclouds/com/mylibrary/b/c;->a()V

    .line 45
    sget v0, Lfineclouds/com/mylibrary/R$id;->share_apps_list:I

    invoke-virtual {p0, v0}, Lfineclouds/com/mylibrary/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lfineclouds/com/mylibrary/b/c;->b:Landroid/widget/GridView;

    .line 46
    invoke-virtual {p0}, Lfineclouds/com/mylibrary/b/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lfineclouds/com/mylibrary/b/c;->a:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lfineclouds/com/mylibrary/b/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 48
    :cond_0
    new-instance v1, Lfineclouds/com/mylibrary/b/b;

    invoke-virtual {p0}, Lfineclouds/com/mylibrary/b/c;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lfineclouds/com/mylibrary/b/c;->c:Lfineclouds/com/mylibrary/b/a;

    invoke-direct {v1, v2, v0, v3, p0}, Lfineclouds/com/mylibrary/b/b;-><init>(Landroid/content/Context;Ljava/util/List;Lfineclouds/com/mylibrary/b/a;Lfineclouds/com/mylibrary/b/c;)V

    .line 49
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/c;->b:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    return-void
.end method
