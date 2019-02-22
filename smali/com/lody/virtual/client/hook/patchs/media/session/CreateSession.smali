.class Lcom/lody/virtual/client/hook/patchs/media/session/CreateSession;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "CreateSession.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 21
    aget-object v0, p3, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/media/session/CreateSession;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    .line 24
    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "createSession"

    return-object v0
.end method
