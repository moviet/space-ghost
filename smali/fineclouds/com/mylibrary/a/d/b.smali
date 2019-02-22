.class public Lfineclouds/com/mylibrary/a/d/b;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    sput v1, Lfineclouds/com/mylibrary/a/d/b;->a:I

    .line 31
    const/4 v0, 0x1

    sput v0, Lfineclouds/com/mylibrary/a/d/b;->b:I

    .line 35
    sput-boolean v1, Lfineclouds/com/mylibrary/a/d/b;->c:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    const-string v0, ""

    .line 51
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 44
    sget v0, Lfineclouds/com/mylibrary/a/d/b;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lfineclouds/com/mylibrary/a/d/b;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    const-string v0, ""

    .line 57
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 87
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 88
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 90
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 96
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const-string v0, ""

    .line 67
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 103
    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 104
    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {p0, v1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v0, "-1"

    .line 130
    :goto_0
    return-object v0

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    const-string v0, "1"

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Lfineclouds/com/mylibrary/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string v0, "1"

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {}, Lfineclouds/com/mylibrary/a/d/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    const-string v0, "1"

    goto :goto_0

    .line 126
    :cond_3
    invoke-static {p0}, Lfineclouds/com/mylibrary/a/d/b;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    const-string v0, "1"

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "0"

    goto :goto_0
.end method

.method private static e()Z
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/silead_fp_dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 158
    const/4 v1, 0x1

    .line 159
    new-instance v2, Lcom/samsung/android/sdk/pass/Spass;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pass/Spass;-><init>()V

    .line 161
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/pass/Spass;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 166
    :goto_0
    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pass/Spass;->isFeatureEnabled(I)Z

    move-result v2

    sput-boolean v2, Lfineclouds/com/mylibrary/a/d/b;->c:Z

    .line 168
    sget-boolean v2, Lfineclouds/com/mylibrary/a/d/b;->c:Z

    if-nez v2, :cond_0

    .line 172
    :goto_1
    return v0

    .line 162
    :catch_0
    move-exception v1

    :goto_2
    move v1, v0

    .line 163
    goto :goto_0

    .line 162
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method private static f()Z
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/madev0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
