.class Lcom/lody/virtual/client/hook/patchs/am/ServiceDoneExecuting;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "ServiceDoneExecuting.java"


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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 24
    aget-object v0, p3, v5

    check-cast v0, Landroid/os/IBinder;

    .line 25
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VActivityManager;->isVAServiceToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 29
    const/4 v1, 0x2

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 30
    const/4 v1, 0x3

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 31
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/lody/virtual/client/local/VActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "serviceDoneExecuting"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/ServiceDoneExecuting;->isAppProcess()Z

    move-result v0

    return v0
.end method
