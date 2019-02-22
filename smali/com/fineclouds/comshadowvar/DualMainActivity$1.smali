.class Lcom/fineclouds/spaceghostq1/DualMainActivity$1;
.super Ljava/lang/Object;
.source "DualMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/DualMainActivity;->c(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/fineclouds/spaceghostq1/DualMainActivity;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/DualMainActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity$1;->b:Lcom/fineclouds/spaceghostq1/DualMainActivity;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity$1;->b:Lcom/fineclouds/spaceghostq1/DualMainActivity;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/DualMainActivity$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/DualMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method
