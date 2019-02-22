.class public Lcom/lody/virtual/client/env/VirtualRuntime;
.super Ljava/lang/Object;
.source "VirtualRuntime.java"


# static fields
.field private static sInitialPackageName:Ljava/lang/String;

.field private static sProcessName:Ljava/lang/String;

.field private static final sUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lody/virtual/client/env/VirtualRuntime;->sUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crash(Landroid/os/RemoteException;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/RemoteException;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 57
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/lody/virtual/client/env/CrashReporter;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->exit()V

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static exit()V
    .locals 5

    .prologue
    .line 65
    const-class v0, Lcom/lody/virtual/client/env/VirtualRuntime;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exit process : %s (%s)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getProcessName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 66
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lody/virtual/client/core/VirtualCore;->getProcessName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 65
    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 68
    return-void
.end method

.method public static getInitialPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/lody/virtual/client/env/VirtualRuntime;->sInitialPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lody/virtual/client/env/VirtualRuntime;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/lody/virtual/client/env/VirtualRuntime;->sUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isArt()Z
    .locals 2

    .prologue
    .line 71
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setupRuntime(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    sget-object v0, Lcom/lody/virtual/client/env/VirtualRuntime;->sProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/lody/virtual/client/env/VirtualRuntime;->sInitialPackageName:Ljava/lang/String;

    .line 46
    sput-object p0, Lcom/lody/virtual/client/env/VirtualRuntime;->sProcessName:Ljava/lang/String;

    .line 47
    sget-object v0, Lmirror/android/os/Process;->setArgV0:Lmirror/RefStaticMethod;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 49
    sget-object v0, Lmirror/android/ddm/DdmHandleAppNameJBMR1;->setAppName:Lmirror/RefStaticMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lmirror/android/ddm/DdmHandleAppName;->setAppName:Lmirror/RefStaticMethod;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
