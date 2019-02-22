.class public Lcom/lody/virtual/client/stub/StubPendingActivity;
.super Landroid/app/Activity;
.source "StubPendingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/StubPendingActivity;->finish()V

    .line 21
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/StubPendingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 22
    const-string v1, "StubPendingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    new-instance v1, Lcom/lody/virtual/helper/proto/StubActivityRecord;

    invoke-direct {v1, v0}, Lcom/lody/virtual/helper/proto/StubActivityRecord;-><init>(Landroid/content/Intent;)V

    .line 24
    iget-object v2, v1, Lcom/lody/virtual/helper/proto/StubActivityRecord;->intent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v2, v1, Lcom/lody/virtual/helper/proto/StubActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    const-string v2, "StubPendingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate startActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    iget-object v2, v1, Lcom/lody/virtual/helper/proto/StubActivityRecord;->intent:Landroid/content/Intent;

    iget v1, v1, Lcom/lody/virtual/helper/proto/StubActivityRecord;->userId:I

    invoke-virtual {v0, v2, v1}, Lcom/lody/virtual/client/local/VActivityManager;->startActivity(Landroid/content/Intent;I)I

    goto :goto_0
.end method
