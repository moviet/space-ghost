.class Lcom/lody/virtual/client/hook/patchs/pm/DeletePackage;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "DeletePackage.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 24
    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/String;

    .line 26
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/core/VirtualCore;->uninstallApp(Ljava/lang/String;)Z

    .line 27
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/content/pm/IPackageDeleteObserver2;

    .line 28
    if-eqz v1, :cond_0

    .line 29
    const/4 v2, 0x0

    const-string v3, "done."

    invoke-interface {v1, v0, v2, v3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "deletePackage"

    return-object v0
.end method
