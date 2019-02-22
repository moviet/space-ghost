.class Lcom/lody/virtual/client/hook/patchs/vibrator/VibratorPatch$1;
.super Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;
.source "VibratorPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/vibrator/VibratorPatch;->onBindHooks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/vibrator/VibratorPatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/vibrator/VibratorPatch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/vibrator/VibratorPatch$1;->this$0:Lcom/lody/virtual/client/hook/patchs/vibrator/VibratorPatch;

    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    aget-object v0, p3, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/vibrator/VibratorPatch$1;->getRealUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    .line 37
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
