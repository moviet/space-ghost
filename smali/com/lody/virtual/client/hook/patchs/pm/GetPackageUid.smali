.class Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUid;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetPackageUid.java"


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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 22
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUid;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    .line 26
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/lody/virtual/client/local/VPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 27
    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "getPackageUid"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUid;->isAppProcess()Z

    move-result v0

    return v0
.end method
