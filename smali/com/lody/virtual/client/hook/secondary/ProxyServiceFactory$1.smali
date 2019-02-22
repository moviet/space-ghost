.class final Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$1;
.super Ljava/lang/Object;
.source "ProxyServiceFactory.java"

# interfaces
.implements Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$1$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$1$1;-><init>(Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$1;Ljava/lang/ClassLoader;Landroid/os/IBinder;)V

    return-object v0
.end method
