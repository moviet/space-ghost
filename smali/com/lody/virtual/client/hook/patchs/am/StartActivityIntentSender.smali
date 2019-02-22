.class public Lcom/lody/virtual/client/hook/patchs/am/StartActivityIntentSender;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "StartActivityIntentSender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

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
    .line 18
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/Hook;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "startActivityIntentSender"

    return-object v0
.end method
