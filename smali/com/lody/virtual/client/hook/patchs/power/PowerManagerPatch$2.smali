.class Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch$2;
.super Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;
.source "PowerManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;->onBindHooks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch$2;->this$0:Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;

    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

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
    .line 50
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    iget-object v1, p0, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch$2;->this$0:Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;

    # invokes: Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;->onHandleError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;->access$000(Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
