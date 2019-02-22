.class public final Lcom/lody/virtual/client/VClientImpl;
.super Lcom/lody/virtual/client/IVClient$Stub;
.source "VClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/VClientImpl$H;,
        Lcom/lody/virtual/client/VClientImpl$AppBindData;,
        Lcom/lody/virtual/client/VClientImpl$NewIntentData;
    }
.end annotation


# static fields
.field private static final NEW_INTENT:I = 0xb

.field private static final TAG:Ljava/lang/String;

.field private static final gClient:Lcom/lody/virtual/client/VClientImpl;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

.field private final mH:Lcom/lody/virtual/client/VClientImpl$H;

.field private mInitialApplication:Landroid/app/Application;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mTempLock:Landroid/os/ConditionVariable;

.field private token:Landroid/os/IBinder;

.field private vuid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/lody/virtual/client/VClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/lody/virtual/client/VClientImpl;

    invoke-direct {v0}, Lcom/lody/virtual/client/VClientImpl;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/VClientImpl;->gClient:Lcom/lody/virtual/client/VClientImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/lody/virtual/client/IVClient$Stub;-><init>()V

    .line 74
    invoke-static {}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->getDefault()Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mInstrumentation:Landroid/app/Instrumentation;

    .line 78
    new-instance v0, Lcom/lody/virtual/client/VClientImpl$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/VClientImpl$H;-><init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V

    iput-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mH:Lcom/lody/virtual/client/VClientImpl$H;

    return-void
.end method

