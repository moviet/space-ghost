.class public Lcom/fineclouds/spaceghostq1/SplashActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/SplashActivity;->f()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 37
    const v1, 0x7f0d00ff

    invoke-static {}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->b()Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    .line 38
    if-eqz p1, :cond_0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()I

    .line 42
    return-void
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/SplashActivity;->f()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 49
    const v1, 0x7f0d00ff

    invoke-static {}, Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;->a()Lcom/fineclouds/spaceghostq1/guide/SplashGuideFragmet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()I

    .line 54
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/SplashActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/fineclouds/spaceghostq1/common/a/g;->a(Landroid/app/Activity;I)V

    .line 25
    invoke-static {p0}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->d(Landroid/content/Context;)Z

    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0, v2}, Lcom/fineclouds/spaceghostq1/SplashActivity;->c(Z)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-direct {p0, v2}, Lcom/fineclouds/spaceghostq1/SplashActivity;->b(Z)V

    goto :goto_0
.end method
