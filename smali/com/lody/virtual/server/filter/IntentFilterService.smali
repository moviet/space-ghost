.class public Lcom/lody/virtual/server/filter/IntentFilterService;
.super Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub;
.source "IntentFilterService.java"


# static fields
.field public static sService:Lcom/lody/virtual/server/filter/IntentFilterService;


# instance fields
.field public callBack:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/lody/virtual/server/filter/IntentFilterService;

    invoke-direct {v0}, Lcom/lody/virtual/server/filter/IntentFilterService;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/filter/IntentFilterService;->sService:Lcom/lody/virtual/server/filter/IntentFilterService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/server/filter/IntentFilterService;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lody/virtual/server/filter/IntentFilterService;->sService:Lcom/lody/virtual/server/filter/IntentFilterService;

    return-object v0
.end method


# virtual methods
.method public filter(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lody/virtual/server/filter/IntentFilterService;->callBack:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lody/virtual/server/filter/IntentFilterService;->callBack:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;->filter(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCallBack()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lody/virtual/server/filter/IntentFilterService;->callBack:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/lody/virtual/server/filter/IntentFilterService;->callBack:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    invoke-interface {v0}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallBack(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/filter/IntentFilterService;->callBack:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    .line 36
    :cond_0
    return-void
.end method
