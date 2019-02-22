.class Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "BroadcastIntent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastIntent"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method private handleInstallShortcutIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "BroadcastIntent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInstallShortcutIntent pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;->isAppPkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string v0, "BroadcastIntent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleInstallShortcutIntent, Don\'t create for pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/lody/virtual/client/env/Constants;->SHORTCUT_PROXY_ACTIVITY_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v3, "_VA_|_intent_"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    const-string v3, "_VA_|_uri_"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v0, "_VA_|_user_id_"

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 97
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    .line 101
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lody/virtual/client/core/VirtualCore;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_0

    .line 105
    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v3, "drawable"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 106
    if-lez v0, :cond_0

    .line 107
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/BitmapUtils;->drawableToBitMap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "BroadcastIntent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;->handleInstallShortcutIntent(Landroid/content/Intent;)V

    .line 72
    :goto_0
    return-object p1

    .line 61
    :cond_0
    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;->handleUninstallShortcutIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "_VA_protected_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v0, "BroadcastIntent"

    const-string v1, "handleIntent = Don\'t redirect for VA broadcast"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const/4 p1, 0x0

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->modifyAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    :cond_3
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/lody/virtual/helper/utils/ComponentUtils;->redirectBroadcastIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0
.end method

.method private handleUninstallShortcutIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 125
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    const-string v2, "_VA_|_uri_"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/lody/virtual/client/env/Constants;->SHORTCUT_PROXY_ACTIVITY_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 133
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x7

    .line 36
    aget-object v0, p3, v4

    check-cast v0, Landroid/content/Intent;

    .line 37
    const/4 v1, 0x2

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getActivityDelegate()Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getActivityDelegate()Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;->onSendBroadcast(Landroid/content/Intent;)V

    .line 42
    :cond_0
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;->handleIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    aput-object v0, p3, v4

    .line 46
    :cond_1
    aget-object v0, p3, v3

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_2

    aget-object v0, p3, v3

    instance-of v0, v0, [Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 48
    :cond_2
    const/4 v0, 0x0

    aput-object v0, p3, v3

    .line 50
    :cond_3
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "broadcastIntent"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;->isAppProcess()Z

    move-result v0

    return v0
.end method
