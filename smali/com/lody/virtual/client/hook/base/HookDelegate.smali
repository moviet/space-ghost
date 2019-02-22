.class public abstract Lcom/lody/virtual/client/hook/base/HookDelegate;
.super Ljava/lang/Object;
.source "HookDelegate.java"

# interfaces
.implements Lcom/lody/virtual/client/interfaces/IHookObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lody/virtual/client/interfaces/IHookObject;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private internalHookMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/client/hook/base/Hook;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseInterface:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mProxyInterface:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/base/HookDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;-><init>([Ljava/lang/Class;)V

    .line 51
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->internalHookMapping:Ljava/util/Map;

    .line 38
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->createInterface()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->mBaseInterface:Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->mBaseInterface:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 40
    if-nez p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->mBaseInterface:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/client/hook/utils/HookUtils;->getAllInterface(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->mBaseInterface:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lody/virtual/client/hook/base/HookDelegate$HookHandler;-><init>(Lcom/lody/virtual/client/hook/base/HookDelegate;Lcom/lody/virtual/client/hook/base/HookDelegate$1;)V

    invoke-static {v0, p1, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->mProxyInterface:Ljava/lang/Object;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v0, Lcom/lody/virtual/client/hook/base/HookDelegate;->TAG:Ljava/lang/String;

    const-string v1, "Unable to build HookDelegate: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/lody/virtual/client/hook/base/HookDelegate;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->mBaseInterface:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;
    .locals 5

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/Hook;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->internalHookMapping:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/Hook;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/lody/virtual/client/hook/base/HookDelegate;->TAG:Ljava/lang/String;

    const-string v1, "Hook(%s) from class(%s) have been added, can\'t add again."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/Hook;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 71
    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_0
    :goto_0
    return-object p1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->internalHookMapping:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/Hook;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public copyHooks(Lcom/lody/virtual/client/interfaces/IHookObject;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->internalHookMapping:Ljava/util/Map;

    invoke-interface {p1}, Lcom/lody/virtual/client/interfaces/IHookObject;->getAllHooks()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 59
    return-void
.end method

.method protected abstract createInterface()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getAllHooks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/client/hook/base/Hook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->internalHookMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getBaseInterface()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->mBaseInterface:Ljava/lang/Object;

    return-object v0
.end method

.method public getHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/Hook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Lcom/lody/virtual/client/hook/base/Hook;",
            ">(",
            "Ljava/lang/String;",
            ")TH;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->internalHookMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/Hook;

    return-object v0
.end method

.method public getHookCount()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->internalHookMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getProxyInterface()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->mProxyInterface:Ljava/lang/Object;

    return-object v0
.end method

.method public removeAllHook()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->internalHookMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 111
    return-void
.end method

.method public removeHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/Hook;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookDelegate;->internalHookMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/Hook;

    return-object v0
.end method

.method public removeHook(Lcom/lody/virtual/client/hook/base/Hook;)V
    .locals 1

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/Hook;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->removeHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 103
    :cond_0
    return-void
.end method
