.class Lcom/lody/virtual/client/hook/patchs/pm/GetApplicationInfo;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetApplicationInfo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
    .line 25
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 26
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 27
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetApplicationInfo;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :cond_1
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    .line 31
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/lody/virtual/client/local/VPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 36
    if-eqz v0, :cond_2

    .line 37
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/ComponentUtils;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "getApplicationInfo"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetApplicationInfo;->isAppProcess()Z

    move-result v0

    return v0
.end method
