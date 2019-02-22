.class public Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;
.super Ljava/lang/Object;
.source "DualAppModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Z

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel$1;

    invoke-direct {v0}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel$1;-><init>()V

    sput-object v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a:Landroid/content/Context;

    .line 120
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    .line 121
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c:Ljava/lang/String;

    .line 122
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(Landroid/content/pm/ApplicationInfo;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lody/virtual/helper/proto/AppSetting;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a:Landroid/content/Context;

    .line 128
    iget-object v0, p2, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    .line 129
    iget-object v0, p2, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/lody/virtual/helper/proto/AppSetting;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(Landroid/content/pm/ApplicationInfo;)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->f:Z

    .line 169
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->k:I

    .line 58
    return-void
.end method

.method public a(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 140
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d:Ljava/lang/String;

    .line 144
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->e:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->e:Landroid/graphics/drawable/Drawable;

    .line 46
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->g:Ljava/lang/Long;

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->g:Ljava/lang/Long;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->j:I

    .line 82
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->h:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->k:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->i:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->j:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->i:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DualAppModel{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fastOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->g:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", describe=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 162
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
