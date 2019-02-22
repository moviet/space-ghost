.class Lcom/lody/virtual/client/hook/patchs/am/StartActivityAsCaller;
.super Lcom/lody/virtual/client/hook/patchs/am/StartActivity;
.source "StartActivityAsCaller.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/am/StartActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "startActivityAsCaller"

    return-object v0
.end method
