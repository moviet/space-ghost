.class public final Lcom/lody/virtual/client/core/PatchManager;
.super Ljava/lang/Object;
.source "PatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private injectableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/lody/virtual/client/interfaces/Injectable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/lody/virtual/client/core/PatchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/core/PatchManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/lody/virtual/client/core/PatchManager;->injectableMap:Ljava/util/Map;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/core/PatchManager$1;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lody/virtual/client/core/PatchManager;-><init>()V

    return-void
.end method

.method private addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lody/virtual/client/core/PatchManager;->injectableMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method private static fixSetting(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Class;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v1, "sNameValueCache"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/Reflect;->field(Ljava/lang/String;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v1, "mContentProvider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/helper/utils/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    .line 80
    return-void
.end method

.method public static getInstance()Lcom/lody/virtual/client/core/PatchManager;
    .locals 1

    .prologue
    .line 75
    # getter for: Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->sPatchManager:Lcom/lody/virtual/client/core/PatchManager;
    invoke-static {}, Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->access$000()Lcom/lody/virtual/client/core/PatchManager;

    move-result-object v0

    return-object v0
.end method

.method private injectInternal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v2, 0x11

    .line 121
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isServiceProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 126
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 131
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 132
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 134
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;->getDefault()Lcom/lody/virtual/client/hook/patchs/am/HCallbackHook;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 135
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 136
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 137
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/dropbox/DropBoxManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/dropbox/DropBoxManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 138
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 139
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 140
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 141
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 142
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/mount/MountServicePatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/mount/MountServicePatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 143
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/backup/BackupManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/backup/BackupManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 144
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/telephony/TelephonyPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/telephony/TelephonyPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 145
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/phonesubinfo/PhoneSubInfoPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/phonesubinfo/PhoneSubInfoPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 146
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 147
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appwidget/AppWidgetManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/appwidget/AppWidgetManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 148
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 149
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 150
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/search/SearchManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/search/SearchManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 151
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/content/ContentServicePatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/content/ContentServicePatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 154
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/vibrator/VibratorPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/vibrator/VibratorPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 155
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/wifi/WifiManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/wifi/WifiManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 156
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/bluetooth/BluetoothPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/bluetooth/BluetoothPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 158
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    .line 159
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 162
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_5

    .line 163
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 165
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 166
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 167
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/input/InputMethodManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/input/InputMethodManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 168
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 169
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/media/session/SessionManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/media/session/SessionManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 170
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/job/JobPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 171
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/restriction/RestrictionPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/restriction/RestrictionPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 173
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_7

    .line 174
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 175
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 176
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/media/router/MediaRouterServicePatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/media/router/MediaRouterServicePatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 178
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_8

    .line 179
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/graphics/GraphicsStatsPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/graphics/GraphicsStatsPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 181
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 182
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/net_management/NetworkManagementPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/net_management/NetworkManagementPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 184
    :cond_9
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/connectivity/ConnectivityPatch;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/connectivity/ConnectivityPatch;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkAll()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lody/virtual/client/core/PatchManager;->injectableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/interfaces/Injectable;

    .line 93
    invoke-interface {v0}, Lcom/lody/virtual/client/interfaces/Injectable;->isEnvBad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    :try_start_0
    invoke-interface {v0}, Lcom/lody/virtual/client/interfaces/Injectable;->inject()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public checkEnv(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/lody/virtual/client/interfaces/Injectable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/core/PatchManager;->findPatch(Ljava/lang/Class;)Lcom/lody/virtual/client/interfaces/Injectable;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lody/virtual/client/interfaces/Injectable;->isEnvBad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    :try_start_0
    invoke-interface {v0}, Lcom/lody/virtual/client/interfaces/Injectable;->inject()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public findPatch(Ljava/lang/Class;)Lcom/lody/virtual/client/interfaces/Injectable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/lody/virtual/client/interfaces/Injectable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lody/virtual/client/core/PatchManager;->injectableMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/interfaces/Injectable;

    return-object v0
.end method

.method public getHookObject(Ljava/lang/Class;)Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/lody/virtual/client/interfaces/Injectable;",
            "H::",
            "Lcom/lody/virtual/client/interfaces/IHookObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TH;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/core/PatchManager;->findPatch(Ljava/lang/Class;)Lcom/lody/virtual/client/interfaces/Injectable;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/lody/virtual/client/hook/base/PatchDelegate;

    if-eqz v1, :cond_0

    .line 212
    check-cast v0, Lcom/lody/virtual/client/hook/base/PatchDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 112
    # getter for: Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->sInit:Z
    invoke-static {}, Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PatchManager Has been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/PatchManager;->injectInternal()V

    .line 116
    const/4 v0, 0x1

    # setter for: Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->sInit:Z
    invoke-static {v0}, Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->access$102(Z)Z

    .line 118
    return-void
.end method

.method injectAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lody/virtual/client/core/PatchManager;->injectableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/interfaces/Injectable;

    .line 84
    invoke-interface {v0}, Lcom/lody/virtual/client/interfaces/Injectable;->inject()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->getDefault()Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/PatchManager;->addPatch(Lcom/lody/virtual/client/interfaces/Injectable;)V

    .line 89
    return-void
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 107
    # getter for: Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->sInit:Z
    invoke-static {}, Lcom/lody/virtual/client/core/PatchManager$PatchManagerHolder;->access$100()Z

    move-result v0

    return v0
.end method
