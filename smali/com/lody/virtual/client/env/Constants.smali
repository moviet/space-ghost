.class public Lcom/lody/virtual/client/env/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static ACTION_INSTALL_PACKAGE:Ljava/lang/String; = null

.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final ACTION_PACKAGE_ADDED:Ljava/lang/String; = "virtual.android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "virtual.android.intent.action.PACKAGE_CHANGED"

.field public static final ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "virtual.android.intent.action.PACKAGE_REMOVED"

.field public static ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = null

.field public static final ACTION_UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field public static final ACTION_USER_ADDED:Ljava/lang/String; = "virtual.android.intent.action.USER_ADDED"

.field public static final ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "virtual.android.intent.action.USER_CHANGED"

.field public static final ACTION_USER_REMOVED:Ljava/lang/String; = "virtual.android.intent.action.USER_REMOVED"

.field public static final ACTION_USER_STARTED:Ljava/lang/String; = "Virtual.android.intent.action.USER_STARTED"

.field public static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final FEATURE_FAKE_SIGNATURE:Ljava/lang/String; = "fake-signature"

.field public static META_KEY_IDENTITY:Ljava/lang/String; = null

.field public static META_VALUE_STUB:Ljava/lang/String; = null

.field public static SERVER_PROCESS_NAME:Ljava/lang/String; = null

.field public static SHORTCUT_PROXY_ACTIVITY_NAME:Ljava/lang/String; = null

.field public static final SYSTEM_UI_PKG:Ljava/lang/String; = "com.android.systemui"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "X-Identity"

    sput-object v0, Lcom/lody/virtual/client/env/Constants;->META_KEY_IDENTITY:Ljava/lang/String;

    .line 16
    const-string v0, "Stub-User"

    sput-object v0, Lcom/lody/virtual/client/env/Constants;->META_VALUE_STUB:Ljava/lang/String;

    .line 21
    const-string v0, ":x"

    sput-object v0, Lcom/lody/virtual/client/env/Constants;->SERVER_PROCESS_NAME:Ljava/lang/String;

    .line 49
    const-class v0, Lcom/lody/virtual/client/stub/ShortcutHandleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/env/Constants;->SHORTCUT_PROXY_ACTIVITY_NAME:Ljava/lang/String;

    .line 51
    const-string v0, "android.intent.action.VIRTUAL_INSTALL_PACKAGE"

    sput-object v0, Lcom/lody/virtual/client/env/Constants;->ACTION_INSTALL_PACKAGE:Ljava/lang/String;

    .line 53
    const-string v0, "android.intent.action.VIRTUAL_UNINSTALL_PACKAGE"

    sput-object v0, Lcom/lody/virtual/client/env/Constants;->ACTION_UNINSTALL_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
