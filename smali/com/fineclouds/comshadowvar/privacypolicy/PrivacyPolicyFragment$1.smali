.class Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$1;
.super Ljava/lang/Object;
.source "PrivacyPolicyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;
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
    .line 49
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$1;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$1;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$1;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$1;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$1;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->a(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment$1;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;->b(Lcom/fineclouds/spaceghostq1/privacypolicy/PrivacyPolicyFragment;)V

    .line 57
    :cond_0
    return-void
.end method
