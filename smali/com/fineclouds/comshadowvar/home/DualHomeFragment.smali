.class public Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "DualHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fineclouds/spaceghostq1/c$c;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcom/fineclouds/spaceghostq1/home/a;

.field private c:Landroid/support/design/widget/FloatingActionButton;

.field private d:Lcom/fineclouds/spaceghostq1/a/a;

.field private e:Lcom/fineclouds/spaceghostq1/c$d;

.field private f:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private h:Lcom/fineclouds/spaceghostq1/common/a/a/a/b;

.field private i:Lcom/fineclouds/spaceghostq1/common/view/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    return-void
.end method

.method public static N()Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;

    invoke-direct {v0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;-><init>()V

    .line 60
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 79
    const-string v0, "DualHomeFragment"

    const-string v1, "onCreateView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const v0, 0x7f040037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 85
    const v0, 0x7f0d00e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->c:Landroid/support/design/widget/FloatingActionButton;

    .line 86
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->c:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0d00e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->a:Landroid/support/v7/widget/RecyclerView;

    .line 88
    new-instance v0, Lcom/fineclouds/spaceghostq1/home/a;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->e:Lcom/fineclouds/spaceghostq1/c$d;

    invoke-direct {v0, v2, v3}, Lcom/fineclouds/spaceghostq1/home/a;-><init>(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/c$d;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->b:Lcom/fineclouds/spaceghostq1/home/a;

    .line 89
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->i()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 90
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080079

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 91
    new-instance v2, Lcom/fineclouds/spaceghostq1/common/view/a;

    invoke-direct {v2, v5, v0, v4}, Lcom/fineclouds/spaceghostq1/common/view/a;-><init>(IIZ)V

    .line 92
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 93
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/fineclouds/spaceghostq1/common/a/a/b/c;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v3, v4}, Lcom/fineclouds/spaceghostq1/common/a/a/b/c;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 95
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 96
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->b:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 98
    new-instance v0, Lcom/fineclouds/spaceghostq1/dual/a/b;

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->b:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-direct {v0, v2}, Lcom/fineclouds/spaceghostq1/dual/a/b;-><init>(Lcom/fineclouds/spaceghostq1/dual/a/a;)V

    .line 99
    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v2, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->f:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 100
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->f:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 104
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/b;->a(Landroid/app/Activity;)Lcom/fineclouds/spaceghostq1/common/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->h:Lcom/fineclouds/spaceghostq1/common/a/a/a/b;

    .line 105
    return-object v1
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->h:Lcom/fineclouds/spaceghostq1/common/a/a/a/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/a/a/b;->a(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->b:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-virtual {v0, p1}, Lcom/fineclouds/spaceghostq1/home/a;->b(I)V

    .line 144
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    .line 173
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 174
    if-nez p3, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v0, "io.virtualapp.extra.APP_MODEL"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 176
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->e:Lcom/fineclouds/spaceghostq1/c$d;

    invoke-interface {v1, v0}, Lcom/fineclouds/spaceghostq1/c$d;->b(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    goto :goto_0
.end method

.method public a(Lcom/fineclouds/spaceghostq1/c$d;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->e:Lcom/fineclouds/spaceghostq1/c$d;

    .line 154
    return-void
.end method

.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->b:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-virtual {v0, p1}, Lcom/fineclouds/spaceghostq1/home/a;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 149
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/fineclouds/spaceghostq1/c$d;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->a(Lcom/fineclouds/spaceghostq1/c$d;)V

    return-void
.end method

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
    .line 131
    const-string v0, "DualHomeFragment"

    const-string v1, "loadFinish: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->b:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-virtual {v0, p1}, Lcom/fineclouds/spaceghostq1/home/a;->a(Ljava/util/List;)V

    .line 133
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->i:Lcom/fineclouds/spaceghostq1/common/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->i:Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->i:Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->b()V

    .line 168
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 65
    const-string v0, "DualHomeFragment"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DualHomeFragment_onCreate"

    const-string v2, "onCreate"

    const-string v3, "onCreate"

    invoke-static {v0, v1, v2, v3}, Lfineclouds/com/mylibrary/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/fineclouds/spaceghostq1/a/a;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fineclouds/spaceghostq1/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->d:Lcom/fineclouds/spaceghostq1/a/a;

    .line 69
    new-instance v0, Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fineclouds/spaceghostq1/dual/c/b;-><init>(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/c$c;)V

    .line 70
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->i:Lcom/fineclouds/spaceghostq1/common/view/b;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fineclouds/spaceghostq1/common/view/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->i:Lcom/fineclouds/spaceghostq1/common/view/b;

    .line 74
    :cond_0
    return-void
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->i:Lcom/fineclouds/spaceghostq1/common/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->i:Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->i:Lcom/fineclouds/spaceghostq1/common/view/b;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->a()V

    .line 161
    :cond_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "DualHomeFragment"

    const-string v1, "onActivityCreated: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->e:Lcom/fineclouds/spaceghostq1/c$d;

    invoke-interface {v0}, Lcom/fineclouds/spaceghostq1/c$d;->a()V

    .line 113
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    .line 187
    const-string v0, "DualHomeFragment"

    const-string v1, "onDestroyView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->e:Lcom/fineclouds/spaceghostq1/c$d;

    invoke-static {}, Lcom/fineclouds/spaceghostq1/common/a/b;->a()Lcom/fineclouds/spaceghostq1/common/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fineclouds/spaceghostq1/common/a/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fineclouds/spaceghostq1/c$d;->a(Ljava/util/List;)V

    .line 189
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 118
    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/choose/DualChooseActivity;->a(Landroid/app/Activity;)V

    .line 121
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/DualHomeFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DualHomeFragment_fabAdd"

    const-string v2, "fabAdd"

    const-string v3, "add_dualapp"

    invoke-static {v0, v1, v2, v3}, Lfineclouds/com/mylibrary/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00e8
        :pswitch_0
    .end packed-switch
.end method
