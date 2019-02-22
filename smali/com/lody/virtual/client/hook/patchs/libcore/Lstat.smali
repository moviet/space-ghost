.class public Lcom/lody/virtual/client/hook/patchs/libcore/Lstat;
.super Lcom/lody/virtual/client/hook/patchs/libcore/Stat;
.source "Lstat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/libcore/Stat;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "lstat"

    return-object v0
.end method
