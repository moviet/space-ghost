.class public Lcom/lody/virtual/client/stub/StubPendingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StubPendingReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 18
    const-string v0, "_VA_|_intent_"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 19
    const-string v1, "_VA_|_user_id_"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-static {v0, v1}, Lcom/lody/virtual/helper/utils/ComponentUtils;->redirectBroadcastIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 26
    :cond_0
    return-void
.end method
