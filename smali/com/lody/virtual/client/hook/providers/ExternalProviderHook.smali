.class public Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;
.super Lcom/lody/virtual/client/hook/providers/ProviderHook;
.source "ExternalProviderHook.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;-><init>(Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected varargs processArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/core/VirtualCore;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    .line 25
    :cond_0
    return-void
.end method
