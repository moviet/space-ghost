.class Lcom/lody/virtual/client/hook/patchs/am/StartService;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "StartService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StartService"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 29
    aget-object v0, p3, v6

    check-cast v0, Landroid/os/IInterface;

    .line 30
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/content/Intent;

    .line 31
    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    .line 32
    const-string v3, "StartService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resolvedType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/StartService;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v3

    .line 39
    const-string v4, "_VA_|_from_inner_"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    const-string v4, "_VA_|_intent_"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 41
    const-string v4, "_VA_|_user_id_"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v7, v3

    move-object v3, v1

    move v1, v7

    .line 47
    :goto_1
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v4

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/lody/virtual/client/core/VirtualCore;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v2, v1}, Lcom/lody/virtual/client/local/VActivityManager;->startService(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/StartService;->isServerProcess()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    const-string v3, "_VA_|_user_id_"

    const/16 v4, -0x2710

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v7, v3

    move-object v3, v1

    move v1, v7

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v7, v3

    move-object v3, v1

    move v1, v7

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "startService"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/StartService;->isAppProcess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/StartService;->isServerProcess()Z

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
