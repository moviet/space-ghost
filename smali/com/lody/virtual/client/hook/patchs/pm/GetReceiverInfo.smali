.class Lcom/lody/virtual/client/hook/patchs/pm/GetReceiverInfo;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetReceiverInfo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
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

    .line 29
    aget-object v0, p3, v3

    check-cast v0, Landroid/content/ComponentName;

    .line 30
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetReceiverInfo;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 34
    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_1

    .line 35
    or-int/lit16 v1, v1, 0x200

    .line 37
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/lody/virtual/client/local/VPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "getReceiverInfo"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetReceiverInfo;->isAppProcess()Z

    move-result v0

    return v0
.end method
