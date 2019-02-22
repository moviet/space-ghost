.class public Lcom/lody/virtual/server/secondary/BinderDelegateService;
.super Lcom/lody/virtual/service/IBinderDelegateService$Stub;
.source "BinderDelegateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/secondary/BinderDelegateService$ProxyBinderFactory;
    }
.end annotation


# static fields
.field private static final mFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/secondary/BinderDelegateService$ProxyBinderFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Landroid/content/ComponentName;

.field private service:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/secondary/BinderDelegateService;->mFactories:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/lody/virtual/server/secondary/BinderDelegateService;->mFactories:Ljava/util/Map;

    const-string v1, "android.accounts.IAccountAuthenticator"

    new-instance v2, Lcom/lody/virtual/server/secondary/BinderDelegateService$1;

    invoke-direct {v2}, Lcom/lody/virtual/server/secondary/BinderDelegateService$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lody/virtual/service/IBinderDelegateService$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lody/virtual/server/secondary/BinderDelegateService;->name:Landroid/content/ComponentName;

    .line 37
    instance-of v0, p2, Landroid/os/Binder;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 38
    check-cast v0, Landroid/os/Binder;

    .line 39
    sget-object v1, Lcom/lody/virtual/server/secondary/BinderDelegateService;->mFactories:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/secondary/BinderDelegateService$ProxyBinderFactory;

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v1, v0}, Lcom/lody/virtual/server/secondary/BinderDelegateService$ProxyBinderFactory;->create(Landroid/os/Binder;)Landroid/os/IBinder;

    move-result-object p2

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/lody/virtual/server/secondary/BinderDelegateService;->service:Landroid/os/IBinder;

    .line 45
    return-void
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lody/virtual/server/secondary/BinderDelegateService;->name:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getService()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lody/virtual/server/secondary/BinderDelegateService;->service:Landroid/os/IBinder;

    return-object v0
.end method
