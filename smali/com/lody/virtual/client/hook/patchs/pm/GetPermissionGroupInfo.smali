.class public Lcom/lody/virtual/client/hook/patchs/pm/GetPermissionGroupInfo;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetPermissionGroupInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
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
    .line 26
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 27
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 28
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lody/virtual/client/local/VPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/Hook;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "getPermissionGroupInfo"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetPermissionGroupInfo;->isAppProcess()Z

    move-result v0

    return v0
.end method
