.class Lcom/lody/virtual/client/hook/patchs/am/GetIntentSender;
.super Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;
.source "GetIntentSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetIntentSender"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;-><init>()V

    return-void
.end method

.method private redirectIntentSender(ILjava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v0, :cond_2

    move-object v0, v2

    .line 112
    :goto_1
    return-object v0

    .line 69
    :pswitch_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v4

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 70
    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetIntentSender;->getHostContext()Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/lody/virtual/client/stub/StubPendingActivity;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_2
    move v0, v1

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v4

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/lody/virtual/client/core/VirtualCore;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 80
    const-string v5, "GetIntentSender"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redirectIntentSender info:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const-string v5, "com.google.android.gms"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    const-string v5, "GetIntentSender"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redirectIntentSender GMS action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.chimera.container.NEW_MODULE_TIMEOUT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v2

    .line 85
    goto :goto_1

    .line 89
    :cond_1
    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetIntentSender;->getHostContext()Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/lody/virtual/client/stub/StubPendingService;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 98
    :pswitch_3
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetIntentSender;->getHostContext()Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/lody/virtual/client/stub/StubPendingReceiver;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 107
    :cond_2
    const-string v0, "_VA_|_user_id_"

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v0, "_VA_|_intent_"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    const-string v0, "_VA_|_creator_"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v0, "_VA_|_from_inner_"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v3

    .line 112
    goto/16 :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
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
    const/4 v10, 0x6

    const/4 v4, 0x5

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 33
    aget-object v0, p3, v8

    check-cast v0, Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetIntentSender;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v8

    .line 35
    aget-object v1, p3, v10

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 36
    aget-object v2, p3, v7

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 37
    aget-object v2, p3, v4

    instance-of v2, v2, [Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 38
    aget-object v2, p3, v4

    check-cast v2, [Landroid/content/Intent;

    check-cast v2, [Landroid/content/Intent;

    .line 39
    array-length v4, v2

    if-lez v4, :cond_1

    .line 40
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    .line 41
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 42
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v1, v1, v6

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :cond_0
    const-string v1, "GetIntentSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " creator:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0, v3, v0, v4}, Lcom/lody/virtual/client/hook/patchs/am/GetIntentSender;->redirectIntentSender(ILjava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 51
    :cond_1
    array-length v1, p3

    if-le v1, v9, :cond_2

    aget-object v1, p3, v9

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 52
    const/high16 v1, 0x8000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v9

    .line 54
    :cond_2
    new-array v1, v8, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v7

    aput-object v1, p3, v10

    .line 55
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    .line 56
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 57
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v2

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/lody/virtual/client/local/VActivityManager;->addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 59
    :cond_3
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "getIntentSender"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetIntentSender;->isAppProcess()Z

    move-result v0

    return v0
.end method
