.class Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch$BaseHook;
.super Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;
.source "LocationManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseHook"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    array-length v0, p3

    if-lez v0, :cond_1

    .line 39
    aget-object v0, p3, v2

    .line 40
    sget-object v1, Lmirror/android/location/LocationRequestL;->mHideFromAppOps:Lmirror/RefBoolean;

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lmirror/android/location/LocationRequestL;->mHideFromAppOps:Lmirror/RefBoolean;

    invoke-virtual {v1, v0, v2}, Lmirror/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 43
    :cond_0
    sget-object v1, Lmirror/android/location/LocationRequestL;->mWorkSource:Lmirror/RefObject;

    if-eqz v1, :cond_1

    .line 44
    sget-object v1, Lmirror/android/location/LocationRequestL;->mWorkSource:Lmirror/RefObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
