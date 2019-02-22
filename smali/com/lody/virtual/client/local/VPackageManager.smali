.class public Lcom/lody/virtual/client/local/VPackageManager;
.super Ljava/lang/Object;
.source "VPackageManager.java"


# static fields
.field private static final sMgr:Lcom/lody/virtual/client/local/VPackageManager;


# instance fields
.field private mRemote:Lcom/lody/virtual/service/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/lody/virtual/client/local/VPackageManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/local/VPackageManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/local/VPackageManager;->sMgr:Lcom/lody/virtual/client/local/VPackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/local/VPackageManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lody/virtual/client/local/VPackageManager;->sMgr:Lcom/lody/virtual/client/local/VPackageManager;

    return-object v0
.end method


# virtual methods
.method public activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 214
    :goto_0
    return v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 53
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 1
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
    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IPackageManager;->getInstalledApplications(II)Lcom/lody/virtual/helper/proto/VParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IPackageManager;->getInstalledPackages(II)Lcom/lody/virtual/helper/proto/VParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public declared-synchronized getInterface()Lcom/lody/virtual/service/IPackageManager;
    .locals 3

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/client/local/VPackageManager;->mRemote:Lcom/lody/virtual/service/IPackageManager;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/lody/virtual/client/local/VPackageManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/client/local/VPackageManager;->mRemote:Lcom/lody/virtual/service/IPackageManager;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "package"

    invoke-static {v0}, Lcom/lody/virtual/client/service/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/lody/virtual/service/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    .line 42
    const-class v2, Lcom/lody/virtual/service/IPackageManager;

    invoke-static {v2, v0}, Lcom/lody/virtual/client/local/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/service/IPackageManager;

    iput-object v0, p0, Lcom/lody/virtual/client/local/VPackageManager;->mRemote:Lcom/lody/virtual/service/IPackageManager;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/lody/virtual/client/local/VPackageManager;->mRemote:Lcom/lody/virtual/service/IPackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    goto :goto_0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 256
    :goto_0
    return v0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    goto :goto_0
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    goto :goto_0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 1

    .prologue
    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    goto :goto_0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    goto :goto_0
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->queryContentProviders(Ljava/lang/String;II)Lcom/lody/virtual/helper/proto/VParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
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
    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/service/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
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
    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/service/IPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
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
    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/service/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
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
    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/service/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
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
    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public queryReceivers(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
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
    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->queryReceivers(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public querySharedPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IPackageManager;->querySharedPackages(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 1

    .prologue
    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    goto :goto_0
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/service/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VPackageManager;->getInterface()Lcom/lody/virtual/service/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/service/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
