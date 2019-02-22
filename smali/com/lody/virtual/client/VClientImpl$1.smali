.class Lcom/lody/virtual/client/VClientImpl$1;
.super Lcom/lody/virtual/server/secondary/FakeIdentityBinder;
.source "VClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/VClientImpl;->getAppThread()Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/VClientImpl;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/VClientImpl;Landroid/os/Binder;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lody/virtual/client/VClientImpl$1;->this$0:Lcom/lody/virtual/client/VClientImpl;

    invoke-direct {p0, p2}, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;-><init>(Landroid/os/Binder;)V

    return-void
.end method


# virtual methods
.method protected getFakeUid()I
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0x3e8

    return v0
.end method
