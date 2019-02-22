.class abstract Lcom/lody/virtual/client/hook/patchs/window/session/BaseReplacePkgName;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "BaseReplacePkgName.java"


# instance fields
.field private cacheIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/lody/virtual/client/hook/patchs/window/session/BaseReplacePkgName;->cacheIndex:I

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
    const/4 v1, -0x1

    .line 20
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/window/session/BaseReplacePkgName;->cacheIndex:I

    if-ne v0, v1, :cond_0

    .line 21
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {p3, v0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/hook/patchs/window/session/BaseReplacePkgName;->cacheIndex:I

    .line 23
    :cond_0
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/window/session/BaseReplacePkgName;->cacheIndex:I

    if-eq v0, v1, :cond_1

    .line 24
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/window/session/BaseReplacePkgName;->cacheIndex:I

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 25
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/session/BaseReplacePkgName;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 29
    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
