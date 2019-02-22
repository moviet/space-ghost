.class Lcom/lody/virtual/client/choose/ResolverActivity$ItemLongClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/choose/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/choose/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/choose/ResolverActivity;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ItemLongClickListener;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ItemLongClickListener;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$400(Lcom/lody/virtual/client/choose/ResolverActivity;)Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ItemLongClickListener;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    .line 726
    const/4 v0, 0x1

    return v0
.end method
