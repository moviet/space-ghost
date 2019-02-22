.class public Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DualChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fineclouds/spaceghostq1/c$b;


# instance fields
.field private m:Landroid/support/v7/widget/RecyclerView;

.field private n:Lcom/fineclouds/spaceghostq1/choose/a/a;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/fineclouds/spaceghostq1/c$a;

.field private q:Lcom/fineclouds/spaceghostq1/common/view/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 42
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 59
    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->o:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/fineclouds/spaceghostq1/choose/a/a;

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->p:Lcom/fineclouds/spaceghostq1/c$a;

    invoke-direct {v0, v2}, Lcom/fineclouds/spaceghostq1/choose/a/a;-><init>(Lcom/fineclouds/spaceghostq1/c$a;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->n:Lcom/fineclouds/spaceghostq1/choose/a/a;

    .line 65
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->m:Landroid/support/v7/widget/RecyclerView;

    .line 66
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->m:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 67
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 68
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->n:Lcom/fineclouds/spaceghostq1/choose/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 69
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fineclouds/spaceghostq1/common/a/a/b/c;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v1, v2}, Lcom/fineclouds/spaceghostq1/common/a/a/b/c;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 70
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/g;->a(Landroid/app/Activity;I)V

    .line 72
    return-void
.end method


# virtual methods
.method public a(Lcom/fineclouds/spaceghostq1/c$a;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->p:Lcom/fineclouds/spaceghostq1/c$a;

    .line 87
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/fineclouds/spaceghostq1/c$a;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->a(Lcom/fineclouds/spaceghostq1/c$a;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
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
    .line 101
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->q:Lcom/fineclouds/spaceghostq1/common/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->q:Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->q:Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->b()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->n:Lcom/fineclouds/spaceghostq1/choose/a/a;

    invoke-virtual {v0, p1}, Lcom/fineclouds/spaceghostq1/choose/a/a;->a(Ljava/util/List;)V

    .line 105
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 77
    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->finish()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f0d0072
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->setContentView(I)V

    .line 48
    new-instance v0, Lcom/fineclouds/spaceghostq1/choose/b/a;

    invoke-direct {v0, p0, p0}, Lcom/fineclouds/spaceghostq1/choose/b/a;-><init>(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/c$b;)V

    .line 50
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->q:Lcom/fineclouds/spaceghostq1/common/view/b;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/common/view/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->q:Lcom/fineclouds/spaceghostq1/common/view/b;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->q:Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->a()V

    .line 54
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->k()V

    .line 55
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->p:Lcom/fineclouds/spaceghostq1/c$a;

    invoke-interface {v0}, Lcom/fineclouds/spaceghostq1/c$a;->a()V

    .line 56
    return-void
.end method
