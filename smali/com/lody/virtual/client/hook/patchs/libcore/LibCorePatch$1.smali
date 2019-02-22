.class Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch$1;
.super Lcom/lody/virtual/client/hook/base/HookDelegate;
.source "LibCorePatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/HookDelegate",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch$1;->this$0:Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInterface()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    # invokes: Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->getOs()Ljava/lang/Object;
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->access$000()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
