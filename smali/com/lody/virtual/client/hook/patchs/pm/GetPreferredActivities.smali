.class Lcom/lody/virtual/client/hook/patchs/pm/GetPreferredActivities;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetPreferredActivities.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
    .line 25
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/HookUtils;->replaceLastAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "getPreferredActivities"

    return-object v0
.end method
