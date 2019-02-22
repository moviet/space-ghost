.class public Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;
.super Ljava/lang/Object;
.source "HCallbackHook.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/lody/virtual/client/interfaces/Injectable;


# static fields
.field public static final CREATE_SERVICE:I

.field public static final LAUNCH_ACTIVITY:I

.field private static final TAG:Ljava/lang/String;

.field private static final sCallback:Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;


# instance fields
.field private mCalling:Z

.field private otherCallback:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lmirror/android/app/ActivityThread$H;->LAUNCH_ACTIVITY:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    sput v0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->LAUNCH_ACTIVITY:I

    .line 31
    sget-object v0, Lmirror/android/app/ActivityThread$H;->CREATE_SERVICE:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    sput v0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->CREATE_SERVICE:I

    .line 33
    const-class v0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->sCallback:Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->mCalling:Z

    .line 42
    return-void
.end method

.method public static getDefault()Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->sCallback:Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;

    return-object v0
.end method

.method private static getH()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lmirror/android/app/ActivityThread;->mH:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private static getHCallback()Landroid/os/Handler$Callback;
    .locals 2

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->getH()Landroid/os/Handler;

    move-result-object v0

    .line 55
    sget-object v1, Lmirror/android/os/Handler;->mCallback:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleLaunchActivity(Landroid/os/Message;)Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 93
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    sget-object v0, Lmirror/android/app/ActivityThread$ActivityClientRecord;->intent:Lmirror/RefObject;

    invoke-virtual {v0, v11}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 95
    new-instance v6, Lcom/lody/virtual/helper/proto/StubActivityRecord;

    invoke-direct {v6, v0}, Lcom/lody/virtual/helper/proto/StubActivityRecord;-><init>(Landroid/content/Intent;)V

    .line 96
    iget-object v0, v6, Lcom/lody/virtual/helper/proto/StubActivityRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    move v0, v10

    .line 123
    :goto_0
    return v0

    .line 99
    :cond_0
    iget-object v5, v6, Lcom/lody/virtual/helper/proto/StubActivityRecord;->intent:Landroid/content/Intent;

    .line 100
    iget-object v2, v6, Lcom/lody/virtual/helper/proto/StubActivityRecord;->caller:Landroid/content/ComponentName;

    .line 101
    sget-object v0, Lmirror/android/app/ActivityThread$ActivityClientRecord;->token:Lmirror/RefObject;

    invoke-virtual {v0, v11}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 102
    iget-object v4, v6, Lcom/lody/virtual/helper/proto/StubActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 103
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget v4, v6, Lcom/lody/virtual/helper/proto/StubActivityRecord;->userId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/lody/virtual/client/local/VActivityManager;->processRestarted(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/lody/virtual/client/VClientImpl;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move v0, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    sget-object v0, Lmirror/android/app/IActivityManager;->getTaskForActivity:Lmirror/RefMethod;

    sget-object v6, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    new-array v7, v1, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v6, v7}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v10

    .line 113
    invoke-virtual {v0, v6, v7}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 118
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-static {v4}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v4}, Lcom/lody/virtual/helper/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v6

    iget v8, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget v9, v4, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual/range {v0 .. v9}, Lcom/lody/virtual/client/local/VActivityManager;->onActivityCreate(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;III)Lcom/lody/virtual/client/local/ActivityClientRecord;

    .line 119
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/VClientImpl;->getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 120
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 121
    sget-object v0, Lmirror/android/app/ActivityThread$ActivityClientRecord;->intent:Lmirror/RefObject;

    invoke-virtual {v0, v11, v5}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    sget-object v0, Lmirror/android/app/ActivityThread$ActivityClientRecord;->activityInfo:Lmirror/RefObject;

    invoke-virtual {v0, v11, v4}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v10

    .line 123
    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget-boolean v2, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->mCalling:Z

    if-nez v2, :cond_3

    .line 65
    iput-boolean v0, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->mCalling:Z

    .line 67
    :try_start_0
    sget-object v2, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    sget v2, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->LAUNCH_ACTIVITY:I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->handleLaunchActivity(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 86
    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->mCalling:Z

    .line 89
    :goto_0
    return v0

    .line 72
    :cond_0
    :try_start_1
    sget v0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->CREATE_SERVICE:I

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 73
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v2, "info"

    invoke-virtual {v0, v2}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 75
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/lody/virtual/client/VClientImpl;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->otherCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->otherCallback:Landroid/os/Handler$Callback;

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    .line 80
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->mCalling:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->mCalling:Z

    goto :goto_0

    .line 83
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->mCalling:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->mCalling:Z

    :cond_3
    move v0, v1

    .line 89
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->mCalling:Z

    throw v0
.end method

.method public inject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->getHCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->otherCallback:Landroid/os/Handler$Callback;

    .line 129
    sget-object v0, Lmirror/android/os/Handler;->mCallback:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->getH()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->getHCallback()Landroid/os/Handler$Callback;

    move-result-object v2

    .line 135
    if-eq v2, p0, :cond_1

    const/4 v0, 0x1

    .line 136
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 137
    sget-object v3, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HCallback has bad, other callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 135
    goto :goto_0
.end method
