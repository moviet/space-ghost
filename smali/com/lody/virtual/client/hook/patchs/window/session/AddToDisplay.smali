.class Lcom/lody/virtual/client/hook/patchs/window/session/AddToDisplay;
.super Lcom/lody/virtual/client/hook/patchs/window/session/BaseReplacePkgName;
.source "AddToDisplay.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/window/session/BaseReplacePkgName;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "addToDisplay"

    return-object v0
.end method
