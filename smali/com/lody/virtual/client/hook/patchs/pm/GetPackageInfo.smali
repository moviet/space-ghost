.class public final Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInfo;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetPackageInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    if-eqz p3, :cond_0

    aget-object v1, p3, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 35
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    .line 37
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/lody/virtual/client/local/VPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 42
    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInfo;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/ComponentUtils;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "getPackageInfo"

    return-object v0
.end method
