.class Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch$1;
.super Lcom/lody/virtual/client/hook/base/HookDelegate;
.source "WindowSessionPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;
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
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch$1;->this$0:Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInterface()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch$1;->this$0:Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;

    # getter for: Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;->baseObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;->access$000(Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method protected bridge synthetic createInterface()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch$1;->createInterface()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method
