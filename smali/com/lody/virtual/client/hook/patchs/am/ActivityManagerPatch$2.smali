.class Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$2;
.super Lcom/lody/virtual/client/hook/base/HookBinderDelegate;
.source "ActivityManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->inject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$2;->this$0:Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInterface()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$2;->this$0:Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getBaseInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method protected bridge synthetic createInterface()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$2;->createInterface()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method