.method static synthetic access$100(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$NewIntentData;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/VClientImpl;->handleNewIntent(Lcom/lody/virtual/client/VClientImpl$NewIntentData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lody/virtual/client/VClientImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/lody/virtual/client/VClientImpl;->bindApplicationNoCheck(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindApplicationNoCheck(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 11

    .prologue
    const/16 v10, 0x80

    const/16 v6, 0x17

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 206
    iput-object p3, p0, Lcom/lody/virtual/client/VClientImpl;->mTempLock:Landroid/os/ConditionVariable;

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/VClientImpl;->fixInstalledProviders()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    sget-object v0, Lmirror/android/app/ActivityThread;->mInitialApplication:Lmirror/RefObject;

    .line 213
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1, v9}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    sget-object v0, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindApplicationNoCheck processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    new-instance v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;

    invoke-direct {v1, p0, v9}, Lcom/lody/virtual/client/VClientImpl$AppBindData;-><init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V

    .line 218
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v0

    iget v2, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    invoke-static {v2}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, p1, v7, v2}, Lcom/lody/virtual/client/local/VPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 219
    iput-object p2, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->processName:Ljava/lang/String;

    .line 220
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lody/virtual/client/VClientImpl;->getVUid()I

    move-result v2

    invoke-virtual {v0, p2, v2, v10}, Lcom/lody/virtual/client/local/VPackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->providers:Ljava/util/List;

    .line 221
    iput-object v1, p0, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    .line 222
    iget-object v0, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->processName:Ljava/lang/String;

    iget-object v2, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v2}, Lcom/lody/virtual/client/env/VirtualRuntime;->setupRuntime(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 223
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Lcom/lody/virtual/client/VClientImpl$3;

    invoke-direct {v2, p0}, Lcom/lody/virtual/client/VClientImpl$3;-><init>(Lcom/lody/virtual/client/VClientImpl;)V

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 230
    iget-object v0, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 231
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 234
    :cond_0
    invoke-static {}, Lcom/lody/virtual/IOHook;->hookNative()V

    .line 235
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v2

    .line 236
    invoke-static {}, Lcom/lody/virtual/IOHook;->startDexOverride()V

    .line 237
    iget-object v0, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/VClientImpl;->createPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    .line 238
    const-string v0, "java.io.tmpdir"

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_7

    .line 241
    invoke-virtual {v3}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    .line 245
    :goto_1
    sget-object v4, Lmirror/android/view/HardwareRenderer;->setupDiskCache:Lmirror/RefStaticMethod;

    if-eqz v4, :cond_1

    .line 246
    sget-object v4, Lmirror/android/view/HardwareRenderer;->setupDiskCache:Lmirror/RefStaticMethod;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v4, v5}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_8

    .line 249
    sget-object v4, Lmirror/android/renderscript/RenderScriptCacheDir;->setupDiskCache:Lmirror/RefStaticMethod;

    if-eqz v4, :cond_2

    .line 250
    sget-object v4, Lmirror/android/renderscript/RenderScriptCacheDir;->setupDiskCache:Lmirror/RefStaticMethod;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v4, v5}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_2
    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v5, "files"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "cache"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-gt v5, v6, :cond_9

    .line 260
    sget-object v5, Lmirror/android/app/ContextImplICS;->mExternalFilesDir:Lmirror/RefObject;

    if-eqz v5, :cond_3

    .line 261
    sget-object v5, Lmirror/android/app/ContextImplICS;->mExternalFilesDir:Lmirror/RefObject;

    invoke-virtual {v5, v3, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    :cond_3
    sget-object v0, Lmirror/android/app/ContextImplICS;->mExternalCacheDir:Lmirror/RefObject;

    if-eqz v0, :cond_4

    .line 264
    sget-object v0, Lmirror/android/app/ContextImplICS;->mExternalCacheDir:Lmirror/RefObject;

    invoke-virtual {v0, v3, v4}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/VClientImpl;->fixBoundApp(Lcom/lody/virtual/client/VClientImpl$AppBindData;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    iget-object v4, p0, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    sget-object v5, Lmirror/android/app/ContextImpl;->mPackageInfo:Lmirror/RefObject;

    invoke-virtual {v5, v3}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->info:Ljava/lang/Object;

    .line 277
    sget-object v3, Lmirror/android/app/ActivityThread$AppBindData;->info:Lmirror/RefObject;

    iget-object v4, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->info:Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    sget-object v0, Lmirror/dalvik/system/VMRuntime;->setTargetSdkVersion:Lmirror/RefMethod;

    sget-object v3, Lmirror/dalvik/system/VMRuntime;->getRuntime:Lmirror/RefStaticMethod;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lmirror/android/app/LoadedApk;->makeApplication:Lmirror/RefMethod;

    iget-object v3, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->info:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v9, v4, v8

    invoke-virtual {v0, v3, v4}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 281
    iput-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    .line 282
    sget-object v3, Lmirror/android/app/ActivityThread;->mInitialApplication:Lmirror/RefObject;

    invoke-virtual {v3, v2, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    invoke-static {v0}, Lcom/lody/virtual/client/fixer/ContextFixer;->fixContext(Landroid/content/Context;)V

    .line 284
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v3

    iget-object v1, v1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->processName:Ljava/lang/String;

    iget v4, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    invoke-virtual {v3, v1, v4, v10}, Lcom/lody/virtual/client/local/VPackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_5

    .line 286
    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/VClientImpl;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 288
    :cond_5
    if-eqz p3, :cond_6

    .line 289
    invoke-virtual {p3}, Landroid/os/ConditionVariable;->open()V

    .line 290
    iput-object v9, p0, Lcom/lody/virtual/client/VClientImpl;->mTempLock:Landroid/os/ConditionVariable;

    .line 292
    :cond_6
    sget-object v1, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindApplicationNoCheck callApplicationOnCreate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :try_start_1
    iget-object v1, p0, Lcom/lody/virtual/client/VClientImpl;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 295
    invoke-static {}, Lcom/lody/virtual/client/core/PatchManager;->getInstance()Lcom/lody/virtual/client/core/PatchManager;

    move-result-object v0

    const-class v1, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/PatchManager;->checkEnv(Ljava/lang/Class;)V

    .line 296
    invoke-static {}, Lcom/lody/virtual/client/core/PatchManager;->getInstance()Lcom/lody/virtual/client/core/PatchManager;

    move-result-object v0

    const-class v1, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/PatchManager;->checkEnv(Ljava/lang/Class;)V

    .line 297
    sget-object v0, Lmirror/android/app/ActivityThread;->mInitialApplication:Lmirror/RefObject;

    invoke-virtual {v0, v2}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    :goto_4
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/local/VActivityManager;->appDoneExecuting()V

    .line 310
    new-instance v0, Lcom/lody/virtual/client/VClientImpl$4;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/VClientImpl$4;-><init>(Lcom/lody/virtual/client/VClientImpl;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 318
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 243
    :cond_7
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto/16 :goto_1

    .line 252
    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 253
    sget-object v4, Lmirror/android/view/RenderScript;->setupDiskCache:Lmirror/RefStaticMethod;

    if-eqz v4, :cond_2

    .line 254
    sget-object v4, Lmirror/android/view/RenderScript;->setupDiskCache:Lmirror/RefStaticMethod;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v4, v5}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 267
    :cond_9
    sget-object v5, Lmirror/android/app/ContextImplKitkat;->mExternalCacheDirs:Lmirror/RefObject;

    if-eqz v5, :cond_a

    .line 268
    sget-object v5, Lmirror/android/app/ContextImplKitkat;->mExternalCacheDirs:Lmirror/RefObject;

    new-array v6, v8, [Ljava/io/File;

    aput-object v4, v6, v7

    invoke-virtual {v5, v3, v6}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    :cond_a
    sget-object v4, Lmirror/android/app/ContextImplKitkat;->mExternalFilesDirs:Lmirror/RefObject;

    if-eqz v4, :cond_4

    .line 271
    sget-object v4, Lmirror/android/app/ContextImplKitkat;->mExternalFilesDirs:Lmirror/RefObject;

    new-array v5, v8, [Ljava/io/File;

    aput-object v0, v5, v7

    invoke-virtual {v4, v3, v5}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 298
    :catch_1
    move-exception v0

    .line 299
    sget-object v1, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create application, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private createPackageContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 322
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fixBoundApp(Lcom/lody/virtual/client/VClientImpl$AppBindData;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 331
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 332
    sget-object v1, Lmirror/android/app/ActivityThread;->mBoundApplication:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 333
    iget-object v0, p1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lmirror/android/app/ActivityThread$AppBindData;->appInfo:Lmirror/RefObject;

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 335
    sget-object v2, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixBoundApp appInfo pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object v2, p1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 338
    :cond_0
    sget-object v0, Lmirror/android/app/ActivityThread$AppBindData;->appInfo:Lmirror/RefObject;

    iget-object v2, p1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    sget-object v0, Lmirror/android/app/ActivityThread$AppBindData;->processName:Lmirror/RefObject;

    iget-object v2, p1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 340
    sget-object v0, Lmirror/android/app/ActivityThread$AppBindData;->instrumentationName:Lmirror/RefObject;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-class v4, Landroid/app/Instrumentation;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    return-object v1
.end method

.method private fixInstalledProviders()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 389
    sget-object v0, Lmirror/android/app/ActivityThread;->mProviderMap:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 390
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 392
    sget-object v0, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;->mProvider:Lmirror/RefObject;

    invoke-virtual {v0, v3}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 393
    sget-object v1, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;->mHolder:Lmirror/RefObject;

    invoke-virtual {v1, v3}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 394
    sget-object v1, Lmirror/android/app/IActivityManager$ContentProviderHolder;->info:Lmirror/RefObject;

    invoke-virtual {v1, v4}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 395
    if-eqz v4, :cond_0

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    sget-object v6, Lcom/lody/virtual/client/stub/StubManifest;->STUB_CP_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 396
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v7, v1, v0}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->createProxy(ZLjava/lang/String;Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v0

    .line 397
    sget-object v1, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;->mProvider:Lmirror/RefObject;

    invoke-virtual {v1, v3, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    sget-object v1, Lmirror/android/app/IActivityManager$ContentProviderHolder;->provider:Lmirror/RefObject;

    invoke-virtual {v1, v4, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    :cond_1
    sget-object v0, Lmirror/android/app/ActivityThread$ProviderClientRecord;->mName:Lmirror/RefObject;

    invoke-virtual {v0, v3}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 402
    sget-object v1, Lmirror/android/app/ActivityThread$ProviderClientRecord;->mProvider:Lmirror/RefObject;

    invoke-virtual {v1, v3}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    .line 403
    if-eqz v1, :cond_0

    sget-object v4, Lcom/lody/virtual/client/stub/StubManifest;->STUB_CP_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 404
    invoke-static {v7, v0, v1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->createProxy(ZLjava/lang/String;Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v0

    .line 405
    sget-object v1, Lmirror/android/app/ActivityThread$ProviderClientRecord;->mProvider:Lmirror/RefObject;

    invoke-virtual {v1, v3, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_2
    return-void
.end method

.method public static getClient()Lcom/lody/virtual/client/VClientImpl;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/lody/virtual/client/VClientImpl;->gClient:Lcom/lody/virtual/client/VClientImpl;

    return-object v0
.end method

.method private handleNewIntent(Lcom/lody/virtual/client/VClientImpl$NewIntentData;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 178
    sget-object v0, Lmirror/com/android/internal/content/ReferrerIntent;->ctor:Lmirror/RefConstructor;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->intent:Landroid/content/Intent;

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->creator:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 182
    :goto_0
    sget-object v1, Lmirror/android/app/ActivityThread;->performNewIntents:Lmirror/RefMethod;

    .line 183
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->token:Landroid/os/IBinder;

    aput-object v4, v3, v5

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v3, v6

    .line 182
    invoke-virtual {v1, v2, v3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void

    .line 180
    :cond_0
    iget-object v0, p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 346
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    .line 348
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    .line 349
    iget-boolean v5, v0, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v5, :cond_0

    .line 350
    const/4 v5, 0x0

    invoke-static {v1, p1, v0, v5}, Lmirror/android/app/ActivityThread;->installProvider(Ljava/lang/Object;Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 123
    iput p1, v0, Landroid/os/Message;->what:I

    .line 124
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/lody/virtual/client/VClientImpl;->mH:Lcom/lody/virtual/client/VClientImpl$H;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/VClientImpl$H;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method


# virtual methods
.method public acquireProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mTempLock:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mTempLock:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 364
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/lody/virtual/client/VClientImpl;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 369
    array-length v2, v0

    if-nez v2, :cond_2

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 370
    :goto_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 373
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    .line 374
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 381
    :goto_2
    if-eqz v2, :cond_5

    .line 382
    sget-object v0, Lmirror/android/content/ContentProviderClient;->mContentProvider:Lmirror/RefObject;

    invoke-virtual {v0, v2}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 383
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 385
    :goto_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_4
    return-object v0

    .line 369
    :cond_2
    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_0

    .line 376
    :cond_3
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 385
    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public bindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 191
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/client/VClientImpl;->bindApplicationNoCheck(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 194
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/lody/virtual/client/VClientImpl$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/lody/virtual/client/VClientImpl$2;-><init>(Lcom/lody/virtual/client/VClientImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0
.end method

.method public createProxyService(Landroid/content/ComponentName;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/lody/virtual/client/VClientImpl;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->getProxyService(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public finishActivity(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 415
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/local/VActivityManager;->finishActivity(Landroid/os/IBinder;)V

    .line 416
    return-void
.end method

.method public getAppThread()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lmirror/android/app/ActivityThread;->getApplicationThread:Lmirror/RefMethod;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Binder;

    .line 136
    new-instance v1, Lcom/lody/virtual/client/VClientImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/lody/virtual/client/VClientImpl$1;-><init>(Lcom/lody/virtual/client/VClientImpl;Landroid/os/Binder;)V

    return-object v1
.end method

.method public getBaseVUid()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/VClientImpl;->createPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getCurrentPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    iget-object v0, v0, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initialPkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getInitialPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public getVUid()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    return v0
.end method

.method public initProcess(Landroid/os/IBinder;I)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "initProcess IllegalStateException: Token is exist!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/lody/virtual/client/VClientImpl;->token:Landroid/os/IBinder;

    .line 156
    iput p2, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    .line 157
    return-void
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleNewIntent(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 420
    new-instance v0, Lcom/lody/virtual/client/VClientImpl$NewIntentData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/VClientImpl$NewIntentData;-><init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V

    .line 421
    iput-object p1, v0, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->creator:Ljava/lang/String;

    .line 422
    iput-object p2, v0, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->token:Landroid/os/IBinder;

    .line 423
    iput-object p3, v0, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->intent:Landroid/content/Intent;

    .line 424
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/lody/virtual/client/VClientImpl;->sendMessage(ILjava/lang/Object;)V

    .line 425
    return-void
.end method
