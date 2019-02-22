.class Lcom/lody/virtual/client/hook/patchs/pm/ResolveIntent;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "ResolveIntent.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
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
    .line 28
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    .line 29
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    .line 30
    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 31
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v3

    .line 32
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/lody/virtual/client/local/VPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 36
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "resolveIntent"

    return-object v0
.end method
