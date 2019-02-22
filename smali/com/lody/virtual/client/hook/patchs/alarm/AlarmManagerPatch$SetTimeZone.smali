.class Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$SetTimeZone;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "AlarmManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetTimeZone"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$SetTimeZone;-><init>()V

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
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "setTimeZone"

    return-object v0
.end method
