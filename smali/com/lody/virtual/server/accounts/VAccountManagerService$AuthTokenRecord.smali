.class final Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;
.super Ljava/lang/Object;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/accounts/VAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AuthTokenRecord"
.end annotation


# instance fields
.field public account:Landroid/accounts/Account;

.field public authToken:Ljava/lang/String;

.field private authTokenType:Ljava/lang/String;

.field public expiryEpochMillis:J

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    iput p2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    .line 1057
    iput-object p3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    .line 1058
    iput-object p4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    .line 1059
    iput-object p5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->packageName:Ljava/lang/String;

    .line 1060
    return-void
.end method

.method public constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1047
    iput p2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    .line 1048
    iput-object p3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    .line 1049
    iput-object p4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    .line 1050
    iput-object p5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->packageName:Ljava/lang/String;

    .line 1051
    iput-object p6, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authToken:Ljava/lang/String;

    .line 1052
    iput-wide p7, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->expiryEpochMillis:J

    .line 1053
    return-void
.end method

.method static synthetic access$500(Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1064
    if-ne p0, p1, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return v0

    .line 1066
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 1067
    goto :goto_0

    .line 1068
    :cond_3
    check-cast p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    .line 1069
    iget v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    iget v3, p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    .line 1070
    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    iget-object v3, p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    .line 1071
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->packageName:Ljava/lang/String;

    .line 1072
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1077
    iget v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    invoke-virtual {v1}, Landroid/accounts/Account;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    .line 1078
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->packageName:Ljava/lang/String;

    .line 1079
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
