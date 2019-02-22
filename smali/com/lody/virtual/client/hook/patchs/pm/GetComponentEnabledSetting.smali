.class Lcom/lody/virtual/client/hook/patchs/pm/GetComponentEnabledSetting;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetComponentEnabledSetting.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "getComponentEnabledSetting"

    return-object v0
.end method
