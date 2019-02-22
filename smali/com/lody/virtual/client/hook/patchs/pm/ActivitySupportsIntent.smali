.class public Lcom/lody/virtual/client/hook/patchs/pm/ActivitySupportsIntent;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "ActivitySupportsIntent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
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
    .line 23
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/ComponentName;

    .line 24
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/content/Intent;

    .line 25
    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/lody/virtual/client/local/VPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "activitySupportsIntent"

    return-object v0
.end method
