.class public Lcom/fineclouds/spaceghostq1/home/a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DualHomeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/fineclouds/spaceghostq1/dual/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/home/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field final synthetic d:Lcom/fineclouds/spaceghostq1/home/a;


# direct methods
.method public constructor <init>(Lcom/fineclouds/spaceghostq1/home/a;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->d:Lcom/fineclouds/spaceghostq1/home/a;

    .line 191
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    const v0, 0x7f0d00d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->a:Landroid/widget/LinearLayout;

    .line 193
    const v0, 0x7f0d00d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->b:Landroid/widget/ImageView;

    .line 194
    const v0, 0x7f0d00da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->c:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "DualHomeAdapter"

    const-string v1, "onItemSelected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 207
    const-string v0, "DualHomeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClear: getLayoutPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/a$a;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->itemView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 209
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->d:Lcom/fineclouds/spaceghostq1/home/a;

    iget-object v0, v0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/a$a;->getLayoutPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 210
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->d:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/home/a;->a(Lcom/fineclouds/spaceghostq1/home/a;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->f()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 211
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->d:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/home/a;->c(Lcom/fineclouds/spaceghostq1/home/a;)Lcom/fineclouds/spaceghostq1/c$d;

    move-result-object v2

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->d:Lcom/fineclouds/spaceghostq1/home/a;

    .line 212
    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/home/a;->b(Lcom/fineclouds/spaceghostq1/home/a;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/fineclouds/spaceghostq1/DualMainActivity;

    invoke-virtual {v1}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->f()Landroid/support/v4/app/n;

    move-result-object v1

    .line 213
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/a$a;->getLayoutPosition()I

    move-result v3

    .line 211
    invoke-interface {v2, v0, v1, v3}, Lcom/fineclouds/spaceghostq1/c$d;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;Landroid/support/v4/app/n;I)V

    .line 215
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 219
    const-string v0, "DualHomeAdapter"

    const-string v1, "onClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->d:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/home/a;->c(Lcom/fineclouds/spaceghostq1/home/a;)Lcom/fineclouds/spaceghostq1/c$d;

    move-result-object v1

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->d:Lcom/fineclouds/spaceghostq1/home/a;

    iget-object v0, v0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/home/a$a;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-interface {v1, v0}, Lcom/fineclouds/spaceghostq1/c$d;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 221
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 225
    const-string v0, "DualHomeAdapter"

    const-string v1, "onLongClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->d:Lcom/fineclouds/spaceghostq1/home/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/home/a;->a(Lcom/fineclouds/spaceghostq1/home/a;Z)Z

    .line 227
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->d:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/home/a;->b(Lcom/fineclouds/spaceghostq1/home/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 228
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 229
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$a;->itemView:Landroid/view/View;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 230
    const/4 v0, 0x1

    return v0
.end method
