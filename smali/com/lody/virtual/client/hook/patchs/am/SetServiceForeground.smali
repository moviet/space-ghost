.class Lcom/lody/virtual/client/hook/patchs/am/SetServiceForeground;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "SetServiceForeground.java"


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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p3, v0

    check-cast v1, Landroid/content/ComponentName;

    .line 30
    const/4 v0, 0x1

    aget-object v2, p3, v0

    check-cast v2, Landroid/os/IBinder;

    .line 31
    const/4 v0, 0x2

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 32
    const/4 v0, 0x3

    aget-object v4, p3, v0

    check-cast v4, Landroid/app/Notification;

    .line 33
    const/4 v0, 0x4

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 34
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/client/local/VActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "setServiceForeground"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/SetServiceForeground;->isAppProcess()Z

    move-result v0

    return v0
.end method
