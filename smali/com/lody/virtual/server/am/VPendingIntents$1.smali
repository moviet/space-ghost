.class Lcom/lody/virtual/server/am/VPendingIntents$1;
.super Ljava/lang/Object;
.source "VPendingIntents.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/am/VPendingIntents;->addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/am/VPendingIntents;

.field final synthetic val$binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/am/VPendingIntents;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lody/virtual/server/am/VPendingIntents$1;->this$0:Lcom/lody/virtual/server/am/VPendingIntents;

    iput-object p2, p0, Lcom/lody/virtual/server/am/VPendingIntents$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lody/virtual/server/am/VPendingIntents$1;->val$binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 32
    iget-object v0, p0, Lcom/lody/virtual/server/am/VPendingIntents$1;->this$0:Lcom/lody/virtual/server/am/VPendingIntents;

    # getter for: Lcom/lody/virtual/server/am/VPendingIntents;->mLruHistory:Ljava/util/Map;
    invoke-static {v0}, Lcom/lody/virtual/server/am/VPendingIntents;->access$000(Lcom/lody/virtual/server/am/VPendingIntents;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/am/VPendingIntents$1;->val$binder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
