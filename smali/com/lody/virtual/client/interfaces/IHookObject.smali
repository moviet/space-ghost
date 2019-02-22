.class public interface abstract Lcom/lody/virtual/client/interfaces/IHookObject;
.super Ljava/lang/Object;
.source "IHookObject.java"


# virtual methods
.method public abstract addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;
.end method

.method public abstract copyHooks(Lcom/lody/virtual/client/interfaces/IHookObject;)V
.end method

.method public abstract getAllHooks()Ljava/util/Map;
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
.end method

.method public abstract getBaseInterface()Ljava/lang/Object;
.end method

.method public abstract getHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/Hook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Lcom/lody/virtual/client/hook/base/Hook;",
            ">(",
            "Ljava/lang/String;",
            ")TH;"
        }
    .end annotation
.end method

.method public abstract getHookCount()I
.end method

.method public abstract getProxyInterface()Ljava/lang/Object;
.end method

.method public abstract removeAllHook()V
.end method

.method public abstract removeHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/Hook;
.end method

.method public abstract removeHook(Lcom/lody/virtual/client/hook/base/Hook;)V
.end method
