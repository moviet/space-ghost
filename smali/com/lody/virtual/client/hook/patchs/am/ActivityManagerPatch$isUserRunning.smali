.class Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$isUserRunning;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "ActivityManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "isUserRunning"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$isUserRunning;->this$0:Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$1;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$isUserRunning;-><init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "isUserRunning"

    return-object v0
.end method
