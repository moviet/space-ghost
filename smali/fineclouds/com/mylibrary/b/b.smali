.class public Lfineclouds/com/mylibrary/b/b;
.super Landroid/widget/BaseAdapter;
.source "ShareAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lfineclouds/com/mylibrary/b/a;

.field private f:Lfineclouds/com/mylibrary/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lfineclouds/com/mylibrary/b/a;Lfineclouds/com/mylibrary/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lfineclouds/com/mylibrary/b/a;",
            "Lfineclouds/com/mylibrary/b/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lfineclouds/com/mylibrary/b/b;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lfineclouds/com/mylibrary/b/b;->b:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lfineclouds/com/mylibrary/b/b;->e:Lfineclouds/com/mylibrary/b/a;

    .line 33
    iput-object p4, p0, Lfineclouds/com/mylibrary/b/b;->f:Lfineclouds/com/mylibrary/b/c;

    .line 34
    return-void
.end method

.method static synthetic a(Lfineclouds/com/mylibrary/b/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lfineclouds/com/mylibrary/b/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lfineclouds/com/mylibrary/b/b;)Lfineclouds/com/mylibrary/b/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->e:Lfineclouds/com/mylibrary/b/a;

    return-object v0
.end method

.method static synthetic d(Lfineclouds/com/mylibrary/b/b;)Lfineclouds/com/mylibrary/b/c;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->f:Lfineclouds/com/mylibrary/b/c;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    sget v1, Lfineclouds/com/mylibrary/R$layout;->share_app_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    sget v0, Lfineclouds/com/mylibrary/R$id;->share_app_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfineclouds/com/mylibrary/b/b;->d:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 57
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 58
    sget v0, Lfineclouds/com/mylibrary/R$id;->share_app_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfineclouds/com/mylibrary/b/b;->c:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v3, p0, Lfineclouds/com/mylibrary/b/b;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v0, Lfineclouds/com/mylibrary/b/b$1;

    invoke-direct {v0, p0, p1}, Lfineclouds/com/mylibrary/b/b$1;-><init>(Lfineclouds/com/mylibrary/b/b;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-object v1
.end method
