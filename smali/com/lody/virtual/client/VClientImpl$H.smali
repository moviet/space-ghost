.class Lcom/lody/virtual/client/VClientImpl$H;
.super Landroid/os/Handler;
.source "VClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/VClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/VClientImpl;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/VClientImpl;)V
    .locals 1

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lody/virtual/client/VClientImpl$H;->this$0:Lcom/lody/virtual/client/VClientImpl;

    .line 162
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/VClientImpl$H;-><init>(Lcom/lody/virtual/client/VClientImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v1, p0, Lcom/lody/virtual/client/VClientImpl$H;->this$0:Lcom/lody/virtual/client/VClientImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/client/VClientImpl$NewIntentData;

    # invokes: Lcom/lody/virtual/client/VClientImpl;->handleNewIntent(Lcom/lody/virtual/client/VClientImpl$NewIntentData;)V
    invoke-static {v1, v0}, Lcom/lody/virtual/client/VClientImpl;->access$100(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$NewIntentData;)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
