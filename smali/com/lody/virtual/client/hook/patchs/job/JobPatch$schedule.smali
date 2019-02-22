.class Lcom/lody/virtual/client/hook/patchs/job/JobPatch$schedule;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "JobPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/job/JobPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "schedule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/job/JobPatch;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$schedule;->this$0:Lcom/lody/virtual/client/hook/patchs/job/JobPatch;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;Lcom/lody/virtual/client/hook/patchs/job/JobPatch$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$schedule;-><init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 57
    invoke-static {}, Lcom/lody/virtual/client/local/VJobScheduler;->get()Lcom/lody/virtual/client/local/VJobScheduler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VJobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "schedule"

    return-object v0
.end method
