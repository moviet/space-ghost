.class public Lcom/fineclouds/spaceghostq1/choose/a/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DualChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fineclouds/spaceghostq1/choose/a/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/fineclouds/spaceghostq1/c$a;


# direct methods
.method public constructor <init>(Lcom/fineclouds/spaceghostq1/c$a;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a;->a:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/choose/a/a;->b:Lcom/fineclouds/spaceghostq1/c$a;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/choose/a/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/fineclouds/spaceghostq1/choose/a/a;)Lcom/fineclouds/spaceghostq1/c$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a;->b:Lcom/fineclouds/spaceghostq1/c$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 54
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/choose/a/a;->notifyItemInserted(I)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/fineclouds/spaceghostq1/choose/a/a$a;

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {p1, v0}, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 42
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/fineclouds/spaceghostq1/choose/a/a$a;

    invoke-direct {v1, p0, v0}, Lcom/fineclouds/spaceghostq1/choose/a/a$a;-><init>(Lcom/fineclouds/spaceghostq1/choose/a/a;Landroid/view/View;)V

    return-object v1
.end method
