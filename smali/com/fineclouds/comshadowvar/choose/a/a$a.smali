.class Lcom/fineclouds/spaceghostq1/choose/a/a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DualChooseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/choose/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/choose/a/a;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/fineclouds/spaceghostq1/choose/a/a;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->a:Lcom/fineclouds/spaceghostq1/choose/a/a;

    .line 73
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 74
    const v0, 0x7f0d0077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->b:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0d0079

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->c:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0d007a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->d:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0d007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->f:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0d007c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->e:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0d007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->g:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0d0078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->h:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 86
    const-string v0, "DualChooseAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppDate: appModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->h()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_0
    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->g()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->c:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->a:Lcom/fineclouds/spaceghostq1/choose/a/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/choose/a/a;->b(Lcom/fineclouds/spaceghostq1/choose/a/a;)Lcom/fineclouds/spaceghostq1/c$a;

    move-result-object v1

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->a:Lcom/fineclouds/spaceghostq1/choose/a/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/choose/a/a;->a(Lcom/fineclouds/spaceghostq1/choose/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/choose/a/a$a;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-interface {v1, v0}, Lcom/fineclouds/spaceghostq1/c$a;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 114
    return-void
.end method
