.class Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/ServiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeathRecipient"
.end annotation


# instance fields
.field private final bindRecord:Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

.field private final connection:Landroid/app/IServiceConnection;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;Landroid/app/IServiceConnection;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;->bindRecord:Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 117
    iput-object p2, p0, Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;->connection:Landroid/app/IServiceConnection;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;Landroid/app/IServiceConnection;Lcom/lody/virtual/server/am/ServiceRecord$1;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;-><init>(Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;Landroid/app/IServiceConnection;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;->bindRecord:Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    iget-object v1, p0, Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;->connection:Landroid/app/IServiceConnection;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->removeConnection(Landroid/app/IServiceConnection;)V

    .line 123
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;->connection:Landroid/app/IServiceConnection;

    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 124
    return-void
.end method
