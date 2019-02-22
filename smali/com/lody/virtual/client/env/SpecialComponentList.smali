.class public final Lcom/lody/virtual/client/env/SpecialComponentList;
.super Ljava/lang/Object;
.source "SpecialComponentList.java"


# static fields
.field private static final ACTION_BLACK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODIFY_ACTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITE_PERMISSION:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->ACTION_BLACK_LIST:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->MODIFY_ACTION_MAP:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->WHITE_PERMISSION:Ljava/util/HashSet;

    .line 23
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->ACTION_BLACK_LIST:Ljava/util/List;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->MODIFY_ACTION_MAP:Ljava/util/Map;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const-string v2, "virtual.android.intent.action.PACKAGE_ADDED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->MODIFY_ACTION_MAP:Ljava/util/Map;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    const-string v2, "virtual.android.intent.action.PACKAGE_REMOVED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->MODIFY_ACTION_MAP:Ljava/util/Map;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    const-string v2, "virtual.android.intent.action.PACKAGE_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->MODIFY_ACTION_MAP:Ljava/util/Map;

    const-string v1, "android.intent.action.USER_ADDED"

    const-string v2, "virtual.android.intent.action.USER_ADDED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->MODIFY_ACTION_MAP:Ljava/util/Map;

    const-string v1, "android.intent.action.USER_REMOVED"

    const-string v2, "virtual.android.intent.action.USER_REMOVED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->WHITE_PERMISSION:Ljava/util/HashSet;

    const-string v1, "com.google.android.gms.settings.SECURITY_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->WHITE_PERMISSION:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.plus.PRIVACY_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->WHITE_PERMISSION:Ljava/util/HashSet;

    const-string v1, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBlackAction(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->ACTION_BLACK_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public static isActionInBlackList(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->ACTION_BLACK_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWhitePermission(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->WHITE_PERMISSION:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static modifyAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->MODIFY_ACTION_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    if-nez v0, :cond_0

    .line 58
    const-string v0, "_VA_protected_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    return-object v0
.end method

.method public static restoreAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 64
    if-nez p0, :cond_0

    move-object v0, v2

    .line 73
    :goto_0
    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->MODIFY_ACTION_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "_VA_protected_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    const-string v0, "_VA_protected_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method
