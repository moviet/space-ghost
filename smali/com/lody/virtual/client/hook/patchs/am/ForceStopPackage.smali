.class Lcom/lody/virtual/client/hook/patchs/am/ForceStopPackage;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "ForceStopPackage.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
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
    const/4 v3, 0x0

    .line 22
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    .line 24
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lody/virtual/client/local/VActivityManager;->killAppByPkg(Ljava/lang/String;I)V

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "forceStopPackage"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/ForceStopPackage;->isAppProcess()Z

    move-result v0

    return v0
.end method
