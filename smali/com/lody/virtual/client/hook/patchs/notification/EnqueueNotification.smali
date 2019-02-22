.class Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotification;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "EnqueueNotification.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/String;

    .line 25
    const-class v1, Landroid/app/Notification;

    invoke-static {p3, v1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v2

    .line 26
    aget-object v1, p3, v2

    check-cast v1, Landroid/app/Notification;

    .line 27
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;->getInstance()Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;

    move-result-object v3

    .line 28
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotification;->getHostContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;->dealNotification(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;)Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;

    move-result-object v0

    .line 29
    iget v1, v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;->code:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 31
    :cond_0
    iget v1, v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;->code:I

    if-ne v1, v6, :cond_1

    .line 32
    iget-object v0, v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;->notification:Landroid/app/Notification;

    aput-object v0, p3, v2

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotification;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v5

    .line 35
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotification;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WithTag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    aget-object v0, p3, v6

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotification;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v6

    .line 38
    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "enqueueNotification"

    return-object v0
.end method
