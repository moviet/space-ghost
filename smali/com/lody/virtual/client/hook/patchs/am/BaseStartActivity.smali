.class public abstract Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "BaseStartActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
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

    const/4 v2, -0x1

    .line 18
    const-class v0, Landroid/content/Intent;

    invoke-static {p3, v0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v1

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    aget-object v0, p3, v1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;->filterIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p3, v1

    .line 31
    :cond_0
    return-object v3

    .line 22
    :cond_1
    const-class v0, [Landroid/content/Intent;

    invoke-static {p3, v0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    .line 23
    if-eq v0, v2, :cond_0

    .line 26
    aget-object v0, p3, v0

    check-cast v0, [Landroid/content/Intent;

    check-cast v0, [Landroid/content/Intent;

    .line 27
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 28
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;->filterIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public filterIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 35
    const-string v0, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.VIEW"

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "application/vnd.android.package-archive"

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    :cond_1
    sget-object v0, Lcom/lody/virtual/client/env/Constants;->ACTION_INSTALL_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :cond_2
    :goto_0
    invoke-static {}, Lcom/lody/virtual/client/local/VIntentFilterManager;->getInterface()Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_3

    .line 47
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-interface {v1, p1}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;->filter(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 52
    :cond_3
    :goto_1
    return-object p1

    .line 39
    :cond_4
    const-string v0, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.intent.action.DELETE"

    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.intent.action.VIEW"

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "package"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    :cond_5
    sget-object v0, Lcom/lody/virtual/client/env/Constants;->ACTION_UNINSTALL_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
