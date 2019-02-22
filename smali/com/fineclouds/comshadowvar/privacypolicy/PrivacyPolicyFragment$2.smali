.class Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;
.super Landroid/webkit/WebViewClient;
.source "PrivacyPolicyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 104
    const-string v0, "PrivacyPolicyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->e(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->f(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Lcom/fineclouds/spaceghostq1/common/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->b()V

    .line 107
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->a(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;Z)Z

    .line 108
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->g(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->h(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 98
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->d(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->c(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 116
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->f(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Lcom/fineclouds/spaceghostq1/common/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/b;->b()V

    .line 117
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->b(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)V

    .line 118
    return-void
.end method
