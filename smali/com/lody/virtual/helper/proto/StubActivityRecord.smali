.class public Lcom/lody/virtual/helper/proto/StubActivityRecord;
.super Ljava/lang/Object;
.source "StubActivityRecord.java"


# instance fields
.field public caller:Landroid/content/ComponentName;

.field public info:Landroid/content/pm/ActivityInfo;

.field public intent:Landroid/content/Intent;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "_VA_|_intent_"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->intent:Landroid/content/Intent;

    .line 26
    const-string v0, "_VA_|_info_"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 27
    const-string v0, "_VA_|_caller_"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->caller:Landroid/content/ComponentName;

    .line 28
    const-string v0, "_VA_|_user_id_"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->userId:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/ComponentName;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->intent:Landroid/content/Intent;

    .line 19
    iput-object p2, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 20
    iput-object p3, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->caller:Landroid/content/ComponentName;

    .line 21
    iput p4, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->userId:I

    .line 22
    return-void
.end method


# virtual methods
.method public saveToIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 32
    const-string v0, "_VA_|_intent_"

    iget-object v1, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    const-string v0, "_VA_|_info_"

    iget-object v1, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    const-string v0, "_VA_|_caller_"

    iget-object v1, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->caller:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    const-string v0, "_VA_|_user_id_"

    iget v1, p0, Lcom/lody/virtual/helper/proto/StubActivityRecord;->userId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    return-void
.end method
