.class Lcom/lody/virtual/client/hook/patchs/pm/QueryIntentContentProviders;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "QueryIntentContentProviders.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
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
    .line 34
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v3

    .line 35
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v4

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 35
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/lody/virtual/client/local/VPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-static {p2}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->isReturnParceledListSlice(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {v0}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "queryIntentContentProviders"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/QueryIntentContentProviders;->isAppProcess()Z

    move-result v0

    return v0
.end method
