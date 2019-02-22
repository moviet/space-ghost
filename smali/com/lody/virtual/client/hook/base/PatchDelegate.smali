.class public abstract Lcom/lody/virtual/client/hook/base/PatchDelegate;
.super Ljava/lang/Object;
.source "PatchDelegate.java"

# interfaces
.implements Lcom/lody/virtual/client/interfaces/Injectable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lody/virtual/client/interfaces/IHookObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lody/virtual/client/interfaces/Injectable;"
    }
.end annotation


# instance fields
.field protected baseObject:Ljava/lang/Object;

.field protected hookDelegate:Lcom/lody/virtual/client/interfaces/IHookObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->attachInterface(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method private addHook(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 76
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    .line 81
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/Hook;

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/lody/virtual/client/hook/base/PatchDelegate;->hookDelegate:Lcom/lody/virtual/client/interfaces/IHookObject;

    invoke-interface {v1, v0}, Lcom/lody/virtual/client/interfaces/IHookObject;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 89
    return-void

    .line 83
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/Hook;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instance Hook : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/PatchDelegate;->hookDelegate:Lcom/lody/virtual/client/interfaces/IHookObject;

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/interfaces/IHookObject;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    move-result-object v0

    return-object v0
.end method

.method protected afterHookApply(Lcom/lody/virtual/client/interfaces/IHookObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 96
    return-void
.end method

.method protected attachInterface(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/PatchDelegate;->baseObject:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/base/PatchDelegate;->hookDelegate:Lcom/lody/virtual/client/interfaces/IHookObject;

    .line 34
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 35
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/PatchDelegate;->hookDelegate:Lcom/lody/virtual/client/interfaces/IHookObject;

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->afterHookApply(Lcom/lody/virtual/client/interfaces/IHookObject;)V

    .line 36
    return-void
.end method

.method protected abstract createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/PatchDelegate;->hookDelegate:Lcom/lody/virtual/client/interfaces/IHookObject;

    return-object v0
.end method

.method public abstract inject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected onBindHooks()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/PatchDelegate;->hookDelegate:Lcom/lody/virtual/client/interfaces/IHookObject;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 49
    const-class v3, Lcom/lody/virtual/client/hook/base/Patch;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/Patch;

    .line 50
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/lody/virtual/client/hook/base/Patch;->value()[Ljava/lang/Class;

    move-result-object v6

    .line 53
    array-length v7, v6

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v8, v6, v4

    .line 54
    const-class v0, Lcom/lody/virtual/client/hook/base/ApiLimit;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/ApiLimit;

    .line 56
    if-eqz v0, :cond_8

    .line 57
    invoke-interface {v0}, Lcom/lody/virtual/client/hook/base/ApiLimit;->start()I

    move-result v3

    .line 58
    invoke-interface {v0}, Lcom/lody/virtual/client/hook/base/ApiLimit;->end()I

    move-result v0

    .line 59
    if-eq v3, v9, :cond_2

    if-le v5, v3, :cond_6

    :cond_2
    move v3, v1

    .line 60
    :goto_1
    if-eq v0, v9, :cond_3

    if-ge v5, v0, :cond_7

    :cond_3
    move v0, v1

    .line 61
    :goto_2
    if-eqz v3, :cond_4

    if-nez v0, :cond_8

    :cond_4
    move v0, v2

    .line 65
    :goto_3
    if-eqz v0, :cond_5

    .line 66
    invoke-direct {p0, v8}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->addHook(Ljava/lang/Class;)V

    .line 53
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_6
    move v3, v2

    .line 59
    goto :goto_1

    :cond_7
    move v0, v2

    .line 60
    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3
.end method
