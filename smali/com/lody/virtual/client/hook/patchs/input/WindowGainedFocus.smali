.class Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "WindowGainedFocus.java"


# instance fields
.field private editorInfoIndex:I

.field private noEditorInfo:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;->noEditorInfo:Ljava/lang/Boolean;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;->editorInfoIndex:I

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
    .line 29
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;->noEditorInfo:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 30
    const-class v0, Landroid/view/inputmethod/EditorInfo;

    invoke-static {p3, v0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;->editorInfoIndex:I

    .line 31
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;->editorInfoIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;->noEditorInfo:Ljava/lang/Boolean;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;->noEditorInfo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;->editorInfoIndex:I

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/inputmethod/EditorInfo;

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 39
    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 31
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "windowGainedFocus"

    return-object v0
.end method
