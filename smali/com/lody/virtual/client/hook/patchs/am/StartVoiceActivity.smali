.class public Lcom/lody/virtual/client/hook/patchs/am/StartVoiceActivity;
.super Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;
.source "StartVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "startVoiceActivity"

    return-object v0
.end method
