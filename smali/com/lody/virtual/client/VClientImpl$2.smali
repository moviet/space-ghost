.class Lcom/lody/virtual/client/VClientImpl$2;
.super Ljava/lang/Object;
.source "VClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/VClientImpl;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/VClientImpl;

.field final synthetic val$lock:Landroid/os/ConditionVariable;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/VClientImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lody/virtual/client/VClientImpl$2;->this$0:Lcom/lody/virtual/client/VClientImpl;

    iput-object p2, p0, Lcom/lody/virtual/client/VClientImpl$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/lody/virtual/client/VClientImpl$2;->val$processName:Ljava/lang/String;

    iput-object p4, p0, Lcom/lody/virtual/client/VClientImpl$2;->val$lock:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl$2;->this$0:Lcom/lody/virtual/client/VClientImpl;

    iget-object v1, p0, Lcom/lody/virtual/client/VClientImpl$2;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lody/virtual/client/VClientImpl$2;->val$processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lody/virtual/client/VClientImpl$2;->val$lock:Landroid/os/ConditionVariable;

    # invokes: Lcom/lody/virtual/client/VClientImpl;->bindApplicationNoCheck(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    invoke-static {v0, v1, v2, v3}, Lcom/lody/virtual/client/VClientImpl;->access$200(Lcom/lody/virtual/client/VClientImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 198
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl$2;->val$lock:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 199
    return-void
.end method
