.class Lfineclouds/com/mylibrary/b/b$1;
.super Ljava/lang/Object;
.source "ShareAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfineclouds/com/mylibrary/b/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfineclouds/com/mylibrary/b/b;


# direct methods
.method constructor <init>(Lfineclouds/com/mylibrary/b/b;I)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lfineclouds/com/mylibrary/b/b$1;->b:Lfineclouds/com/mylibrary/b/b;

    iput p2, p0, Lfineclouds/com/mylibrary/b/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b$1;->b:Lfineclouds/com/mylibrary/b/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/b/b;->a(Lfineclouds/com/mylibrary/b/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "flank_share"

    const-string v3, "share_channel"

    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b$1;->b:Lfineclouds/com/mylibrary/b/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/b/b;->b(Lfineclouds/com/mylibrary/b/b;)Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lfineclouds/com/mylibrary/b/b$1;->a:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lfineclouds/com/mylibrary/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b$1;->b:Lfineclouds/com/mylibrary/b/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/b/b;->c(Lfineclouds/com/mylibrary/b/b;)Lfineclouds/com/mylibrary/b/a;

    move-result-object v1

    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b$1;->b:Lfineclouds/com/mylibrary/b/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/b/b;->b(Lfineclouds/com/mylibrary/b/b;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lfineclouds/com/mylibrary/b/b$1;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-interface {v1, v0}, Lfineclouds/com/mylibrary/b/a;->a(Landroid/content/pm/ResolveInfo;)V

    .line 67
    iget-object v0, p0, Lfineclouds/com/mylibrary/b/b$1;->b:Lfineclouds/com/mylibrary/b/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/b/b;->d(Lfineclouds/com/mylibrary/b/b;)Lfineclouds/com/mylibrary/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lfineclouds/com/mylibrary/b/c;->dismiss()V

    .line 68
    return-void
.end method
