.class Lcom/lody/virtual/client/hook/patchs/am/PublishService;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "PublishService.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
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

    .line 25
    aget-object v0, p3, v4

    check-cast v0, Landroid/os/IBinder;

    .line 26
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VActivityManager;->isVAServiceToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/content/Intent;

    .line 30
    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Landroid/os/IBinder;

    .line 31
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/lody/virtual/client/local/VActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "publishService"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/PublishService;->isAppProcess()Z

    move-result v0

    return v0
.end method
