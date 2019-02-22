.class Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotificationWithTagPriority;
.super Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotificationWithTag;
.source "EnqueueNotificationWithTagPriority.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotificationWithTag;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "enqueueNotificationWithTagPriority"

    return-object v0
.end method
