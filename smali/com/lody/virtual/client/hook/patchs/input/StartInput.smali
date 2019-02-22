.class Lcom/lody/virtual/client/hook/patchs/input/StartInput;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "StartInput.java"


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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 25
    array-length v0, p3

    if-le v0, v1, :cond_0

    aget-object v0, p3, v1

    instance-of v0, v0, Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    .line 26
    aget-object v0, p3, v1

    check-cast v0, Landroid/view/inputmethod/EditorInfo;

    .line 27
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/input/StartInput;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 29
    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "startInput"

    return-object v0
.end method
