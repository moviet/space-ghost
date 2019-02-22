.class Lcom/lody/virtual/client/hook/patchs/am/GetContentProvider;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetContentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetContentProvider"


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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetContentProvider;->getProviderNameIndex()I

    move-result v2

    .line 31
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v3

    .line 33
    const-string v4, "GetContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nameIdx:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v7, v3}, Lcom/lody/virtual/client/local/VPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 35
    if-eqz v4, :cond_3

    iget-boolean v0, v4, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v0, :cond_3

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/am/GetContentProvider;->isAppPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v3}, Lcom/lody/virtual/client/local/VActivityManager;->initProcess(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 37
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    move-object v0, v1

    .line 63
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-static {v0}, Lcom/lody/virtual/client/stub/StubManifest;->getStubAuthority(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    .line 41
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 42
    if-nez v2, :cond_1

    move-object v0, v1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lmirror/android/app/IActivityManager$ContentProviderHolder;->provider:Lmirror/RefObject;

    invoke-virtual {v0, v2}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 46
    if-eqz v0, :cond_2

    .line 47
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/lody/virtual/client/local/VActivityManager;->acquireProviderClient(ILandroid/content/pm/ProviderInfo;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    :cond_2
    sget-object v1, Lmirror/android/app/IActivityManager$ContentProviderHolder;->provider:Lmirror/RefObject;

    invoke-virtual {v1, v2, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    sget-object v0, Lmirror/android/app/IActivityManager$ContentProviderHolder;->info:Lmirror/RefObject;

    invoke-virtual {v0, v2, v4}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_5

    .line 55
    sget-object v0, Lmirror/android/app/IActivityManager$ContentProviderHolder;->provider:Lmirror/RefObject;

    invoke-virtual {v0, v2}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 56
    sget-object v1, Lmirror/android/app/IActivityManager$ContentProviderHolder;->info:Lmirror/RefObject;

    invoke-virtual {v1, v2}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 57
    if-eqz v0, :cond_4

    .line 58
    const/4 v3, 0x1

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->createProxy(ZLjava/lang/String;Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    :cond_4
    sget-object v1, Lmirror/android/app/IActivityManager$ContentProviderHolder;->provider:Lmirror/RefObject;

    invoke-virtual {v1, v2, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 61
    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 63
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "getContentProvider"

    return-object v0
.end method

.method public getProviderNameIndex()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetContentProvider;->isAppProcess()Z

    move-result v0

    return v0
.end method
