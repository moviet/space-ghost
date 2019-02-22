.class Lcom/lody/virtual/client/hook/patchs/am/GetContentProviderExternal;
.super Lcom/lody/virtual/client/hook/patchs/am/GetContentProvider;
.source "GetContentProviderExternal.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "getContentProviderExternal"

    return-object v0
.end method

.method public getProviderNameIndex()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetContentProviderExternal;->isAppProcess()Z

    move-result v0

    return v0
.end method
