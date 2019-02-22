.class Lcom/lody/virtual/client/hook/patchs/am/BindService;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "BindService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BindService"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v8, -0x2710

    .line 33
    aget-object v0, p3, v10

    move-object v1, v0

    check-cast v1, Landroid/os/IInterface;

    .line 34
    const/4 v0, 0x1

    aget-object v2, p3, v0

    check-cast v2, Landroid/os/IBinder;

    .line 35
    const/4 v0, 0x2

    aget-object v3, p3, v0

    check-cast v3, Landroid/content/Intent;

    .line 36
    const/4 v0, 0x3

    aget-object v4, p3, v0

    check-cast v4, Ljava/lang/String;

    .line 37
    const/4 v0, 0x4

    aget-object v0, p3, v0

    check-cast v0, Landroid/app/IServiceConnection;

    .line 38
    const/4 v5, 0x5

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 39
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v7

    .line 40
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/BindService;->isServerProcess()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    const-string v5, "_VA_|_user_id_"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 43
    :cond_0
    if-ne v7, v8, :cond_1

    .line 44
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 46
    :cond_1
    const-string v5, "BindService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call service:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Lcom/lody/virtual/client/core/VirtualCore;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 48
    if-eqz v5, :cond_3

    .line 49
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    .line 50
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    :cond_2
    invoke-static {v0}, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->getDelegate(Landroid/app/IServiceConnection;)Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    move-result-object v5

    .line 53
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/client/local/VActivityManager;->bindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "bindService"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/BindService;->isAppProcess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/BindService;->isServerProcess()Z

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
