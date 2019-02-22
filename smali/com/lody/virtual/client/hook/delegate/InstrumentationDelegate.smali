.class public Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;
.super Landroid/app/Instrumentation;
.source "InstrumentationDelegate.java"


# instance fields
.field private base:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    .line 30
    return-void
.end method

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0, p1}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 145
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 251
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 256
    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 284
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 322
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 273
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 279
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 295
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 261
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 268
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 300
    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 310
    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 317
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 290
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 305
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 327
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 226
    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z

    move-result v0

    return v0
.end method

.method public endPerformanceSnapshot()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 80
    return-void
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->finish(ILandroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getAllocCounts()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeContextMenuAction(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeMenuActionSync(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public isProfiling()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    .line 85
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onStart()V

    .line 50
    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 175
    return-void
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public sendCharacterSync(I)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendCharacterSync(I)V

    .line 205
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 200
    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 195
    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 210
    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendTrackballEventSync(Landroid/view/MotionEvent;)V

    .line 215
    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->setAutomaticPerformanceSnapshots()V

    .line 70
    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 120
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->start()V

    .line 45
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startPerformanceSnapshot()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startPerformanceSnapshot()V

    .line 75
    return-void
.end method

.method public startProfiling()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startProfiling()V

    .line 110
    return-void
.end method

.method public stopProfiling()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->stopProfiling()V

    .line 115
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->waitForIdle(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public waitForIdleSync()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 130
    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->base:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
