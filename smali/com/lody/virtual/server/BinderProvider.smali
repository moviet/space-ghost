.class public final Lcom/lody/virtual/server/BinderProvider;
.super Lcom/lody/virtual/helper/component/BaseContentProvider;
.source "BinderProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;
    }
.end annotation


# instance fields
.field private final mServiceFetcher:Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lody/virtual/helper/component/BaseContentProvider;-><init>()V

    .line 28
    new-instance v0, Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;-><init>(Lcom/lody/virtual/server/BinderProvider;Lcom/lody/virtual/server/BinderProvider$1;)V

    iput-object v0, p0, Lcom/lody/virtual/server/BinderProvider;->mServiceFetcher:Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;

    return-void
.end method

.method private addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p1, p2}, Lcom/lody/virtual/server/ServiceCache;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 56
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v1, "_VA_|_binder_"

    iget-object v2, p0, Lcom/lody/virtual/server/BinderProvider;->mServiceFetcher:Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/compat/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    return-object v0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 32
    invoke-virtual {p0}, Lcom/lody/virtual/server/BinderProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/lody/virtual/client/stub/DaemonService;->startup(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->isStartup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v3

    .line 37
    :cond_1
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->systemReady()V

    .line 38
    const-string v1, "package"

    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 39
    invoke-static {v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->systemReady(Landroid/content/Context;)V

    .line 40
    const-string v1, "activity"

    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 41
    const-string v1, "user"

    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 42
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->systemReady()V

    .line 43
    const-string v1, "app"

    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 44
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->systemReady()V

    .line 45
    const-string v1, "account"

    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->get()Lcom/lody/virtual/server/accounts/VAccountManagerService;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 46
    const-string v1, "intent_filter"

    invoke-static {}, Lcom/lody/virtual/server/filter/IntentFilterService;->get()Lcom/lody/virtual/server/filter/IntentFilterService;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 48
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->systemReady(Landroid/content/Context;)V

    .line 49
    const-string v0, "job"

    invoke-static {}, Lcom/lody/virtual/server/job/JobSchedulerService;->getStub()Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method
