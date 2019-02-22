.class public Lcom/lody/virtual/helper/compat/PackageParserCompat;
.super Ljava/lang/Object;
.source "PackageParserCompat.java"


# static fields
.field private static final SDK:I

.field private static final gids:[I

.field private static final myUserId:I

.field private static final sUserState:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    .line 43
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getGids()[I

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->gids:[I

    .line 44
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    sput v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    .line 45
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lmirror/android/content/pm/PackageUserState;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 223
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 225
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->collectCertificates:Lmirror/RefMethod;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :goto_0
    return-void

    .line 227
    :cond_0
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 229
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->collectCertificates:Lmirror/RefMethod;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 231
    :cond_1
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 233
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->collectCertificates:Lmirror/RefMethod;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 235
    :cond_2
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 237
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->collectCertificates:Lmirror/RefMethod;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_3
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 241
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->collectCertificates:Lmirror/RefMethod;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->collectCertificates:Lmirror/RefMethod;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 141
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->generateActivityInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 160
    :goto_0
    return-object v0

    .line 143
    :cond_0
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 145
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generateActivityInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 147
    :cond_1
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 149
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->generateActivityInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 151
    :cond_2
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 153
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->generateActivityInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 155
    :cond_3
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 157
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->generateActivityInfo:Lmirror/RefStaticMethod;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    goto/16 :goto_0

    .line 160
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->generateActivityInfo:Lmirror/RefStaticMethod;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    goto/16 :goto_0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 114
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->generateApplicationInfo:Lmirror/RefStaticMethod;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 133
    :goto_0
    return-object v0

    .line 116
    :cond_0
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 118
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generateApplicationInfo:Lmirror/RefStaticMethod;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 120
    :cond_1
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 122
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->generateApplicationInfo:Lmirror/RefStaticMethod;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 124
    :cond_2
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 126
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->generateApplicationInfo:Lmirror/RefStaticMethod;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 128
    :cond_3
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 130
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->generateApplicationInfo:Lmirror/RefStaticMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 133
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->generateApplicationInfo:Lmirror/RefStaticMethod;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto/16 :goto_0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;IJJ)Landroid/content/pm/PackageInfo;
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 194
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->generatePackageInfo:Lmirror/RefStaticMethod;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->gids:[I

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 217
    :goto_0
    return-object v0

    .line 197
    :cond_0
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 198
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generatePackageInfo:Lmirror/RefStaticMethod;

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generatePackageInfo:Lmirror/RefStaticMethod;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->gids:[I

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 202
    :cond_1
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->generatePackageInfo:Lmirror/RefStaticMethod;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->gids:[I

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 206
    :cond_2
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 208
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->generatePackageInfo:Lmirror/RefStaticMethod;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->gids:[I

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    goto/16 :goto_0

    .line 211
    :cond_3
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 213
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->generatePackageInfo:Lmirror/RefStaticMethod;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->gids:[I

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    goto/16 :goto_0

    .line 217
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->generatePackageInfo:Lmirror/RefStaticMethod;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->gids:[I

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    .line 218
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    .line 217
    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    goto/16 :goto_0
.end method

.method public static generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 168
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->generateProviderInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    .line 187
    :goto_0
    return-object v0

    .line 170
    :cond_0
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 172
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generateProviderInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    goto :goto_0

    .line 174
    :cond_1
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 176
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->generateProviderInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    goto :goto_0

    .line 178
    :cond_2
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 180
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->generateProviderInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    goto :goto_0

    .line 182
    :cond_3
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 184
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->generateProviderInfo:Lmirror/RefStaticMethod;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    goto/16 :goto_0

    .line 187
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->generateProviderInfo:Lmirror/RefStaticMethod;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    goto/16 :goto_0
.end method

.method public static generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 88
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->generateServiceInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 107
    :goto_0
    return-object v0

    .line 90
    :cond_0
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 92
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generateServiceInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 94
    :cond_1
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 96
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->generateServiceInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 98
    :cond_2
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 100
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->generateServiceInfo:Lmirror/RefStaticMethod;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v2, v1, v5

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 102
    :cond_3
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 104
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->generateServiceInfo:Lmirror/RefStaticMethod;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    sget v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    goto/16 :goto_0

    .line 107
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->generateServiceInfo:Lmirror/RefStaticMethod;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    goto/16 :goto_0
.end method

.method public static parsePackage(Ljava/io/File;I)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/PackageParser;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 50
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    .line 51
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lmirror/android/content/pm/PackageParserMarshmallow;->parsePackage:Lmirror/RefMethod;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 78
    :goto_0
    return-object v0

    .line 53
    :cond_0
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 55
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    .line 56
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lmirror/android/content/pm/PackageParserLollipop22;->parsePackage:Lmirror/RefMethod;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 58
    :cond_1
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 60
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    .line 61
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lmirror/android/content/pm/PackageParserLollipop;->parsePackage:Lmirror/RefMethod;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 63
    :cond_2
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 65
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->ctor:Lmirror/RefConstructor;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    .line 66
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lmirror/android/content/pm/PackageParserJellyBean17;->parsePackage:Lmirror/RefMethod;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const/4 v4, 0x0

    aput-object v4, v3, v5

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    aput-object v4, v3, v6

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 66
    invoke-virtual {v2, v0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 69
    :cond_3
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->SDK:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 71
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->ctor:Lmirror/RefConstructor;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    .line 72
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lmirror/android/content/pm/PackageParserJellyBean;->parsePackage:Lmirror/RefMethod;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const/4 v4, 0x0

    aput-object v4, v3, v5

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    aput-object v4, v3, v6

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 72
    invoke-virtual {v2, v0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 77
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->ctor:Lmirror/RefConstructor;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    .line 78
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lmirror/android/content/pm/PackageParser;->parsePackage:Lmirror/RefMethod;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const/4 v4, 0x0

    aput-object v4, v3, v5

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    aput-object v4, v3, v6

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 78
    invoke-virtual {v2, v0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0
.end method
