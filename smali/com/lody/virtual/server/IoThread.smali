.class public final Lcom/lody/virtual/server/IoThread;
.super Landroid/os/HandlerThread;
.source "IoThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/lody/virtual/server/IoThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "virtual.android.io"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 17
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/lody/virtual/server/IoThread;->sInstance:Lcom/lody/virtual/server/IoThread;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/lody/virtual/server/IoThread;

    invoke-direct {v0}, Lcom/lody/virtual/server/IoThread;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/IoThread;->sInstance:Lcom/lody/virtual/server/IoThread;

    .line 22
    sget-object v0, Lcom/lody/virtual/server/IoThread;->sInstance:Lcom/lody/virtual/server/IoThread;

    invoke-virtual {v0}, Lcom/lody/virtual/server/IoThread;->start()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/lody/virtual/server/IoThread;->sInstance:Lcom/lody/virtual/server/IoThread;

    invoke-virtual {v1}, Lcom/lody/virtual/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lody/virtual/server/IoThread;->sHandler:Landroid/os/Handler;

    .line 25
    :cond_0
    return-void
.end method

.method public static get()Lcom/lody/virtual/server/IoThread;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/lody/virtual/server/IoThread;

    monitor-enter v1

    .line 29
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/server/IoThread;->ensureThreadLocked()V

    .line 30
    sget-object v0, Lcom/lody/virtual/server/IoThread;->sInstance:Lcom/lody/virtual/server/IoThread;

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/lody/virtual/server/IoThread;

    monitor-enter v1

    .line 36
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/server/IoThread;->ensureThreadLocked()V

    .line 37
    sget-object v0, Lcom/lody/virtual/server/IoThread;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
