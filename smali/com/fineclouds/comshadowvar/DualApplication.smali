.class public Lcom/fineclouds/spaceghostq1/DualApplication;
.super Landroid/app/Application;
.source "DualApplication.java"


# static fields
.field private static a:Lcom/fineclouds/spaceghostq1/DualApplication;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v7/app/e;->a(Z)V

    .line 30
    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getUnHookPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 72
    sget-object v3, Lcom/fineclouds/spaceghostq1/virtualapp/a/b;->a:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 73
    invoke-virtual {v1, v5}, Lcom/lody/virtual/client/core/VirtualCore;->isAppInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 78
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v7

    const/16 v8, 0x22

    invoke-virtual {v7, v6, v8}, Lcom/lody/virtual/client/core/VirtualCore;->installApp(Ljava/lang/String;I)Lcom/lody/virtual/helper/proto/InstallResult;

    move-result-object v6

    .line 81
    iget-boolean v7, v6, Lcom/lody/virtual/helper/proto/InstallResult;->isSuccess:Z

    if-nez v7, :cond_0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Warning: Unable to install app %s: %s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v5, v9, v10

    const/4 v5, 0x1

    iget-object v6, v6, Lcom/lody/virtual/helper/proto/InstallResult;->error:Ljava/lang/String;

    aput-object v6, v9, v5

    invoke-static {v7, v8, v9}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v5

    goto :goto_1

    .line 88
    :cond_2
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lody/virtual/IOHook;->ENABLE_IO_HOOK:Z

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "virtual_stub_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/StubManifest;->STUB_CP_AUTHORITY:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "virtual.service.BinderProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/service/ServiceManagerNative;->SERVICE_CP_AUTH:Ljava/lang/String;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 41
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/core/VirtualCore;->startup(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 54
    sput-object p0, Lcom/fineclouds/spaceghostq1/DualApplication;->a:Lcom/fineclouds/spaceghostq1/DualApplication;

    .line 55
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 57
    const-string v0, "fanan_dual001"

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/b;->a(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lfineclouds/com/mylibrary/a/b/c;

    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lfineclouds/com/mylibrary/a/b/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/b;->a(Lfineclouds/com/mylibrary/a/b/c;)V

    .line 59
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {p0}, Ljonathanfinerty/once/b;->a(Landroid/content/Context;)V

    .line 61
    const-string v0, "DualApplication"

    const-string v1, "onCreate: VirtualCore -> isMainProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualApplication;->a()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/virtualapp/a;

    invoke-direct {v1}, Lcom/fineclouds/spaceghostq1/virtualapp/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/VirtualCore;->setPhoneInfoDelegate(Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;)V

    goto :goto_0
.end method
