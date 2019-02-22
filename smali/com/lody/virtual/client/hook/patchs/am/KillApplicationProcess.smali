.class Lcom/lody/virtual/client/hook/patchs/am/KillApplicationProcess;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "KillApplicationProcess.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 23
    array-length v0, p3

    if-le v0, v1, :cond_0

    aget-object v0, p3, v3

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 24
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    .line 25
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 26
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lody/virtual/client/local/VActivityManager;->killApplicationProcess(Ljava/lang/String;I)V

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "killApplicationProcess"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/KillApplicationProcess;->isAppProcess()Z

    move-result v0

    return v0
.end method
