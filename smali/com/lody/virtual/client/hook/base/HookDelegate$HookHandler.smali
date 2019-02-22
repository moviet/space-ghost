.class Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;
.super Ljava/lang/Object;
.source "HookDelegate.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/base/HookDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HookHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/base/HookDelegate;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/base/HookDelegate;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;->this$0:Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/base/HookDelegate;Lcom/lody/virtual/client/hook/base/HookDelegate$1;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;-><init>(Lcom/lody/virtual/client/hook/base/HookDelegate;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;->this$0:Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/Hook;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/Hook;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;->this$0:Lcom/lody/virtual/client/hook/base/HookDelegate;

    # getter for: Lcom/lody/virtual/client/hook/base/HookDelegate;->mBaseInterface:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lody/virtual/client/hook/base/HookDelegate;->access$100(Lcom/lody/virtual/client/hook/base/HookDelegate;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/lody/virtual/client/hook/base/Hook;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;->this$0:Lcom/lody/virtual/client/hook/base/HookDelegate;

    # getter for: Lcom/lody/virtual/client/hook/base/HookDelegate;->mBaseInterface:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lody/virtual/client/hook/base/HookDelegate;->access$100(Lcom/lody/virtual/client/hook/base/HookDelegate;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/lody/virtual/client/hook/base/Hook;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;->this$0:Lcom/lody/virtual/client/hook/base/HookDelegate;

    # getter for: Lcom/lody/virtual/client/hook/base/HookDelegate;->mBaseInterface:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lody/virtual/client/hook/base/HookDelegate;->access$100(Lcom/lody/virtual/client/hook/base/HookDelegate;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, v1}, Lcom/lody/virtual/client/hook/base/Hook;->afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;->this$0:Lcom/lody/virtual/client/hook/base/HookDelegate;

    # getter for: Lcom/lody/virtual/client/hook/base/HookDelegate;->mBaseInterface:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->access$100(Lcom/lody/virtual/client/hook/base/HookDelegate;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_1

    .line 168
    throw v1

    .line 170
    :cond_1
    throw v0
.end method
