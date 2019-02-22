.class public Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;
.super Landroid/support/v4/app/Fragment;
.source "SplashGuideFragmet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;

    invoke-direct {v0}, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;-><init>()V

    .line 27
    return-object v0
.end method


# virtual methods
.method public N()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    const-string v1, "fragment_id"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;->a(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 33
    const v0, 0x7f04004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;->a:Landroid/widget/LinearLayout;

    .line 34
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0103

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;->a:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0104

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 37
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->b()Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;->l()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f0d00ff

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()I

    .line 45
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 57
    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;->b()V

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;->N()V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f0d0103
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
