.class public Lcom/lody/virtual/client/hook/binders/GraphicsStatsBinderDelegate;
.super Lcom/lody/virtual/client/hook/base/HookBinderDelegate;
.source "GraphicsStatsBinderDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInterface()Landroid/os/IInterface;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    sget-object v0, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "graphicsstats"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 21
    if-eqz v0, :cond_0

    .line 22
    sget-object v1, Lmirror/android/view/IGraphicsStats$Stub;->asInterface:Lmirror/RefStaticMethod;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 24
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic createInterface()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/binders/GraphicsStatsBinderDelegate;->createInterface()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method
