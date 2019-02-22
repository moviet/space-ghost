.class Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$Set;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "AlarmManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Set"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$1;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$Set;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    aget-object v0, p3, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$Set;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    .line 84
    :cond_0
    const-class v0, Landroid/os/WorkSource;

    invoke-static {p3, v0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    .line 85
    if-ltz v0, :cond_1

    .line 86
    const/4 v1, 0x0

    aput-object v1, p3, v0

    .line 88
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "set"

    return-object v0
.end method
