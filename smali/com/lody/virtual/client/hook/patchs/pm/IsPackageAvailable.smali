.class Lcom/lody/virtual/client/hook/patchs/pm/IsPackageAvailable;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "IsPackageAvailable.java"


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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 21
    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/pm/IsPackageAvailable;->isAppPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 24
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
    .line 15
    const-string v0, "isPackageAvailable"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/IsPackageAvailable;->isAppProcess()Z

    move-result v0

    return v0
.end method
