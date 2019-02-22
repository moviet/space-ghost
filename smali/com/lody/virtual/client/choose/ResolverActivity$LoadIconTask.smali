.class Lcom/lody/virtual/client/choose/ResolverActivity$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/choose/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/choose/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/choose/ResolverActivity;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$LoadIconTask;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;)Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;
    .locals 3

    .prologue
    .line 734
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 735
    iget-object v1, v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$LoadIconTask;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    iget-object v2, v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/lody/virtual/client/choose/ResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 738
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 731
    check-cast p1, [Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/choose/ResolverActivity$LoadIconTask;->doInBackground([Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;)Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;)V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$LoadIconTask;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$400(Lcom/lody/virtual/client/choose/ResolverActivity;)Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 744
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 731
    check-cast p1, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/choose/ResolverActivity$LoadIconTask;->onPostExecute(Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;)V

    return-void
.end method
