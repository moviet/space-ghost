.class Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1$1;
.super Ljava/lang/Object;
.source "ProxyServiceFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1;->createHandler(Ljava/lang/Class;Landroid/os/IInterface;)Ljava/lang/reflect/InvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1;

.field final synthetic val$base:Landroid/os/IInterface;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1;Landroid/os/IInterface;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1$1;->this$1:Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1;

    iput-object p2, p0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1$1;->val$base:Landroid/os/IInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1$1;->val$base:Landroid/os/IInterface;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 89
    :cond_0
    throw v0
.end method
