.class Lcom/lody/virtual/client/hook/patchs/pm/GetActivityInfo;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetActivityInfo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
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
    .line 30
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/ComponentName;

    .line 31
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetActivityInfo;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    .line 35
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    and-int/lit16 v3, v1, 0x200

    if-nez v3, :cond_1

    .line 37
    or-int/lit16 v1, v1, 0x200

    .line 39
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/lody/virtual/client/local/VPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "getActivityInfo"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetActivityInfo;->isAppProcess()Z

    move-result v0

    return v0
.end method
