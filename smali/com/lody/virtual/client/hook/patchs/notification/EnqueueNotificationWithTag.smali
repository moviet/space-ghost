.class Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotificationWithTag;
.super Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotification;
.source "EnqueueNotificationWithTag.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotification;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "enqueueNotificationWithTag"

    return-object v0
.end method
