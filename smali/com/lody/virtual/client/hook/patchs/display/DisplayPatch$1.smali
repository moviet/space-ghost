.class Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch$1;
.super Lcom/lody/virtual/client/hook/base/HookDelegate;
.source "DisplayPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/HookDelegate",
        "<",
        "Landroid/os/IInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch$1;->this$0:Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInterface()Landroid/os/IInterface;
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lmirror/android/hardware/display/DisplayManagerGlobal;->mDm:Lmirror/RefObject;

    sget-object v1, Lmirror/android/hardware/display/DisplayManagerGlobal;->getInstance:Lmirror/RefStaticMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    invoke-virtual {v1, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method protected bridge synthetic createInterface()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch$1;->createInterface()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method
