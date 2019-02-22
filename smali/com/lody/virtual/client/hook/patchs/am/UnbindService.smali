.class Lcom/lody/virtual/client/hook/patchs/am/UnbindService;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "UnbindService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnbindService"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 27
    aget-object v0, p3, v4

    check-cast v0, Landroid/app/IServiceConnection;

    .line 28
    invoke-static {v0}, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->removeDelegate(Landroid/app/IServiceConnection;)Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    move-result-object v0

    .line 29
    const-string v1, "UnbindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call delegate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "unbindService"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/UnbindService;->isAppProcess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/UnbindService;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
