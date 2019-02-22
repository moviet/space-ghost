.class Lcom/lody/virtual/client/VClientImpl$3;
.super Ljava/lang/Thread;
.source "VClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/VClientImpl;->bindApplicationNoCheck(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/VClientImpl;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/VClientImpl;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/lody/virtual/client/VClientImpl$3;->this$0:Lcom/lody/virtual/client/VClientImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
