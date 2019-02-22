.class public Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUidEtc;
.super Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUid;
.source "GetPackageUidEtc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUid;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUid;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUid;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEnable()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUid;->isEnable()Z

    move-result v0

    return v0
.end method
