.class abstract Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "VAccountManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/accounts/VAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAuthDetailsRequired:Z

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mAuthenticatorInfo:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

.field private mCreationTime:J

.field private mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field private mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field private mUpdateLastAuthenticatedTime:Z

.field final mUserId:I

.field final synthetic this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;)V
    .locals 10

    .prologue
    .line 1129
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;ZZ)V

    .line 1130
    return-void
.end method

.method constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 1105
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_0
    iput-boolean p6, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 1107
    iput-object p2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1108
    iput p3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mUserId:I

    .line 1109
    iput-object p4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthenticatorInfo:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    .line 1110
    iput-boolean p5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 1111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mCreationTime:J

    .line 1112
    iput-object p7, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 1113
    iput-boolean p8, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 1114
    iput-boolean p9, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 1115
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$600(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 1116
    :try_start_0
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$600(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    if-eqz p2, :cond_1

    .line 1120
    :try_start_1
    invoke-interface {p2}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1126
    :cond_1
    :goto_0
    return-void

    .line 1117
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1123
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->binderDied()V

    goto :goto_0
.end method

.method private close()V
    .locals 3

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$600(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 1144
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$600(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1146
    monitor-exit v1

    .line 1157
    :goto_0
    return-void

    .line 1148
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1156
    :cond_1
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->unbind()V

    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private unbind()V
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    .line 1316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1317
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$700(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1319
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1290
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthenticatorInfo:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    iget-object v2, v2, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1292
    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthenticatorInfo:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    iget-object v1, v1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthenticatorInfo:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    iget-object v2, v2, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    const-string v1, "_VA_|_user_id_"

    iget v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1296
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$700(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind attempt failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const-string v0, "bind failure"

    invoke-virtual {p0, v3, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 1300
    :cond_0
    return-void
.end method

.method public binderDied()V
    .locals 1

    .prologue
    .line 1323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1324
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->close()V

    .line 1325
    return-void
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v0, :cond_0

    .line 1135
    const/4 v0, 0x0

    .line 1139
    :goto_0
    return-object v0

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1138
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->close()V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 1177
    iget v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mNumErrors:I

    .line 1178
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 1179
    if-eqz v0, :cond_0

    .line 1180
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calling onError() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :goto_0
    return-void

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Session.onError: caught RemoteException while responding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1188
    :cond_0
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Session.onError: already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRequestContinued()V
    .locals 1

    .prologue
    .line 1172
    iget v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mNumRequestContinued:I

    .line 1173
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1209
    iget v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mNumResults:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mNumResults:I

    .line 1210
    if-eqz p1, :cond_5

    .line 1211
    const-string v0, "booleanResult"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1213
    const-string v0, "authAccount"

    .line 1214
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "accountType"

    .line 1215
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 1219
    :goto_0
    iget-boolean v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    if-eqz v4, :cond_a

    if-nez v3, :cond_0

    if-eqz v0, :cond_a

    .line 1221
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    iget-boolean v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v0, :cond_5

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$000(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 1223
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    iget v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mUserId:I

    iget-object v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthenticatorInfo:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    iget-object v5, v5, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILjava/lang/String;Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v3

    .line 1224
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 1225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/lody/virtual/server/accounts/VAccount;->lastAuthenticatedTime:J

    .line 1226
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # invokes: Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$100(Lcom/lody/virtual/server/accounts/VAccountManagerService;)V

    .line 1228
    :cond_2
    iget-boolean v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v0, :cond_4

    .line 1229
    const-wide/16 v0, -0x1

    .line 1230
    if-eqz v3, :cond_3

    .line 1231
    iget-wide v0, v3, Lcom/lody/virtual/server/accounts/VAccount;->lastAuthenticatedTime:J

    .line 1233
    :cond_3
    const-string v3, "lastAuthenticatedTime"

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1235
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "authtoken"

    .line 1239
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1247
    :cond_6
    const/4 v0, 0x0

    .line 1248
    if-eqz p1, :cond_7

    .line 1249
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1252
    :cond_7
    iget-boolean v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v1, :cond_b

    if-eqz p1, :cond_b

    const-string v1, "intent"

    .line 1253
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1254
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1258
    :goto_2
    if-eqz v1, :cond_8

    .line 1260
    if-nez p1, :cond_c

    .line 1261
    :try_start_1
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calling onError() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const/4 v0, 0x5

    const-string v2, "null bundle returned"

    invoke-interface {v1, v0, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1285
    :cond_8
    :goto_3
    return-void

    :cond_9
    move v0, v2

    .line 1215
    goto/16 :goto_0

    :cond_a
    move v1, v2

    .line 1219
    goto/16 :goto_1

    .line 1235
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1256
    :cond_b
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    goto :goto_2

    .line 1266
    :cond_c
    :try_start_3
    iget-boolean v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mStripAuthTokenFromResult:Z

    if-eqz v2, :cond_d

    .line 1267
    const-string v2, "authtoken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1269
    :cond_d
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calling onResult() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const-string v2, "errorCode"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_e

    if-nez v0, :cond_e

    .line 1274
    const-string v0, "errorCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "errorMessage"

    .line 1275
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1274
    invoke-interface {v1, v0, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1280
    :catch_0
    move-exception v0

    .line 1282
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1277
    :cond_e
    :try_start_4
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 1161
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1163
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :goto_0
    return-void

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    const/4 v0, 0x1

    const-string v1, "remote exception"

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 1194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1195
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 1196
    if-eqz v0, :cond_0

    .line 1198
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "disconnected"

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected toDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mNumRequestContinued:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->mCreationTime:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
