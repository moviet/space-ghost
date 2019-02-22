.class Lcom/lody/virtual/client/hook/patchs/pm/QueryContentProviders;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "QueryContentProviders.java"


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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 34
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    .line 35
    const/4 v1, 0x2

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/lody/virtual/client/local/VPackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

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
    const-string v0, "queryContentProviders"

    return-object v0
.end method
