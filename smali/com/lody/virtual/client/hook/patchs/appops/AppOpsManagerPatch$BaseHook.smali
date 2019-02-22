.class Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;
.super Lcom/lody/virtual/client/hook/base/StaticHook;
.source "AppOpsManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseHook"
.end annotation


# instance fields
.field final pkgIndex:I

.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;

.field final uidIndex:I


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->this$0:Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;

    .line 60
    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    .line 61
    iput p4, p0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->pkgIndex:I

    .line 62
    iput p3, p0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->uidIndex:I

    .line 63
    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 67
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->pkgIndex:I

    if-eq v0, v2, :cond_0

    array-length v0, p3

    iget v1, p0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->pkgIndex:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->pkgIndex:I

    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->pkgIndex:I

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 70
    :cond_0
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->uidIndex:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->uidIndex:I

    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 71
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->uidIndex:I

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;->getRealUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 73
    :cond_1
    const-string v0, "AppOpsManagerPatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeCall mehtod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method
