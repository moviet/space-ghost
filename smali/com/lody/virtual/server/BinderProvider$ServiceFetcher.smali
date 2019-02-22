.class Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;
.super Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub;
.source "BinderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/BinderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceFetcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/BinderProvider;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/BinderProvider;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;->this$0:Lcom/lody/virtual/server/BinderProvider;

    invoke-direct {p0}, Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/BinderProvider;Lcom/lody/virtual/server/BinderProvider$1;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;-><init>(Lcom/lody/virtual/server/BinderProvider;)V

    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 77
    invoke-static {p1, p2}, Lcom/lody/virtual/server/ServiceCache;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 79
    :cond_0
    return-void
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-static {p1}, Lcom/lody/virtual/server/ServiceCache;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-static {p1}, Lcom/lody/virtual/server/ServiceCache;->removeService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 86
    :cond_0
    return-void
.end method
