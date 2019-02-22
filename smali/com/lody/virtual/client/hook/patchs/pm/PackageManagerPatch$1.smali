.class Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch$1;
.super Lcom/lody/virtual/client/hook/base/HookDelegate;
.source "PackageManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;
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
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch$1;->this$0:Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInterface()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lmirror/android/app/ActivityThread;->sPackageManager:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method protected bridge synthetic createInterface()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch$1;->createInterface()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method
