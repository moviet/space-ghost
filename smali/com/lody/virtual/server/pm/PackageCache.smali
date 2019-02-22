.class public Lcom/lody/virtual/server/pm/PackageCache;
.super Ljava/lang/Object;
.source "PackageCache.java"


# static fields
.field static final sPackageCaches:Lcom/lody/virtual/helper/utils/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/PackageCache;->sPackageCaches:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/lody/virtual/server/pm/PackageCache;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCache;->sPackageCaches:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0, p0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static put(Landroid/content/pm/PackageParser$Package;Lcom/lody/virtual/helper/proto/AppSetting;)V
    .locals 3

    .prologue
    .line 18
    const-class v1, Lcom/lody/virtual/server/pm/PackageCache;

    monitor-enter v1

    .line 19
    :try_start_0
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCache;->sPackageCaches:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lody/virtual/server/pm/VPackageManagerService;->analyzePackageLocked(Landroid/content/pm/PackageParser$Package;)V

    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static remove(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3

    .prologue
    .line 32
    const-class v1, Lcom/lody/virtual/server/pm/PackageCache;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCache;->sPackageCaches:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0, p0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lody/virtual/server/pm/VPackageManagerService;->deletePackageLocked(Ljava/lang/String;)V

    .line 36
    monitor-exit v1

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
