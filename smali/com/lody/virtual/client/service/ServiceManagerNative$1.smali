.class final Lcom/lody/virtual/client/service/ServiceManagerNative$1;
.super Ljava/lang/Object;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/service/ServiceManagerNative;->linkBinderDied(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lody/virtual/client/service/ServiceManagerNative$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/lody/virtual/client/service/ServiceManagerNative$1;->val$binder:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 52
    # getter for: Lcom/lody/virtual/client/service/ServiceManagerNative;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/client/service/ServiceManagerNative;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ops, the server has crashed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->exit()V

    .line 54
    return-void
.end method
