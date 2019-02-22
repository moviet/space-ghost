.class Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity$1;
.super Landroid/os/Handler;
.source "LoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity$1;->a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 220
    const-string v0, "LoadingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 223
    :pswitch_0
    const-string v0, "LoadingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity$1;->a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;

    invoke-static {v2}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPermissionFixed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity$1;->a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;

    invoke-static {v2}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->b(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity$1;->a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->b(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity$1;->a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/client/local/VActivityManager;->startActivity(Landroid/content/Intent;I)I

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
