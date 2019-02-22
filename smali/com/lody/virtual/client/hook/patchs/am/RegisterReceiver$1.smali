.class Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$1;
.super Ljava/lang/Object;
.source "RegisterReceiver.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$1;->this$0:Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;

    iput-object p2, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$1;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$1;->val$token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 66
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$1;->this$0:Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;

    # getter for: Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->mProxyIIntentReceiver:Ljava/util/WeakHashMap;
    invoke-static {v0}, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->access$000(Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$1;->val$token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method
