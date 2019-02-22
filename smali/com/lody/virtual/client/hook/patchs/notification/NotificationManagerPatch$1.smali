.class Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch$1;
.super Lcom/lody/virtual/client/hook/base/HookDelegate;
.source "NotificationManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;
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
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch$1;->this$0:Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInterface()Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lmirror/android/app/NotificationManager;->getService:Lmirror/RefStaticMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method protected bridge synthetic createInterface()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch$1;->createInterface()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method
