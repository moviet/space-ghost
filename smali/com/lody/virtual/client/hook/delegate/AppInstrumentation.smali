.class public final Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;
.super Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;
.source "AppInstrumentation.java"

# interfaces
.implements Lcom/lody/virtual/client/interfaces/Injectable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static gDefault:Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;


# instance fields
.field private activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Instrumentation;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;-><init>(Landroid/app/Instrumentation;)V

    .line 33
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getActivityDelegate()Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    .line 34
    return-void
.end method

.method private static create()Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lmirror/android/app/ActivityThread;->mInstrumentation:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    .line 49
    instance-of v1, v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    if-eqz v1, :cond_0

    .line 50
    check-cast v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    invoke-direct {v1, v0}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;-><init>(Landroid/app/Instrumentation;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getDefault()Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->gDefault:Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->gDefault:Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->create()Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->gDefault:Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->gDefault:Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 68
    sget-object v0, Lmirror/android/app/Activity;->mToken:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 69
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VActivityManager;->getActivityRecord(Landroid/os/IBinder;)Lcom/lody/virtual/client/local/ActivityClientRecord;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    iput-object p1, v1, Lcom/lody/virtual/client/local/ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 73
    :cond_0
    invoke-static {p1}, Lcom/lody/virtual/client/fixer/ContextFixer;->fixContext(Landroid/content/Context;)V

    .line 74
    invoke-static {p1}, Lcom/lody/virtual/client/fixer/ActivityFixer;->fixActivity(Landroid/app/Activity;)V

    .line 75
    const/4 v0, 0x0

    .line 76
    if-eqz v1, :cond_1

    .line 77
    iget-object v0, v1, Lcom/lody/virtual/client/local/ActivityClientRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 79
    :cond_1
    if-eqz v0, :cond_3

    .line 80
    iget v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v1, :cond_2

    .line 81
    iget v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget v1, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v1, v2, :cond_3

    .line 85
    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 88
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;->onActivityCreate(Landroid/app/Activity;)V

    .line 92
    :cond_4
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 112
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;->onActivityDestroy(Landroid/app/Activity;)V

    .line 115
    :cond_0
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callActivityOnPause(Landroid/app/Activity;)V

    .line 120
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;->onActivityPaused(Landroid/app/Activity;)V

    .line 123
    :cond_0
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/local/VActivityManager;->onActivityResumed(Landroid/app/Activity;)V

    .line 97
    invoke-super {p0, p1}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callActivityOnResume(Landroid/app/Activity;)V

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 99
    const-string v1, "_VA_|_sender_"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    const-string v1, "_VA_|_loading_token_"

    invoke-static {v0, v1}, Lcom/lody/virtual/helper/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 102
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/compat/ActivityManagerCompat;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;->onActivityResumed(Landroid/app/Activity;)V

    .line 107
    :cond_1
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 128
    return-void
.end method

.method public inject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lmirror/android/app/ActivityThread;->mInstrumentation:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public isEnvBad()Z
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lmirror/android/app/ActivityThread;->mInstrumentation:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
