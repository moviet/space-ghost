.class Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$3;
.super Lcom/lody/virtual/client/hook/base/StaticHook;
.source "ActivityManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->onBindHooks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$3;->this$0:Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;

    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
