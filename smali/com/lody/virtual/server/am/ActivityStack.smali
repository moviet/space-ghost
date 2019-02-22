.class Lcom/lody/virtual/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;,
        Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityStack"


# instance fields
.field private final mAM:Landroid/app/ActivityManager;

.field private final mHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lody/virtual/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/lody/virtual/server/am/VActivityManagerService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/am/VActivityManagerService;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    .line 54
    iput-object p1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mService:Lcom/lody/virtual/server/am/VActivityManagerService;

    .line 55
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mAM:Landroid/app/ActivityManager;

    .line 56
    return-void
.end method

.method private static containFlags(Landroid/content/Intent;I)Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deliverNewIntentLocked(Lcom/lody/virtual/server/am/ActivityRecord;Lcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    :try_start_0
    iget-object v1, p2, Lcom/lody/virtual/server/am/ActivityRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    iget-object v2, p2, Lcom/lody/virtual/server/am/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v0, v2, p3}, Lcom/lody/virtual/client/IVClient;->scheduleNewIntent(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    return-void

    .line 79
    :cond_0
    const-string v0, "android"

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private fetchStubActivity(ILandroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 450
    .line 454
    :try_start_0
    sget-object v0, Lmirror/com/android/internal/R_Hide$styleable;->Window:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 455
    sget-object v2, Lmirror/com/android/internal/R_Hide$styleable;->Window_windowIsTranslucent:Lmirror/RefStaticInt;

    invoke-virtual {v2}, Lmirror/RefStaticInt;->get()I

    move-result v2

    .line 456
    sget-object v3, Lmirror/com/android/internal/R_Hide$styleable;->Window_windowIsFloating:Lmirror/RefStaticInt;

    invoke-virtual {v3}, Lmirror/RefStaticInt;->get()I

    move-result v3

    .line 457
    sget-object v4, Lmirror/com/android/internal/R_Hide$styleable;->Window_windowShowWallpaper:Lmirror/RefStaticInt;

    invoke-virtual {v4}, Lmirror/RefStaticInt;->get()I

    move-result v4

    .line 459
    invoke-static {}, Lcom/lody/virtual/server/am/AttributeCache;->instance()Lcom/lody/virtual/server/am/AttributeCache;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v7, p2, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v5, v6, v7, v0}, Lcom/lody/virtual/server/am/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/lody/virtual/server/am/AttributeCache$Entry;

    move-result-object v5

    .line 461
    if-eqz v5, :cond_3

    iget-object v0, v5, Lcom/lody/virtual/server/am/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, v5, Lcom/lody/virtual/server/am/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 463
    :try_start_1
    iget-object v4, v5, Lcom/lody/virtual/server/am/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 464
    :try_start_2
    iget-object v4, v5, Lcom/lody/virtual/server/am/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 470
    :goto_0
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 471
    :cond_1
    if-eqz v1, :cond_2

    .line 472
    invoke-static {p1}, Lcom/lody/virtual/client/stub/StubManifest;->getStubDialogName(I)Ljava/lang/String;

    move-result-object v0

    .line 474
    :goto_1
    return-object v0

    .line 466
    :catch_0
    move-exception v0

    move v2, v1

    move v3, v1

    .line 467
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v2

    move v2, v3

    move v3, v1

    goto :goto_0

    .line 474
    :cond_2
    invoke-static {p1}, Lcom/lody/virtual/client/stub/StubManifest;->getStubActivityName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 466
    :catch_1
    move-exception v2

    move v3, v1

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto :goto_2

    :catch_2
    move-exception v3

    move-object v8, v3

    move v3, v2

    move v2, v0

    move-object v0, v8

    goto :goto_2

    :cond_3
    move v0, v1

    move v2, v1

    move v3, v1

    goto :goto_0
.end method

.method private findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;
    .locals 6

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    if-eqz p2, :cond_2

    .line 110
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/TaskRecord;

    .line 112
    iget v3, v0, Lcom/lody/virtual/server/am/TaskRecord;->userId:I

    if-eq v3, p1, :cond_0

    .line 110
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v3, v0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v3

    .line 116
    :try_start_0
    iget-object v0, v0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 117
    iget-object v5, v0, Lcom/lody/virtual/server/am/ActivityRecord;->token:Landroid/os/IBinder;

    if-ne v5, p2, :cond_3

    :goto_3
    move-object v1, v0

    .line 120
    goto :goto_2

    .line 121
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 124
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method private findTaskByAffinityLocked(ILjava/lang/String;)Lcom/lody/virtual/server/am/TaskRecord;
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/TaskRecord;

    .line 90
    iget v2, v0, Lcom/lody/virtual/server/am/TaskRecord;->userId:I

    if-ne p1, v2, :cond_0

    iget-object v2, v0, Lcom/lody/virtual/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    :goto_1
    return-object v0

    .line 88
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findTaskByIntentLocked(ILandroid/content/Intent;)Lcom/lody/virtual/server/am/TaskRecord;
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/TaskRecord;

    .line 100
    iget v2, v0, Lcom/lody/virtual/server/am/TaskRecord;->userId:I

    if-ne p1, v2, :cond_0

    iget-object v2, v0, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, v0, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    :goto_1
    return-object v0

    .line 98
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private markTaskByClearTarget(Lcom/lody/virtual/server/am/TaskRecord;Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;Landroid/content/ComponentName;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 128
    const/4 v2, 0x0

    .line 129
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$2;->$SwitchMap$com$lody$virtual$server$am$ActivityStack$ClearTarget:[I

    invoke-virtual {p2}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return v2

    .line 131
    :pswitch_0
    iget-object v3, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v3

    .line 132
    :try_start_0
    iget-object v0, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    move v2, v1

    .line 135
    goto :goto_1

    .line 136
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 139
    :pswitch_1
    iget-object v3, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v3

    .line 140
    :try_start_1
    iget-object v0, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 141
    iget-object v5, v0, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    move v0, v1

    :goto_3
    move v2, v0

    .line 145
    goto :goto_2

    .line 146
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 149
    :pswitch_2
    iget-object v4, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v4

    .line 150
    :try_start_2
    iget-object v0, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    .line 151
    :goto_4
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_2

    .line 152
    iget-object v0, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 153
    iget-object v0, v0, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    .line 158
    :cond_2
    if-eqz v2, :cond_4

    move v0, v3

    .line 159
    :goto_5
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 160
    iget-object v0, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    move v0, v1

    goto :goto_5

    :cond_3
    move v0, v3

    .line 157
    goto :goto_4

    .line 163
    :cond_4
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_5
    move v0, v2

    goto :goto_3

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private optimizeTasksLocked()V
    .locals 7

    .prologue
    .line 179
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mAM:Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 182
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/TaskRecord;

    .line 184
    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 185
    const/4 v2, 0x0

    .line 186
    :cond_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 188
    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v6, v0, Lcom/lody/virtual/server/am/TaskRecord;->taskId:I

    if-ne v1, v6, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 190
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    .line 194
    :goto_1
    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    move v0, v3

    .line 197
    goto :goto_0

    .line 198
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private realStartActivityLocked(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 419
    sget-object v0, Lmirror/android/app/IActivityManager;->startActivity:Lmirror/RefMethod;

    invoke-virtual {v0}, Lmirror/RefMethod;->paramList()[Ljava/lang/Class;

    move-result-object v1

    .line 420
    array-length v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 421
    aget-object v2, v1, v8

    sget-object v3, Lmirror/android/app/IApplicationThread;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 422
    sget-object v2, Lmirror/android/app/ActivityThread;->getApplicationThread:Lmirror/RefMethod;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v8

    .line 424
    :cond_0
    const-class v2, Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/lody/virtual/helper/utils/ArrayUtils;->protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v2

    .line 425
    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/lody/virtual/helper/utils/ArrayUtils;->protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result v3

    .line 426
    const-class v4, Landroid/os/Bundle;

    invoke-static {v1, v4}, Lcom/lody/virtual/helper/utils/ArrayUtils;->protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v4

    .line 427
    add-int/lit8 v5, v2, 0x1

    .line 428
    add-int/lit8 v6, v3, 0x1

    .line 429
    add-int/lit8 v7, v3, 0x2

    .line 431
    aput-object p2, v0, v2

    .line 432
    aput-object p1, v0, v3

    .line 433
    aput-object p3, v0, v6

    .line 434
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    .line 435
    const/4 v3, -0x1

    if-eq v4, v3, :cond_1

    .line 436
    aput-object p5, v0, v4

    .line 438
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 439
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_2

    .line 440
    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 442
    :cond_2
    invoke-static {v1, v0}, Lcom/lody/virtual/helper/utils/ClassUtils;->fixArgs([Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 444
    sget-object v1, Lmirror/android/app/IActivityManager;->startActivity:Lmirror/RefMethod;

    sget-object v2, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    return-void
.end method

.method private static removeFlags(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method private scheduleFinishMarkedActivity()V
    .locals 5

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 386
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/TaskRecord;

    .line 388
    iget-object v0, v0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 389
    iget-boolean v3, v0, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    if-eqz v3, :cond_0

    .line 392
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/lody/virtual/server/am/ActivityStack$1;

    invoke-direct {v4, p0, v0}, Lcom/lody/virtual/server/am/ActivityStack$1;-><init>(Lcom/lody/virtual/server/am/ActivityStack;Lcom/lody/virtual/server/am/ActivityRecord;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    move v0, v1

    .line 403
    goto :goto_0

    .line 404
    :cond_2
    return-void
.end method

.method private startActivityFromSourceTask(Lcom/lody/virtual/server/am/TaskRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 408
    invoke-static {p1}, Lcom/lody/virtual/server/am/ActivityStack;->topActivityInTask(Lcom/lody/virtual/server/am/TaskRecord;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    .line 410
    iget v1, p1, Lcom/lody/virtual/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityProcess(ILcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, v0, Lcom/lody/virtual/server/am/ActivityRecord;->token:Landroid/os/IBinder;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/server/am/ActivityStack;->realStartActivityLocked(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 414
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/high16 v4, 0x80000

    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityProcess(ILcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 362
    const-string v1, "ActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityInNewTaskLocked destIntent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    if-eqz v0, :cond_0

    .line 364
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 366
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 370
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 376
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 381
    :cond_0
    :goto_1
    return-object v0

    .line 372
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 378
    :cond_2
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private startActivityProcess(ILcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 479
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 480
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mService:Lcom/lody/virtual/server/am/VActivityManagerService;

    iget-object v2, p4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v4}, Lcom/lody/virtual/server/am/VActivityManagerService;->startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v0

    .line 481
    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-object v1

    .line 484
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 485
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v4

    iget v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->vpid:I

    invoke-direct {p0, v0, p4}, Lcom/lody/virtual/server/am/ActivityStack;->fetchStubActivity(ILandroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 487
    if-nez v0, :cond_1

    .line 488
    invoke-static {p4}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 490
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    new-instance v4, Lcom/lody/virtual/helper/proto/StubActivityRecord;

    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    :goto_1
    invoke-direct {v4, v3, p4, v0, p1}, Lcom/lody/virtual/helper/proto/StubActivityRecord;-><init>(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/ComponentName;I)V

    .line 493
    invoke-virtual {v4, v2}, Lcom/lody/virtual/helper/proto/StubActivityRecord;->saveToIntent(Landroid/content/Intent;)V

    move-object v1, v2

    .line 494
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 491
    goto :goto_1
.end method

.method private static topActivityInTask(Lcom/lody/virtual/server/am/TaskRecord;)Lcom/lody/virtual/server/am/ActivityRecord;
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 70
    iget-boolean v3, v0, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    if-nez v3, :cond_0

    .line 71
    monitor-exit v2

    .line 74
    :goto_1
    return-object v0

    .line 68
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method getActivityClassForToken(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 606
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v1

    .line 607
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_0

    .line 609
    iget-object v0, v0, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    monitor-exit v1

    .line 611
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCallingActivity(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 576
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v1

    .line 577
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_0

    .line 579
    iget-object v0, v0, Lcom/lody/virtual/server/am/ActivityRecord;->caller:Landroid/content/ComponentName;

    monitor-exit v1

    .line 581
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallingPackage(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v1

    .line 587
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v2

    .line 588
    if-eqz v2, :cond_1

    .line 589
    iget-object v3, v2, Lcom/lody/virtual/server/am/ActivityRecord;->caller:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v0, v2, Lcom/lody/virtual/server/am/ActivityRecord;->caller:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    monitor-exit v1

    .line 591
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPackageForToken(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 566
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v1

    .line 567
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_0

    .line 569
    iget-object v0, v0, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 571
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTaskInfo(I)Lcom/lody/virtual/helper/proto/AppTaskInfo;
    .locals 2

    .prologue
    .line 596
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v1

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/TaskRecord;

    .line 598
    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/lody/virtual/server/am/TaskRecord;->getAppTaskInfo()Lcom/lody/virtual/helper/proto/AppTaskInfo;

    move-result-object v0

    monitor-exit v1

    .line 601
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onActivityCreated(Lcom/lody/virtual/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;III)V
    .locals 14

    .prologue
    .line 499
    iget-object v13, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v13

    .line 500
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    .line 501
    iget-object v3, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/am/TaskRecord;

    .line 502
    if-nez v3, :cond_0

    .line 503
    new-instance v4, Lcom/lody/virtual/server/am/TaskRecord;

    iget v3, p1, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    move/from16 v0, p7

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/lody/virtual/server/am/TaskRecord;-><init>(IILjava/lang/String;Landroid/content/Intent;)V

    .line 504
    iget-object v3, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    move/from16 v0, p7

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 506
    :goto_0
    new-instance v3, Lcom/lody/virtual/server/am/ActivityRecord;

    iget v8, p1, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v9, p1

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p6

    invoke-direct/range {v3 .. v12}, Lcom/lody/virtual/server/am/ActivityRecord;-><init>(Lcom/lody/virtual/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;ILcom/lody/virtual/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 508
    iget-object v5, v4, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 509
    :try_start_1
    iget-object v4, v4, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 512
    return-void

    .line 510
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 511
    :catchall_1
    move-exception v3

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    :cond_0
    move-object v4, v3

    goto :goto_0
.end method

.method onActivityDestroyed(ILandroid/os/IBinder;)Z
    .locals 4

    .prologue
    .line 528
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v1

    .line 529
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    .line 532
    iget-object v2, v0, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    iget-object v2, v2, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 533
    :try_start_1
    iget-object v3, v0, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    iget-object v3, v3, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 536
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    .line 536
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 539
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method onActivityResumed(ILandroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 515
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v1

    .line 516
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    .line 517
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_0

    .line 519
    iget-object v2, v0, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    iget-object v2, v2, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 520
    :try_start_1
    iget-object v3, v0, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    iget-object v3, v3, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 521
    iget-object v3, v0, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    iget-object v3, v3, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 525
    return-void

    .line 522
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 524
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method processDied(Lcom/lody/virtual/server/am/ProcessRecord;)V
    .locals 7

    .prologue
    .line 543
    iget-object v3, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v3

    .line 544
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    .line 545
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 546
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/TaskRecord;

    .line 548
    iget-object v4, v0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 549
    :try_start_1
    iget-object v1, v0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 550
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 552
    iget-object v1, v1, Lcom/lody/virtual/server/am/ActivityRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v1, v1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    iget v6, p1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    if-ne v1, v6, :cond_0

    .line 553
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 554
    iget-object v1, v0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    iget v6, v0, Lcom/lody/virtual/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 562
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 559
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    .line 560
    goto :goto_0

    .line 562
    :cond_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 563
    return-void
.end method

.method startActivityLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;I)I
    .locals 17

    .prologue
    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    .line 206
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v12

    .line 207
    if-eqz v12, :cond_8

    iget-object v5, v12, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    .line 209
    :goto_0
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    .line 210
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->NOTHING:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 211
    const/high16 v8, 0x4000000

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v9

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_0

    .line 214
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 216
    :cond_0
    if-eqz v12, :cond_1

    iget v8, v12, Lcom/lody/virtual/server/am/ActivityRecord;->launchMode:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_1

    .line 217
    const/high16 v8, 0x10000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    :cond_1
    if-eqz v9, :cond_2

    .line 220
    const/high16 v6, 0x20000

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/lody/virtual/server/am/ActivityStack;->removeFlags(Landroid/content/Intent;I)V

    .line 221
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 223
    :cond_2
    const v8, 0x8000

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 224
    const/high16 v8, 0x10000000

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 225
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TASK:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 230
    :cond_3
    :goto_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v8, v10, :cond_4

    .line 231
    move-object/from16 v0, p3

    iget v8, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v8, :pswitch_data_0

    .line 241
    :cond_4
    :goto_2
    const/4 v8, 0x0

    .line 243
    const-string v10, "ActivityStack"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startActivityLocked packageName:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " launchMode:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget v13, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v13}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    move-object/from16 v0, p3

    iget v10, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    packed-switch v10, :pswitch_data_1

    .line 271
    const/high16 v10, 0x20000000

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 272
    const/4 v8, 0x1

    move/from16 v16, v9

    move-object v9, v7

    move/from16 v7, v16

    .line 277
    :goto_3
    sget-object v10, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->NOTHING:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    if-ne v6, v10, :cond_15

    .line 278
    const/high16 v10, 0x20000

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 279
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->SPEC_ACTIVITY:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    move-object v11, v6

    .line 282
    :goto_4
    if-nez v5, :cond_5

    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    if-ne v9, v6, :cond_5

    .line 283
    sget-object v9, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    .line 286
    :cond_5
    invoke-static/range {p3 .. p3}, Lcom/lody/virtual/helper/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v10

    .line 287
    const/4 v6, 0x0

    .line 288
    sget-object v13, Lcom/lody/virtual/server/am/ActivityStack$2;->$SwitchMap$com$lody$virtual$server$am$ActivityStack$ReuseTarget:[I

    invoke-virtual {v9}, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_2

    .line 302
    :goto_5
    const/4 v10, 0x0

    .line 303
    const-string v5, "ActivityStack"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startActivityLocked reuseTask:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " reuseTarget:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v5, v9, v13}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    if-nez v6, :cond_d

    .line 306
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.tencent.mobileqq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 307
    const-string v5, "ActivityStack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivityLocked clearProcess:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lody/virtual/server/am/ActivityStack;->mService:Lcom/lody/virtual/server/am/VActivityManagerService;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->clearProcess(Landroid/content/pm/ActivityInfo;I)V

    .line 310
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 357
    :cond_7
    :goto_6
    const/4 v5, 0x0

    return v5

    .line 207
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 227
    :cond_9
    const v8, 0x8000

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/lody/virtual/server/am/ActivityStack;->removeFlags(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 233
    :pswitch_0
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TASK:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 234
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->DOCUMENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto/16 :goto_2

    .line 237
    :pswitch_1
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto/16 :goto_2

    .line 246
    :pswitch_2
    if-nez v9, :cond_a

    .line 247
    const/4 v8, 0x1

    .line 249
    :cond_a
    const/high16 v10, 0x10000000

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 250
    const/high16 v7, 0x8000000

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    :goto_7
    move/from16 v16, v9

    move-object v9, v7

    move/from16 v7, v16

    goto/16 :goto_3

    :cond_b
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto :goto_7

    .line 257
    :pswitch_3
    const/4 v7, 0x0

    .line 258
    sget-object v9, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 259
    const/high16 v6, 0x8000000

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    :goto_8
    move-object/from16 v16, v9

    move-object v9, v6

    move-object/from16 v6, v16

    .line 263
    goto/16 :goto_3

    .line 259
    :cond_c
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto :goto_8

    .line 265
    :pswitch_4
    const/4 v6, 0x0

    .line 266
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 267
    sget-object v9, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    move/from16 v16, v6

    move-object v6, v7

    move/from16 v7, v16

    .line 269
    goto/16 :goto_3

    .line 290
    :pswitch_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/lody/virtual/server/am/ActivityStack;->findTaskByAffinityLocked(ILjava/lang/String;)Lcom/lody/virtual/server/am/TaskRecord;

    move-result-object v6

    goto/16 :goto_5

    .line 293
    :pswitch_6
    invoke-direct/range {p0 .. p2}, Lcom/lody/virtual/server/am/ActivityStack;->findTaskByIntentLocked(ILandroid/content/Intent;)Lcom/lody/virtual/server/am/TaskRecord;

    move-result-object v6

    goto/16 :goto_5

    :pswitch_7
    move-object v6, v5

    .line 297
    goto/16 :goto_5

    .line 312
    :cond_d
    const/4 v5, 0x0

    .line 313
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lody/virtual/server/am/ActivityStack;->mAM:Landroid/app/ActivityManager;

    iget v13, v6, Lcom/lody/virtual/server/am/TaskRecord;->taskId:I

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 314
    iget-object v9, v6, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/lody/virtual/helper/utils/ComponentUtils;->isSameIntent(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v9

    .line 315
    const-string v13, "ActivityStack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "startActivityLocked clearTarget.deliverIntent:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v11, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->deliverIntent:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " singleTop:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " startTaskToFront:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-boolean v13, v11, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->deliverIntent:Z

    if-nez v13, :cond_e

    if-eqz v8, :cond_14

    .line 317
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v8}, Lcom/lody/virtual/server/am/ActivityStack;->markTaskByClearTarget(Lcom/lody/virtual/server/am/TaskRecord;Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;Landroid/content/ComponentName;)Z

    move-result v8

    .line 318
    invoke-static {v6}, Lcom/lody/virtual/server/am/ActivityStack;->topActivityInTask(Lcom/lody/virtual/server/am/TaskRecord;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v10

    .line 319
    if-eqz v7, :cond_f

    if-eqz v10, :cond_f

    if-eqz v8, :cond_f

    .line 320
    const/4 v7, 0x1

    iput-boolean v7, v10, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    .line 323
    :cond_f
    if-eqz v10, :cond_13

    iget-boolean v7, v10, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    if-nez v7, :cond_13

    iget-object v7, v10, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v10, v1}, Lcom/lody/virtual/server/am/ActivityStack;->deliverNewIntentLocked(Lcom/lody/virtual/server/am/ActivityRecord;Lcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;)V

    .line 325
    const/4 v5, 0x1

    move v7, v8

    .line 328
    :goto_9
    const-string v8, "ActivityStack"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startActivityLocked taskMarked:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " delivered:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    if-eqz v7, :cond_10

    .line 330
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v7

    .line 331
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/lody/virtual/server/am/ActivityStack;->scheduleFinishMarkedActivity()V

    .line 332
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_10
    invoke-virtual {v6}, Lcom/lody/virtual/server/am/TaskRecord;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 335
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 336
    const/4 v5, 0x1

    .line 338
    :cond_11
    if-nez v9, :cond_12

    .line 339
    if-nez v5, :cond_7

    .line 340
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityProcess(ILcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v7

    .line 341
    if-eqz v7, :cond_7

    .line 342
    const-string v5, "ActivityStack"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startActivityFromSourceTask destIntent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p5

    .line 343
    invoke-direct/range {v5 .. v11}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityFromSourceTask(Lcom/lody/virtual/server/am/TaskRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto/16 :goto_6

    .line 332
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 346
    :cond_12
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.facebook.katana"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 347
    invoke-static {v6}, Lcom/lody/virtual/server/am/ActivityStack;->topActivityInTask(Lcom/lody/virtual/server/am/TaskRecord;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v5

    .line 348
    if-eqz v5, :cond_7

    iget-boolean v7, v5, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    if-nez v7, :cond_7

    iget-object v5, v5, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 349
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityProcess(ILcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v7

    .line 350
    const-string v5, "ActivityStack"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "====== startActivityFromSourceTask destIntent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    if-eqz v7, :cond_7

    move-object/from16 v5, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p5

    .line 352
    invoke-direct/range {v5 .. v11}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityFromSourceTask(Lcom/lody/virtual/server/am/TaskRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto/16 :goto_6

    :cond_13
    move v7, v8

    goto/16 :goto_9

    :cond_14
    move v7, v10

    goto/16 :goto_9

    :cond_15
    move-object v11, v6

    goto/16 :goto_4

    :cond_16
    move/from16 v16, v9

    move-object v9, v7

    move/from16 v7, v16

    goto/16 :goto_3

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 244
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 288
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
