.class Lcom/lody/virtual/client/hook/patchs/job/JobPatch$getAllPendingJobs;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "JobPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/job/JobPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getAllPendingJobs"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/job/JobPatch;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$getAllPendingJobs;->this$0:Lcom/lody/virtual/client/hook/patchs/job/JobPatch;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;Lcom/lody/virtual/client/hook/patchs/job/JobPatch$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$getAllPendingJobs;-><init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;)V

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
    .line 70
    invoke-static {}, Lcom/lody/virtual/client/local/VJobScheduler;->get()Lcom/lody/virtual/client/local/VJobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/local/VJobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "getAllPendingJobs"

    return-object v0
.end method
