.class public Lcom/lody/virtual/server/pm/VAppManagerService;
.super Lcom/lody/virtual/service/IAppManager$Stub;
.source "VAppManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final gService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/lody/virtual/server/pm/VAppManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isBooting:Z

.field private final mBroadcastSystem:Lcom/lody/virtual/server/am/StaticBroadcastSystem;

.field private mRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/lody/virtual/service/interfaces/IAppObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidSystem:Lcom/lody/virtual/server/am/UidSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/lody/virtual/server/pm/VAppManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/VAppManagerService;->gService:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lody/virtual/service/IAppManager$Stub;-><init>()V

    .line 45
    new-instance v0, Lcom/lody/virtual/server/am/UidSystem;

    invoke-direct {v0}, Lcom/lody/virtual/server/am/UidSystem;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mUidSystem:Lcom/lody/virtual/server/am/UidSystem;

    .line 47
    new-instance v0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;

    .line 49
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/lody/virtual/server/am/StaticBroadcastSystem;-><init>(Landroid/content/Context;Lcom/lody/virtual/server/am/VActivityManagerService;Lcom/lody/virtual/server/pm/VAppManagerService;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mBroadcastSystem:Lcom/lody/virtual/server/am/StaticBroadcastSystem;

    .line 56
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method private canUpdate(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    .line 201
    iget v2, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-ge v2, v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_2

    move v0, v1

    .line 206
    goto :goto_0

    .line 208
    :cond_2
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_0

    move v0, v1

    .line 211
    goto :goto_0
.end method

.method public static get()Lcom/lody/virtual/server/pm/VAppManagerService;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lody/virtual/server/pm/VAppManagerService;->gService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/pm/VAppManagerService;

    return-object v0
.end method

.method private declared-synchronized install(Ljava/lang/String;IZ)Lcom/lody/virtual/helper/proto/InstallResult;
    .locals 13

    .prologue
    .line 110
    monitor-enter p0

    if-nez p1, :cond_0

    .line 111
    :try_start_0
    const-string v0, "Not given the apk path."

    invoke-static {v0}, Lcom/lody/virtual/helper/proto/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/InstallResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 196
    :goto_0
    monitor-exit p0

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    :cond_1
    const-string v0, "APK File is not exist."

    invoke-static {v0}, Lcom/lody/virtual/helper/proto/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/InstallResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    const/4 v2, 0x0

    .line 118
    const/4 v1, 0x0

    .line 120
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v3, v0}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->parsePackage(Ljava/io/File;I)Landroid/util/Pair;

    move-result-object v4

    .line 121
    if-eqz v4, :cond_12

    .line 122
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageParser;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/PackageParser$Package;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move-object v4, v0

    move-object v5, v1

    .line 128
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    :try_start_4
    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 129
    :cond_3
    const-string v0, "Unable to parse the package."

    invoke-static {v0}, Lcom/lody/virtual/helper/proto/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/InstallResult;

    move-result-object v0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v1

    move-object v5, v2

    goto :goto_2

    .line 131
    :cond_4
    new-instance v0, Lcom/lody/virtual/helper/proto/InstallResult;

    invoke-direct {v0}, Lcom/lody/virtual/helper/proto/InstallResult;-><init>()V

    .line 132
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/helper/proto/InstallResult;->packageName:Ljava/lang/String;

    .line 134
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/lody/virtual/server/pm/PackageCache;->get(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 135
    if-eqz v6, :cond_7

    .line 136
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_5

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lody/virtual/helper/proto/InstallResult;->isUpdate:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_5
    :try_start_5
    invoke-direct {p0, v6, v5, p2}, Lcom/lody/virtual/server/pm/VAppManagerService;->canUpdate(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 141
    const-string v0, "Unable to update the Apk."

    invoke-static {v0}, Lcom/lody/virtual/helper/proto/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/InstallResult;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lody/virtual/helper/proto/InstallResult;->isUpdate:Z

    .line 145
    :cond_7
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/lody/virtual/os/VEnvironment;->getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 148
    new-instance v8, Ljava/io/File;

    const-string v1, "lib"

    invoke-direct {v8, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_8

    .line 150
    const-string v0, "Unable to create lib dir."

    invoke-static {v0}, Lcom/lody/virtual/helper/proto/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/InstallResult;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :cond_8
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_e

    .line 153
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    iget-object v2, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lody/virtual/client/core/VirtualCore;->isOutsideInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    move v2, v1

    .line 155
    :goto_4
    if-nez p3, :cond_11

    .line 156
    iget-boolean v1, v0, Lcom/lody/virtual/helper/proto/InstallResult;->isUpdate:Z

    if-eqz v1, :cond_9

    .line 157
    invoke-static {v8}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 159
    :cond_9
    sget-object v1, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "install copyNativeBinaries apkPath:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " libDir:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v9, v10}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v8}, Lcom/lody/virtual/helper/compat/NativeLibraryHelperCompat;->copyNativeBinaries(Ljava/io/File;Ljava/io/File;)I

    .line 161
    if-nez v2, :cond_11

    .line 163
    new-instance v1, Ljava/io/File;

    const-string v9, "base.apk"

    invoke-direct {v1, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 165
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_f

    .line 166
    sget-object v9, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Warning: unable to create folder : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_a
    :goto_5
    invoke-static {v3, v1}, Lcom/lody/virtual/helper/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 174
    :goto_6
    if-eqz v6, :cond_b

    .line 175
    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/lody/virtual/server/pm/PackageCache;->remove(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    .line 177
    :cond_b
    new-instance v3, Lcom/lody/virtual/helper/proto/AppSetting;

    invoke-direct {v3}, Lcom/lody/virtual/helper/proto/AppSetting;-><init>()V

    .line 178
    iput-object v4, v3, Lcom/lody/virtual/helper/proto/AppSetting;->parser:Landroid/content/pm/PackageParser;

    .line 179
    iput-boolean v2, v3, Lcom/lody/virtual/helper/proto/AppSetting;->dependSystem:Z

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    .line 181
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/lody/virtual/helper/proto/AppSetting;->libPath:Ljava/lang/String;

    .line 182
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->isArt()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "oat"

    :goto_7
    invoke-direct {v2, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_c

    .line 184
    sget-object v1, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning: unable to create folder : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v6}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_c
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/lody/virtual/helper/proto/AppSetting;->odexDir:Ljava/lang/String;

    .line 187
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v3, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mUidSystem:Lcom/lody/virtual/server/am/UidSystem;

    invoke-virtual {v1, v5}, Lcom/lody/virtual/server/am/UidSystem;->getOrCreateUid(Landroid/content/pm/PackageParser$Package;)I

    move-result v1

    invoke-static {v1}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v1

    iput v1, v3, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    .line 190
    invoke-static {v5, v3}, Lcom/lody/virtual/server/pm/PackageCache;->put(Landroid/content/pm/PackageParser$Package;Lcom/lody/virtual/helper/proto/AppSetting;)V

    .line 191
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mBroadcastSystem:Lcom/lody/virtual/server/am/StaticBroadcastSystem;

    invoke-virtual {v1, v5}, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->startApp(Landroid/content/pm/PackageParser$Package;)V

    .line 192
    if-nez p3, :cond_d

    .line 193
    invoke-direct {p0, v3}, Lcom/lody/virtual/server/pm/VAppManagerService;->notifyAppInstalled(Lcom/lody/virtual/helper/proto/AppSetting;)V

    .line 195
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lody/virtual/helper/proto/InstallResult;->isSuccess:Z

    goto/16 :goto_0

    .line 153
    :cond_e
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_4

    .line 167
    :cond_f
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_a

    .line 168
    sget-object v9, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Warning: unable to delete file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 182
    :cond_10
    const-string v1, "odex"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7

    .line 125
    :catch_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_3

    :cond_11
    move-object v1, v3

    goto/16 :goto_6

    :cond_12
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_1
.end method

.method private notifyAppInstalled(Lcom/lody/virtual/helper/proto/AppSetting;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 254
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 255
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/service/interfaces/IAppObserver;

    iget-object v2, p1, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/lody/virtual/service/interfaces/IAppObserver;->onNewApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 260
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    move v0, v1

    .line 260
    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 263
    new-instance v1, Landroid/content/Intent;

    const-string v0, "virtual.android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    const-string v0, "package"

    iget-object v2, p1, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 265
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 266
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 267
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 268
    const-string v6, "android.intent.extra.UID"

    iget v7, p1, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    invoke-static {v4, v7}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_1
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->get()Lcom/lody/virtual/server/accounts/VAccountManagerService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->refreshAuthenticatorCache(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private notifyAppUninstalled(Lcom/lody/virtual/helper/proto/AppSetting;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 275
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 276
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/service/interfaces/IAppObserver;

    iget-object v2, p1, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/lody/virtual/service/interfaces/IAppObserver;->onRemoveApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 281
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    move v0, v1

    .line 281
    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-string v0, "virtual.android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v0, "package"

    iget-object v2, p1, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 286
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 287
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 288
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 289
    const-string v6, "android.intent.extra.UID"

    iget v7, p1, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    invoke-static {v4, v7}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    :cond_1
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->get()Lcom/lody/virtual/server/accounts/VAccountManagerService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->refreshAuthenticatorCache(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static systemReady()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/lody/virtual/server/pm/VAppManagerService;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/VAppManagerService;-><init>()V

    .line 69
    iget-object v1, v0, Lcom/lody/virtual/server/pm/VAppManagerService;->mUidSystem:Lcom/lody/virtual/server/am/UidSystem;

    invoke-virtual {v1}, Lcom/lody/virtual/server/am/UidSystem;->initUidList()V

    .line 70
    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/VAppManagerService;->preloadAllApps()V

    .line 71
    sget-object v1, Lcom/lody/virtual/server/pm/VAppManagerService;->gService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 72
    return-void
.end method


# virtual methods
.method public findAppInfo(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;
    .locals 2

    .prologue
    .line 314
    const-class v1, Lcom/lody/virtual/server/pm/PackageCache;

    monitor-enter v1

    .line 315
    if-eqz p1, :cond_0

    .line 316
    :try_start_0
    invoke-static {p1}, Lcom/lody/virtual/server/pm/PackageCache;->get(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    monitor-exit v1

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findAppPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 5
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
    .line 331
    const-class v1, Lcom/lody/virtual/server/pm/PackageCache;

    monitor-enter v1

    .line 332
    if-eqz p1, :cond_0

    .line 333
    :try_start_0
    invoke-static {p1}, Lcom/lody/virtual/server/pm/PackageCache;->get(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 335
    sget-object v2, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findAppPermissions pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    monitor-exit v1

    .line 339
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/helper/proto/AppSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/VAppManagerService;->getAppCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCache;->sPackageCaches:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 240
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_0
    return-object v1
.end method

.method public getAppCount()I
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCache;->sPackageCaches:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public getAppId(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->findAppInfo(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public installApp(Ljava/lang/String;I)Lcom/lody/virtual/helper/proto/InstallResult;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/server/pm/VAppManagerService;->install(Ljava/lang/String;IZ)Lcom/lody/virtual/helper/proto/InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 250
    if-eqz p1, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lody/virtual/server/pm/PackageCache;->sPackageCaches:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBooting()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->isBooting:Z

    return v0
.end method

.method public preloadAllApps()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 75
    iput-boolean v10, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->isBooting:Z

    .line 76
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataAppDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 77
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 78
    new-instance v0, Ljava/io/File;

    const-string v2, "base.apk"

    invoke-direct {v0, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 81
    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getUnHookPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v8, 0x0

    .line 84
    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 89
    :cond_0
    invoke-static {v6}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 76
    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 92
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    const/16 v0, 0x20

    .line 95
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v10}, Lcom/lody/virtual/server/pm/VAppManagerService;->install(Ljava/lang/String;IZ)Lcom/lody/virtual/helper/proto/InstallResult;

    move-result-object v0

    .line 96
    iget-boolean v2, v0, Lcom/lody/virtual/helper/proto/InstallResult;->isSuccess:Z

    if-nez v2, :cond_1

    .line 97
    sget-object v2, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to install app %s: %s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v1

    iget-object v0, v0, Lcom/lody/virtual/helper/proto/InstallResult;->error:Ljava/lang/String;

    aput-object v0, v9, v10

    invoke-static {v2, v8, v9}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-static {v6}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    goto :goto_2

    .line 101
    :cond_3
    iput-boolean v1, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->isBooting:Z

    .line 102
    return-void

    .line 85
    :catch_0
    move-exception v2

    goto :goto_1

    :cond_4
    move-object v2, v0

    move v0, v1

    goto :goto_3
.end method

.method public registerObserver(Lcom/lody/virtual/service/interfaces/IAppObserver;)V
    .locals 1

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public uninstallApp(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 215
    sget-object v1, Lcom/lody/virtual/server/pm/PackageCache;->sPackageCaches:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    monitor-enter v1

    .line 216
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->findAppInfo(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 217
    if-eqz v2, :cond_1

    .line 219
    :try_start_1
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mBroadcastSystem:Lcom/lody/virtual/server/am/StaticBroadcastSystem;

    invoke-virtual {v3, p1}, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->stopApp(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4}, Lcom/lody/virtual/server/am/VActivityManagerService;->killAppByPkg(Ljava/lang/String;I)V

    .line 221
    invoke-static {p1}, Lcom/lody/virtual/os/VEnvironment;->getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 222
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 223
    invoke-static {v5, p1}, Lcom/lody/virtual/os/VEnvironment;->getDataUserPackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {p1}, Lcom/lody/virtual/server/pm/PackageCache;->remove(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    :try_start_2
    invoke-direct {p0, v2}, Lcom/lody/virtual/server/pm/VAppManagerService;->notifyAppUninstalled(Lcom/lody/virtual/helper/proto/AppSetting;)V

    .line 231
    :goto_1
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    :goto_2
    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    :try_start_4
    invoke-direct {p0, v2}, Lcom/lody/virtual/server/pm/VAppManagerService;->notifyAppUninstalled(Lcom/lody/virtual/helper/proto/AppSetting;)V

    goto :goto_1

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 229
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-direct {p0, v2}, Lcom/lody/virtual/server/pm/VAppManagerService;->notifyAppUninstalled(Lcom/lody/virtual/helper/proto/AppSetting;)V

    throw v0

    .line 233
    :cond_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public unregisterObserver(Lcom/lody/virtual/service/interfaces/IAppObserver;)V
    .locals 1

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0
.end method
