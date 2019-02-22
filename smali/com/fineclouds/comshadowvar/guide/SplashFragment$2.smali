.class Lcom/fineclouds/spaceghostq1/guide/SplashFragment$2;
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
    .line 69
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$2;->a:Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    const-string v0, "SplashFragment"

    const-string v1, "call: 111"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$2;->a:Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->a(Lcom/fineclouds/spaceghostq1/guide/SplashFragment;)Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a(Z)V

    .line 74
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/guide/SplashFragment$2;->a:Lcom/fineclouds/spaceghostq1/guide/SplashFragment;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/guide/SplashFragment;->a(Lcom/fineclouds/spaceghostq1/guide/SplashFragment;)Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/common/view/AnimTextView;->a()V

    .line 75
    return-void
.end method
