.class Lcom/lody/virtual/client/hook/patchs/job/JobPatch$cancel;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "JobPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/job/JobPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cancel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/job/JobPatch;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$cancel;->this$0:Lcom/lody/virtual/client/hook/patchs/job/JobPatch;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;Lcom/lody/virtual/client/hook/patchs/job/JobPatch$1;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$cancel;-><init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    invoke-static {}, Lcom/lody/virtual/client/local/VJobScheduler;->get()Lcom/lody/virtual/client/local/VJobScheduler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VJobScheduler;->cancel(I)V

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "cancel"

    return-object v0
.end method
