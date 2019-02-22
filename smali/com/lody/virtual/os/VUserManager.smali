.class public Lcom/lody/virtual/os/VUserManager;
.super Ljava/lang/Object;
.source "VUserManager.java"


# static fields
.field public static final DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lody/virtual/os/VUserManager;


# instance fields
.field private final mService:Lcom/lody/virtual/service/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "VUserManager"

    sput-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/lody/virtual/os/VUserManager;->sInstance:Lcom/lody/virtual/os/VUserManager;

    return-void
.end method

.method public constructor <init>(Lcom/lody/virtual/service/IUserManager;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    .line 120
    return-void
.end method

.method public static declared-synchronized get()Lcom/lody/virtual/os/VUserManager;
    .locals 3

    .prologue
    .line 110
    const-class v1, Lcom/lody/virtual/os/VUserManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->sInstance:Lcom/lody/virtual/os/VUserManager;

    if-nez v0, :cond_0

    .line 111
    const-string v0, "user"

    invoke-static {v0}, Lcom/lody/virtual/client/service/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/service/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IUserManager;

    move-result-object v0

    .line 112
    new-instance v2, Lcom/lody/virtual/os/VUserManager;

    invoke-direct {v2, v0}, Lcom/lody/virtual/os/VUserManager;-><init>(Lcom/lody/virtual/service/IUserManager;)V

    sput-object v2, Lcom/lody/virtual/os/VUserManager;->sInstance:Lcom/lody/virtual/os/VUserManager;

    .line 114
    :cond_0
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->sInstance:Lcom/lody/virtual/os/VUserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMaxSupportedUsers()I
    .locals 1

    .prologue
    .line 368
    const/16 v0, 0x9

    return v0
.end method

.method public static supportsMultipleUsers()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-static {}, Lcom/lody/virtual/os/VUserManager;->getMaxSupportedUsers()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createUser(Ljava/lang/String;I)Lcom/lody/virtual/os/VUserInfo;
    .locals 3

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IUserManager;->createUser(Ljava/lang/String;I)Lcom/lody/virtual/os/VUserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSerialNumberForUser(Lcom/lody/virtual/os/VUserHandle;)J
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/lody/virtual/os/VUserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lody/virtual/os/VUserManager;->getUserSerialNumber(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getUserCount()I
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/lody/virtual/os/VUserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getUserForSerialNumber(J)Lcom/lody/virtual/os/VUserHandle;
    .locals 3

    .prologue
    .line 202
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/lody/virtual/os/VUserManager;->getUserHandle(I)I

    move-result v1

    .line 203
    if-ltz v1, :cond_0

    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserHandle()I
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getUserHandle(I)I
    .locals 3

    .prologue
    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IUserManager;->getUserHandle(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 402
    :goto_0
    return v0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get VUserHandle for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IUserManager;->getUserIcon(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the user icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserInfo(I)Lcom/lody/virtual/os/VUserInfo;
    .locals 3

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IUserManager;->getUserInfo(I)Lcom/lody/virtual/os/VUserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-virtual {p0}, Lcom/lody/virtual/os/VUserManager;->getUserHandle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lody/virtual/service/IUserManager;->getUserInfo(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const-string v0, ""

    goto :goto_0
.end method

.method public getUserSerialNumber(I)I
    .locals 3

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IUserManager;->getUserSerialNumber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 384
    :goto_0
    return v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get serial number for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/os/VUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lody/virtual/service/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/os/VUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuestEnabled()Z
    .locals 2

    .prologue
    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0}, Lcom/lody/virtual/service/IUserManager;->isGuestEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 344
    :goto_0
    return v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not retrieve guest enabled state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAGoat()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public removeUser(I)Z
    .locals 3

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IUserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 272
    :goto_0
    return v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove user "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGuestEnabled(Z)V
    .locals 3

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IUserManager;->setGuestEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not change guest account availability to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the user icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the user name "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wipeUser(I)V
    .locals 3

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/service/IUserManager;

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IUserManager;->wipeUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not wipe user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
