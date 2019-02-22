.class public Lcom/lody/virtual/client/hook/patchs/am/StartNextMatchingActivity;
.super Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;
.source "StartNextMatchingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
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
    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const-string v0, "startNextMatchingActivity"

    return-object v0
.end method
