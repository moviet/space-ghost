.class Lcom/lody/virtual/client/hook/patchs/am/HandleIncomingUser;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "HandleIncomingUser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 20
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 21
    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/HandleIncomingUser;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 24
    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "handleIncomingUser"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/HandleIncomingUser;->isAppProcess()Z

    move-result v0

    return v0
.end method
