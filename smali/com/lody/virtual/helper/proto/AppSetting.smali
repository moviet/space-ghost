.class public final Lcom/lody/virtual/helper/proto/AppSetting;
.super Ljava/lang/Object;
.source "AppSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lody/virtual/helper/proto/AppSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apkPath:Ljava/lang/String;

.field public appId:I

.field public dependSystem:Z

.field public libPath:Ljava/lang/String;

.field public odexDir:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public transient parser:Landroid/content/pm/PackageParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/lody/virtual/helper/proto/AppSetting$1;

    invoke-direct {v0}, Lcom/lody/virtual/helper/proto/AppSetting$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/helper/proto/AppSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->libPath:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->odexDir:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->dependSystem:Z

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/lody/virtual/client/local/VPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOdexFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lody/virtual/helper/proto/AppSetting;->odexDir:Ljava/lang/String;

    const-string v2, "base.dex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->libPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->odexDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-boolean v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->dependSystem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
