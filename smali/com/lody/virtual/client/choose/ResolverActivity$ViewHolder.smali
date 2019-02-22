.class Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/choose/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;

.field public text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    sget v0, Lcom/lody/virtual/R$id;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    .line 715
    sget v0, Lcom/lody/virtual/R$id;->text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    .line 716
    sget v0, Lcom/lody/virtual/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 717
    return-void
.end method
