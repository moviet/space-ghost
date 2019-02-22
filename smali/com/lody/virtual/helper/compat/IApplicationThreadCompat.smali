.class public Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;
.super Ljava/lang/Object;
.source "IApplicationThreadCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scheduleBindService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 38
    sget-object v0, Lmirror/android/app/IApplicationThreadKitkat;->scheduleBindService:Lmirror/RefMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lmirror/android/app/IApplicationThread;->scheduleBindService:Lmirror/RefMethod;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static scheduleCreateService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 25
    sget-object v0, Lmirror/android/app/IApplicationThreadKitkat;->scheduleCreateService:Lmirror/RefMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    sget-object v2, Lmirror/android/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Lmirror/RefStaticObject;

    invoke-virtual {v2}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    .line 26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 25
    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 28
    sget-object v0, Lmirror/android/app/IApplicationThreadICSMR1;->scheduleCreateService:Lmirror/RefMethod;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    sget-object v2, Lmirror/android/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Lmirror/RefStaticObject;

    invoke-virtual {v2}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lmirror/android/app/IApplicationThread;->scheduleCreateService:Lmirror/RefMethod;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static scheduleServiceArgs(Landroid/os/IInterface;Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 51
    sget-object v0, Lmirror/android/app/IApplicationThreadICSMR1;->scheduleServiceArgs:Lmirror/RefMethod;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p5, v1, v6

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v0, Lmirror/android/app/IApplicationThread;->scheduleServiceArgs:Lmirror/RefMethod;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p5, v1, v5

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static scheduleStopService(Landroid/os/IInterface;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lmirror/android/app/IApplicationThread;->scheduleStopService:Lmirror/RefMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public static scheduleUnbindService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lmirror/android/app/IApplicationThread;->scheduleUnbindService:Lmirror/RefMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method
