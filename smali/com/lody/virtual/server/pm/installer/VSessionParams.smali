.class public Lcom/lody/virtual/server/pm/installer/VSessionParams;
.super Ljava/lang/Object;
.source "VSessionParams.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final MODE_FULL_INSTALL:I = 0x1

.field public static final MODE_INHERIT_EXISTING:I = 0x2

.field public static final MODE_INVALID:I = -0x1


# instance fields
.field public abiOverride:Ljava/lang/String;

.field public appIcon:Landroid/graphics/Bitmap;

.field public appIconLastModified:J

.field public appLabel:Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public grantedRuntimePermissions:[Ljava/lang/String;

.field public installFlags:I

.field public installLocation:I

.field public mode:I

.field public originatingUri:Landroid/net/Uri;

.field public referrerUri:Landroid/net/Uri;

.field public sizeBytes:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->mode:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->installLocation:I

    .line 40
    iput-wide v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->sizeBytes:J

    .line 44
    iput-wide v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appIconLastModified:J

    .line 52
    iput p1, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->mode:I

    .line 53
    return-void
.end method

.method public static a(Landroid/content/pm/PackageInstaller$SessionParams;)Lcom/lody/virtual/server/pm/installer/VSessionParams;
    .locals 4

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 94
    new-instance v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;

    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->mode:Lmirror/RefInt;

    invoke-virtual {v0, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/lody/virtual/server/pm/installer/VSessionParams;-><init>(I)V

    .line 95
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->installFlags:Lmirror/RefInt;

    invoke-virtual {v0, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->installFlags:I

    .line 96
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->installLocation:Lmirror/RefInt;

    invoke-virtual {v0, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->installLocation:I

    .line 97
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->sizeBytes:Lmirror/RefLong;

    invoke-virtual {v0, p0}, Lmirror/RefLong;->get(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->sizeBytes:J

    .line 98
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appPackageName:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appPackageName:Ljava/lang/String;

    .line 99
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appIcon:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 100
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appLabel:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appLabel:Ljava/lang/String;

    .line 101
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appIconLastModified:Lmirror/RefLong;

    invoke-virtual {v0, p0}, Lmirror/RefLong;->get(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appIconLastModified:J

    .line 102
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->originatingUri:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->originatingUri:Landroid/net/Uri;

    .line 103
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->referrerUri:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->referrerUri:Landroid/net/Uri;

    .line 104
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->abiOverride:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->abiOverride:Ljava/lang/String;

    .line 105
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->volumeUuid:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->volumeUuid:Ljava/lang/String;

    .line 106
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->grantedRuntimePermissions:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    move-object v0, v1

    .line 120
    :goto_0
    return-object v0

    .line 109
    :cond_0
    new-instance v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;

    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->mode:Lmirror/RefInt;

    invoke-virtual {v0, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/lody/virtual/server/pm/installer/VSessionParams;-><init>(I)V

    .line 110
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->installFlags:Lmirror/RefInt;

    invoke-virtual {v0, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->installFlags:I

    .line 111
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->installLocation:Lmirror/RefInt;

    invoke-virtual {v0, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->installLocation:I

    .line 112
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->sizeBytes:Lmirror/RefLong;

    invoke-virtual {v0, p0}, Lmirror/RefLong;->get(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->sizeBytes:J

    .line 113
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appPackageName:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appPackageName:Ljava/lang/String;

    .line 114
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appIcon:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 115
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appLabel:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appLabel:Ljava/lang/String;

    .line 116
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appIconLastModified:Lmirror/RefLong;

    invoke-virtual {v0, p0}, Lmirror/RefLong;->get(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appIconLastModified:J

    .line 117
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->originatingUri:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->originatingUri:Landroid/net/Uri;

    .line 118
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->referrerUri:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->referrerUri:Landroid/net/Uri;

    .line 119
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->abiOverride:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/lody/virtual/server/pm/installer/VSessionParams;->abiOverride:Ljava/lang/String;

    move-object v0, v1

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/content/pm/PackageInstaller$SessionParams;
    .locals 4

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 63
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->mode:I

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 64
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->installFlags:Lmirror/RefInt;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->installFlags:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 65
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->installLocation:Lmirror/RefInt;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->installLocation:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 66
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->sizeBytes:Lmirror/RefLong;

    iget-wide v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->sizeBytes:J

    invoke-virtual {v1, v0, v2, v3}, Lmirror/RefLong;->set(Ljava/lang/Object;J)V

    .line 67
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appPackageName:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appIcon:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appLabel:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appIconLastModified:Lmirror/RefLong;

    iget-wide v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appIconLastModified:J

    invoke-virtual {v1, v0, v2, v3}, Lmirror/RefLong;->set(Ljava/lang/Object;J)V

    .line 71
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->originatingUri:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->referrerUri:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->abiOverride:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->volumeUuid:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->grantedRuntimePermissions:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->mode:I

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 79
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->installFlags:Lmirror/RefInt;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->installFlags:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 80
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->installLocation:Lmirror/RefInt;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->installLocation:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 81
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->sizeBytes:Lmirror/RefLong;

    iget-wide v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->sizeBytes:J

    invoke-virtual {v1, v0, v2, v3}, Lmirror/RefLong;->set(Ljava/lang/Object;J)V

    .line 82
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appPackageName:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appIcon:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appLabel:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appIconLastModified:Lmirror/RefLong;

    iget-wide v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->appIconLastModified:J

    invoke-virtual {v1, v0, v2, v3}, Lmirror/RefLong;->set(Ljava/lang/Object;J)V

    .line 86
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->originatingUri:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->referrerUri:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->abiOverride:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VSessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
