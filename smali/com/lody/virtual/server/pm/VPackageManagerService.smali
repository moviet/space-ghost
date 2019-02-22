.class public Lcom/lody/virtual/server/pm/VPackageManagerService;
.super Lcom/lody/virtual/service/IPackageManager$Stub;
.source "VPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;,
        Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;
    }
.end annotation


# static fields
.field private static final DEBUG_SHOW_INFO:Z = false

.field static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final gService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/lody/virtual/server/pm/VPackageManagerService;",
            ">;"
        }
    .end annotation
.end field

.field private static final mProviderInitOrderSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final mResolvePrioritySorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

.field private final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Permission;",
            ">;"
        }
    .end annotation
.end field

.field final mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

.field final mProvidersByAuthority:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mProvidersByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

.field final mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->gService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    new-instance v0, Lcom/lody/virtual/server/pm/VPackageManagerService$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    .line 80
    new-instance v0, Lcom/lody/virtual/server/pm/VPackageManagerService$2;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$2;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/lody/virtual/service/IPackageManager$Stub;-><init>()V

    .line 88
    new-instance v1, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    invoke-direct {v1, p0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;-><init>(Lcom/lody/virtual/server/pm/VPackageManagerService;)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    .line 89
    new-instance v1, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    invoke-direct {v1, p0, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;-><init>(Lcom/lody/virtual/server/pm/VPackageManagerService;Lcom/lody/virtual/server/pm/VPackageManagerService$1;)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    .line 90
    new-instance v1, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    invoke-direct {v1, p0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;-><init>(Lcom/lody/virtual/server/pm/VPackageManagerService;)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    new-instance v0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissions:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByAuthority:Ljava/util/HashMap;

    .line 99
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCache;->sPackageCaches:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$300(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lcom/lody/virtual/server/pm/VPackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 373
    if-eqz p4, :cond_3

    .line 374
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 375
    if-ne v0, v1, :cond_0

    .line 376
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 401
    :goto_0
    return-object v0

    .line 377
    :cond_0
    if-le v0, v1, :cond_3

    .line 380
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 381
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 384
    iget v2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v2, v3, :cond_1

    iget-boolean v0, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v1, :cond_2

    .line 386
    :cond_1
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 388
    :cond_2
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 401
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get()Lcom/lody/virtual/server/pm/VPackageManagerService;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->gService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/pm/VPackageManagerService;

    return-object v0
.end method

.method private getFirstInstallTime(Landroid/content/pm/PackageParser$Package;)J
    .locals 2

    .prologue
    .line 272
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 273
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastInstallTime(Landroid/content/pm/PackageParser$Package;)J
    .locals 2

    .prologue
    .line 267
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 268
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method private static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .prologue
    .line 114
    if-eqz p0, :cond_0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static systemReady()V
    .locals 5

    .prologue
    .line 104
    new-instance v0, Lcom/lody/virtual/server/pm/VPackageManagerService;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/VPackageManagerService;-><init>()V

    .line 105
    new-instance v1, Lcom/lody/virtual/server/pm/VUserManagerService;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [C

    iget-object v4, v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/lody/virtual/server/pm/VUserManagerService;-><init>(Landroid/content/Context;Lcom/lody/virtual/server/pm/VPackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    sget-object v1, Lcom/lody/virtual/server/pm/VPackageManagerService;->gService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 107
    return-void
.end method


# virtual methods
.method public activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 302
    iget-object v11, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v11

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    # getter for: Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->access$100(Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    move-object v8, v0

    .line 304
    if-nez v8, :cond_0

    .line 305
    monitor-exit v11

    move v1, v9

    .line 313
    :goto_0
    return v1

    :cond_0
    move v10, v9

    .line 307
    :goto_1
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 308
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    const-string v7, "PackageManager"

    move-object v3, p3

    .line 308
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 310
    const/4 v1, 0x1

    monitor-exit v11

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 307
    :cond_1
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    .line 313
    :cond_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v9

    goto :goto_0
.end method

.method public analyzePackageLocked(Landroid/content/pm/PackageParser$Package;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 119
    :goto_0
    if-ge v2, v3, :cond_1

    .line 120
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 121
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 122
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    const-string v5, "activity"

    invoke-virtual {v4, v0, v5}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 119
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 127
    :goto_1
    if-ge v2, v3, :cond_3

    .line 128
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Service;

    .line 129
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 130
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 132
    :cond_2
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    invoke-virtual {v4, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->addService(Landroid/content/pm/PackageParser$Service;)V

    .line 127
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 134
    :cond_3
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 135
    :goto_2
    if-ge v2, v3, :cond_5

    .line 136
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 137
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 138
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 140
    :cond_4
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    const-string v5, "receiver"

    invoke-virtual {v4, v0, v5}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 135
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 143
    :cond_5
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 144
    :goto_3
    if-ge v3, v4, :cond_a

    .line 145
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 146
    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 147
    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iput-object v5, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 149
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v2, v5, :cond_7

    .line 150
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    invoke-virtual {v2, v0}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->addProvider(Landroid/content/pm/PackageParser$Provider;)V

    .line 152
    :cond_7
    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 153
    array-length v6, v5

    move v2, v1

    :goto_4
    if-ge v2, v6, :cond_9

    aget-object v7, v5, v2

    .line 154
    iget-object v8, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByAuthority:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 155
    iget-object v8, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByAuthority:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 158
    :cond_9
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 161
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 162
    :goto_5
    if-ge v2, v3, :cond_b

    .line 163
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Permission;

    .line 164
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissions:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/content/pm/PackageParser$Permission;->className:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 166
    :cond_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 167
    :goto_6
    if-ge v1, v2, :cond_c

    .line 168
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 169
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/content/pm/PackageParser$PermissionGroup;->className:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 171
    :cond_c
    return-void
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 232
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    const/4 v0, -0x1

    .line 236
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public checkUserId(I)V
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    return-void
.end method

.method public cleanUpUserLILPw(I)V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public createNewUserLILPw(ILjava/io/File;)V
    .locals 0

    .prologue
    .line 767
    return-void
.end method

.method public deletePackageLocked(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 175
    if-nez v0, :cond_1

    .line 217
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 179
    :goto_0
    if-ge v3, v4, :cond_2

    .line 180
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 181
    iget-object v5, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    const-string v6, "activity"

    invoke-virtual {v5, v1, v6}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 179
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 183
    :cond_2
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 184
    :goto_1
    if-ge v3, v4, :cond_3

    .line 185
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    .line 186
    iget-object v5, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    invoke-virtual {v5, v1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->removeService(Landroid/content/pm/PackageParser$Service;)V

    .line 184
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 188
    :cond_3
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 189
    :goto_2
    if-ge v3, v4, :cond_4

    .line 190
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 191
    iget-object v5, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    const-string v6, "receiver"

    invoke-virtual {v5, v1, v6}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 189
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 194
    :cond_4
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    .line 195
    :goto_3
    if-ge v4, v5, :cond_7

    .line 196
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    .line 197
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v3, v6, :cond_5

    .line 198
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    invoke-virtual {v3, v1}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->removeProvider(Landroid/content/pm/PackageParser$Provider;)V

    .line 200
    :cond_5
    iget-object v3, v1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 201
    array-length v7, v6

    move v3, v2

    :goto_4
    if-ge v3, v7, :cond_6

    aget-object v8, v6, v3

    .line 202
    iget-object v9, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByAuthority:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 204
    :cond_6
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 207
    :cond_7
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 208
    :goto_5
    if-ge v3, v4, :cond_8

    .line 209
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 210
    iget-object v5, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissions:Ljava/util/HashMap;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->className:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    .line 212
    :cond_8
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 213
    :goto_6
    if-ge v2, v3, :cond_0

    .line 214
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 215
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    iget-object v1, v1, Landroid/content/pm/PackageParser$PermissionGroup;->className:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4

    .prologue
    .line 284
    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 285
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    # getter for: Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->access$100(Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-static {v0, p2}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 289
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 290
    if-eqz v0, :cond_0

    .line 291
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 292
    invoke-static {v0, v1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 293
    monitor-exit v2

    move-object v0, v1

    .line 297
    :goto_0
    return-object v0

    .line 296
    :cond_0
    monitor-exit v2

    .line 297
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 669
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 670
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 671
    new-instance v4, Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v4, v0}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 673
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .prologue
    .line 695
    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 696
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 698
    if-eqz v0, :cond_0

    .line 699
    invoke-static {v0, p2}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 700
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 701
    invoke-static {v0, v1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixApplicationInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ApplicationInfo;I)V

    .line 702
    monitor-exit v2

    move-object v0, v1

    .line 705
    :goto_0
    return-object v0

    .line 704
    :cond_0
    monitor-exit v2

    .line 705
    const/4 v0, 0x0

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInstalledApplications(II)Lcom/lody/virtual/helper/proto/VParceledListSlice;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/lody/virtual/helper/proto/VParceledListSlice",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 627
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 628
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 630
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    new-instance v0, Lcom/lody/virtual/helper/proto/VParceledListSlice;

    invoke-direct {v0, v1}, Lcom/lody/virtual/helper/proto/VParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getInstalledPackages(II)Lcom/lody/virtual/helper/proto/VParceledListSlice;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/lody/virtual/helper/proto/VParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 614
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 615
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 617
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 618
    invoke-virtual {p0, v0, p1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    new-instance v0, Lcom/lody/virtual/helper/proto/VParceledListSlice;

    invoke-direct {v0, v1}, Lcom/lody/virtual/helper/proto/VParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 10

    .prologue
    .line 241
    iget-object v9, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v9

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 243
    if-eqz v2, :cond_2

    .line 244
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    move-object v8, v0

    .line 245
    and-int/lit8 v3, p2, 0x40

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_0

    .line 246
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v4, "fake-signature"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v4, "fake-signature"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    if-eqz v3, :cond_0

    .line 249
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/pm/Signature;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/pm/Signature;

    invoke-direct {v6, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    iput-object v4, v2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 256
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getFirstInstallTime(Landroid/content/pm/PackageParser$Package;)J

    move-result-wide v4

    invoke-direct {p0, v2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getLastInstallTime(Landroid/content/pm/PackageParser$Package;)J

    move-result-wide v6

    move v3, p2

    .line 255
    invoke-static/range {v2 .. v7}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;IJJ)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 257
    if-eqz v2, :cond_2

    .line 258
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v8, v3, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixApplicationInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ApplicationInfo;I)V

    .line 259
    monitor-exit v9

    .line 263
    :goto_1
    return-object v2

    .line 252
    :cond_1
    iget-object v3, v8, Lcom/lody/virtual/helper/proto/AppSetting;->parser:Landroid/content/pm/PackageParser;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->collectCertificates(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 726
    invoke-virtual {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 727
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 729
    if-eqz v0, :cond_0

    .line 730
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 731
    iget v0, v0, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    invoke-static {p2, v0}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v0

    monitor-exit v1

    .line 733
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 710
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v2

    .line 711
    invoke-virtual {p0, v2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 712
    monitor-enter p0

    .line 713
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 714
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 715
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 716
    iget v1, v1, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    invoke-static {v2, v1}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 717
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 720
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 3

    .prologue
    .line 656
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 658
    if-eqz v0, :cond_0

    .line 659
    new-instance v1, Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v1, v0}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    monitor-exit v2

    move-object v0, v1

    .line 662
    :goto_0
    return-object v0

    .line 661
    :cond_0
    monitor-exit v2

    .line 662
    const/4 v0, 0x0

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 3

    .prologue
    .line 638
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Permission;

    .line 640
    if-eqz v0, :cond_0

    .line 641
    new-instance v1, Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v1, v0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    monitor-exit v2

    move-object v0, v1

    .line 644
    :goto_0
    return-object v0

    .line 643
    :cond_0
    monitor-exit v2

    .line 644
    const/4 v0, 0x0

    goto :goto_0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 4

    .prologue
    .line 351
    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 352
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 354
    if-eqz v0, :cond_0

    .line 355
    invoke-static {v0, p2}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 356
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 357
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 358
    invoke-static {v0, v1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 359
    monitor-exit v2

    move-object v0, v1

    .line 362
    :goto_0
    return-object v0

    .line 361
    :cond_0
    monitor-exit v2

    .line 362
    const/4 v0, 0x0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 320
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    # getter for: Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->access$100(Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-static {v0, p2}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 324
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 325
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 326
    invoke-static {v0, v1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 327
    monitor-exit v2

    move-object v0, v1

    .line 330
    :goto_0
    return-object v0

    .line 329
    :cond_0
    monitor-exit v2

    .line 330
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 4

    .prologue
    .line 335
    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 336
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    # getter for: Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->access$200(Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Service;

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-static {v0, p2}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 340
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 341
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 342
    invoke-static {v0, v1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 343
    monitor-exit v2

    move-object v0, v1

    .line 346
    :goto_0
    return-object v0

    .line 345
    :cond_0
    monitor-exit v2

    .line 346
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSharedLibraries(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 223
    if-eqz v0, :cond_0

    .line 224
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    monitor-exit v1

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 758
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/service/IPackageManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 761
    throw v0
.end method

.method public queryContentProviders(Ljava/lang/String;II)Lcom/lody/virtual/helper/proto/VParceledListSlice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/lody/virtual/helper/proto/VParceledListSlice",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    invoke-static {p2}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v2

    .line 592
    invoke-virtual {p0, v2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 593
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 595
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v4

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 597
    iget-object v1, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 598
    if-eqz p1, :cond_1

    iget v6, v1, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    invoke-static {p2}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 599
    :cond_1
    invoke-static {v0, p3}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 600
    iget-object v6, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v6, v2}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixApplicationInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ApplicationInfo;I)V

    .line 601
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 606
    sget-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 608
    :cond_3
    new-instance v0, Lcom/lody/virtual/helper/proto/VParceledListSlice;

    invoke-direct {v0, v3}, Lcom/lody/virtual/helper/proto/VParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 407
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 408
    if-nez v0, :cond_4

    .line 409
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_4

    .line 410
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 411
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 412
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v1, v0

    .line 416
    :goto_0
    if-eqz v1, :cond_1

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    invoke-virtual {p0, v1, p3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_0

    .line 420
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 421
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 422
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    :goto_1
    return-object v0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    .line 429
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 430
    if-nez v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 433
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 434
    if-eqz v0, :cond_3

    .line 435
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 437
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 556
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 557
    if-nez v0, :cond_4

    .line 558
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_4

    .line 559
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 560
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 561
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v1, v0

    .line 565
    :goto_0
    if-eqz v1, :cond_1

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    invoke-virtual {p0, v1, p3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 568
    if-eqz v1, :cond_0

    .line 569
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 570
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 571
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_0
    :goto_1
    return-object v0

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    .line 577
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 578
    if-nez v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 581
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 582
    if-eqz v0, :cond_3

    .line 583
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 585
    :cond_3
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 444
    if-nez v0, :cond_4

    .line 445
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_4

    .line 446
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 447
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 448
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v1, v0

    .line 452
    :goto_0
    if-eqz v1, :cond_1

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    invoke-virtual {p0, v1, p3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 455
    if-eqz v1, :cond_0

    .line 456
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 457
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 458
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    :goto_1
    return-object v0

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    .line 465
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 466
    if-nez v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 469
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 470
    if-eqz v0, :cond_3

    .line 471
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 473
    :cond_3
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 518
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 519
    if-nez v0, :cond_4

    .line 520
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_4

    .line 521
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 522
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v1, v0

    .line 527
    :goto_0
    if-eqz v1, :cond_1

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 529
    invoke-virtual {p0, v1, p3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 530
    if-eqz v1, :cond_0

    .line 531
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 532
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 533
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_0
    :goto_1
    return-object v0

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    .line 540
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 541
    if-nez v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 544
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 545
    if-eqz v0, :cond_3

    .line 546
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 548
    :cond_3
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    .line 650
    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    return-object v0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryReceivers(Ljava/lang/String;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/helper/proto/ReceiverInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    invoke-static {p2}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v2

    .line 480
    invoke-virtual {p0, v2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 481
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 482
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v4

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    # getter for: Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->access$100(Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 484
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-static {v0, p3}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 486
    if-eqz v6, :cond_0

    .line 487
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 488
    invoke-static {v1, v6, v2}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 489
    invoke-static {v6}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v7

    .line 490
    const/4 v1, 0x0

    .line 491
    iget-object v8, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    .line 492
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 494
    :goto_1
    new-instance v1, Lcom/lody/virtual/helper/proto/ReceiverInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-direct {v1, v7, v0, v6}, Lcom/lody/virtual/helper/proto/ReceiverInfo;-><init>(Landroid/content/ComponentName;[Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    return-object v3

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public querySharedPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v3

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 742
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 744
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v3

    .line 752
    :goto_0
    return-object v0

    .line 746
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 747
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 748
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 749
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 752
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 4

    .prologue
    .line 679
    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 680
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByAuthority:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 682
    if-eqz v0, :cond_0

    .line 683
    invoke-static {v0, p2}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 684
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 685
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 686
    invoke-static {v0, v1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 687
    monitor-exit v2

    move-object v0, v1

    .line 690
    :goto_0
    return-object v0

    .line 689
    :cond_0
    monitor-exit v2

    .line 690
    const/4 v0, 0x0

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 369
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 504
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 509
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 512
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
