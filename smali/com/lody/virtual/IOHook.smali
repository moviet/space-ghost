.class public Lcom/lody/virtual/IOHook;
.super Ljava/lang/Object;
.source "IOHook.java"


# static fields
.field public static ENABLE_IO_HOOK:Z

.field private static final TAG:Ljava/lang/String;

.field private static openDexFileNative:Ljava/lang/reflect/Method;

.field private static sDexOverrideMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/helper/proto/AppSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 29
    const-class v0, Lcom/lody/virtual/IOHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    .line 31
    sput-boolean v1, Lcom/lody/virtual/IOHook;->ENABLE_IO_HOOK:Z

    .line 49
    :try_start_0
    const-string v0, "iohook"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    const-string v0, "openDexFileNative"

    .line 132
    :goto_1
    const-class v2, Ldalvik/system/DexFile;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 133
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    sput-object v4, Lcom/lody/virtual/IOHook;->openDexFileNative:Ljava/lang/reflect/Method;

    .line 138
    :cond_0
    sget-object v1, Lcom/lody/virtual/IOHook;->openDexFileNative:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find method : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    sget-object v2, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_1
    const-string v0, "openDexFile"

    goto :goto_1

    .line 132
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 141
    :cond_3
    sget-object v0, Lcom/lody/virtual/IOHook;->openDexFileNative:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 142
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native enableTurboDex(I)V
.end method

.method public static getRedirectedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    sget-boolean v0, Lcom/lody/virtual/IOHook;->ENABLE_IO_HOOK:Z

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-object p0

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/lody/virtual/IOHook;->nativeGetRedirectedPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v1, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static hook()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    sget-boolean v0, Lcom/lody/virtual/IOHook;->ENABLE_IO_HOOK:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/lody/virtual/IOHook;->isSupportCpu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    sput-boolean v2, Lcom/lody/virtual/IOHook;->ENABLE_IO_HOOK:Z

    goto :goto_0

    .line 122
    :cond_1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/lody/virtual/IOHook;->nativeHook(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    sget-object v1, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static hookNative()V
    .locals 3

    .prologue
    .line 146
    :try_start_0
    sget-object v0, Lcom/lody/virtual/IOHook;->openDexFileNative:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->isArt()Z

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/IOHook;->nativeHookNative(Ljava/lang/Object;ZI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    sget-object v1, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isSupportCpu()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 103
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_3

    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "v8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "86"

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "686"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    :cond_2
    sget-object v2, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no support cpu "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :goto_0
    return v0

    .line 109
    :cond_3
    sget-object v2, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "support cpu "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/lody/virtual/helper/utils/VLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native nativeGetRedirectedPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeHook(I)V
.end method

.method private static native nativeHookNative(Ljava/lang/Object;ZI)V
.end method

.method private static native nativeMark()V
.end method

.method private static native nativeRedirect(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeRestoreRedirectedPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static onGetCallingUid(I)I
    .locals 4

    .prologue
    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 162
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getBaseVUid()I

    move-result v0

    .line 172
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getSystemPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 165
    const/16 v0, 0x3e8

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VActivityManager;->getUidByPid(I)I

    move-result v1

    .line 168
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 169
    invoke-static {v1}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    goto :goto_0

    .line 171
    :cond_2
    sget-object v1, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ops, who are you ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getBaseVUid()I

    move-result v0

    goto :goto_0
.end method

.method public static onGetUid(I)I
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getBaseVUid()I

    move-result v0

    return v0
.end method

.method public static onKillProcess(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    sget-object v0, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    const-string v1, "killProcess: pid = %d, signal = %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 155
    sget-object v0, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_0
    return-void
.end method

.method public static onOpenDexFileNative([Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 176
    aget-object v0, p0, v6

    .line 177
    aget-object v1, p0, v5

    .line 178
    sget-object v2, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    const-string v3, "DexOrJarPath = %s, OutputPath = %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/lody/virtual/IOHook;->sDexOverrideMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 182
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/lody/virtual/helper/proto/AppSetting;->dependSystem:Z

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/lody/virtual/helper/proto/AppSetting;->getOdexFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 184
    const/4 v1, 0x1

    aput-object v0, p0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static redirect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    sget-boolean v0, Lcom/lody/virtual/IOHook;->ENABLE_IO_HOOK:Z

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/lody/virtual/IOHook;->nativeRedirect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    sget-object v1, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static restoreRedirectedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    sget-boolean v0, Lcom/lody/virtual/IOHook;->ENABLE_IO_HOOK:Z

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-object p0

    .line 72
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/lody/virtual/IOHook;->nativeRestoreRedirectedPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static setTurboDex(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-static {}, Lcom/lody/virtual/IOHook;->isSupportCpu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->isArt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    if-eqz p0, :cond_1

    move v0, v1

    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/lody/virtual/IOHook;->enableTurboDex(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    sget-object v3, Lcom/lody/virtual/IOHook;->TAG:Ljava/lang/String;

    const-string v4, "enableTurboDex"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static startDexOverride()V
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getAllApps()Ljava/util/List;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/lody/virtual/IOHook;->sDexOverrideMap:Ljava/util/Map;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    .line 40
    :try_start_0
    sget-object v2, Lcom/lody/virtual/IOHook;->sDexOverrideMap:Ljava/util/Map;

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
