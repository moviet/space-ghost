.class public Lcom/lody/virtual/server/am/StaticBroadcastSystem;
.super Ljava/lang/Object;
.source "StaticBroadcastSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;,
        Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticScheduler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StaticBroadcastSystem"


# instance fields
.field private final mAMS:Lcom/lody/virtual/server/am/VActivityManagerService;

.field private final mApp:Lcom/lody/virtual/server/pm/VAppManagerService;

.field private final mContext:Landroid/content/Context;

.field private final mReceivers:Lcom/lody/virtual/helper/utils/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScheduler:Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticScheduler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lody/virtual/server/am/VActivityManagerService;Lcom/lody/virtual/server/pm/VAppManagerService;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mReceivers:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    .line 37
    iput-object p1, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mApp:Lcom/lody/virtual/server/pm/VAppManagerService;

    .line 39
    iput-object p2, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mAMS:Lcom/lody/virtual/server/am/VActivityManagerService;

    .line 40
    new-instance v0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticScheduler;-><init>(Lcom/lody/virtual/server/am/StaticBroadcastSystem$1;)V

    iput-object v0, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mScheduler:Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticScheduler;

    .line 41
    return-void
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/am/StaticBroadcastSystem;)Lcom/lody/virtual/server/pm/VAppManagerService;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mApp:Lcom/lody/virtual/server/pm/VAppManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lody/virtual/server/am/StaticBroadcastSystem;)Lcom/lody/virtual/server/am/VActivityManagerService;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mAMS:Lcom/lody/virtual/server/am/VActivityManagerService;

    return-object v0
.end method

.method private modifyFilter(Landroid/content/IntentFilter;)V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lmirror/android/content/IntentFilter;->mActions:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 70
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->isActionInBlackList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->modifyAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v1, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_2
    return-void
.end method


# virtual methods
.method public startApp(Landroid/content/pm/PackageParser$Package;)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 44
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 45
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 46
    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 47
    iget-object v9, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mReceivers:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 49
    if-nez v0, :cond_2

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mReceivers:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 53
    :goto_0
    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "_VA_%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v10, v1, v2

    const/4 v2, 0x1

    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v10, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;

    iget v2, v6, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;-><init>(Lcom/lody/virtual/server/am/StaticBroadcastSystem;ILandroid/content/pm/ActivityInfo;Landroid/content/IntentFilter;Lcom/lody/virtual/server/am/StaticBroadcastSystem$1;)V

    .line 55
    iget-object v1, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mScheduler:Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticScheduler;

    invoke-virtual {v1, v0, v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 56
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 58
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 59
    invoke-direct {p0, v4}, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->modifyFilter(Landroid/content/IntentFilter;)V

    .line 60
    new-instance v0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;

    iget v2, v6, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;-><init>(Lcom/lody/virtual/server/am/StaticBroadcastSystem;ILandroid/content/pm/ActivityInfo;Landroid/content/IntentFilter;Lcom/lody/virtual/server/am/StaticBroadcastSystem$1;)V

    .line 61
    iget-object v1, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mScheduler:Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticScheduler;

    invoke-virtual {v1, v0, v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 62
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_1
    return-void

    :cond_2
    move-object v7, v0

    goto :goto_0
.end method

.method public stopApp(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mReceivers:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 88
    iget-object v2, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "StaticBroadcastSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopApp Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method
