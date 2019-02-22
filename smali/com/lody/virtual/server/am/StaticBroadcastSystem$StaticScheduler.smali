.class final Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticScheduler;
.super Landroid/os/Handler;
.source "StaticBroadcastSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/StaticBroadcastSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StaticScheduler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/am/StaticBroadcastSystem$1;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticScheduler;-><init>()V

    return-void
.end method
