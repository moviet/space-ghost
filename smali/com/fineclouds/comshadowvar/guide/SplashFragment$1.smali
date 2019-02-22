.class Lcom/fineclouds/spaceghostq1/guide/SplashFragment$1;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements La/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/guide/SplashFragment;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/guide/SplashFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$1;->a:Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    const-string v0, "SplashFragment"

    const-string v1, "call: 222"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$1;->a:Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$1;->a:Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$1;->a:Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    invoke-virtual {v2}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/fineclouds/spaceghostq1/DualMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->a(Landroid/content/Intent;)V

    .line 85
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$1;->a:Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
