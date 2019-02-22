.class public Lcom/samsung/android/sdk/pass/SpassFingerprint;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pass/SpassFingerprint$a;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$b;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$c;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;
    }
.end annotation


# static fields
.field public static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field public static final ACTION_FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field public static final ACTION_FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field public static final STATUS_AUTHENTIFICATION_FAILED:I = 0x10

.field public static final STATUS_AUTHENTIFICATION_PASSWORD_SUCCESS:I = 0x64

.field public static final STATUS_AUTHENTIFICATION_SUCCESS:I = 0x0

.field public static final STATUS_BUTTON_PRESSED:I = 0x9

.field public static final STATUS_OPERATION_DENIED:I = 0x33

.field public static final STATUS_QUALITY_FAILED:I = 0xc

.field public static final STATUS_SENSOR_FAILED:I = 0x7

.field public static final STATUS_TIMEOUT_FAILED:I = 0x4

.field public static final STATUS_USER_CANCELLED:I = 0x8

.field public static final STATUS_USER_CANCELLED_BY_TOUCH_OUTSIDE:I = 0xd

.field private static q:Ljava/lang/String;


# instance fields
.field private a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:[I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z

.field private p:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/os/IBinder;

.field private u:Landroid/app/Dialog;

.field private v:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private w:Landroid/os/Bundle;

.field private x:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sdk_version"

    sput-object v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:I

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:I

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:I

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->o:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->r:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->s:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->s:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->r:Z

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->s:Z

    if-eqz v0, :cond_5

    :try_start_1
    const-string v0, "com.samsung.android.fingerprint.FingerprintManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getVersion"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:I

    ushr-int/lit8 v0, v0, 0x18

    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory;->create(Landroid/content/Context;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Landroid/os/Handler;

    :cond_5
    const-class v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;

    const-string v1, "com.samsung.android.fingerprint.FingerprintManager"

    const-string v2, "EVENT_IDENTIFY_"

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pass/support/SdkSupporter;->copyStaticFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getSensorType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->o:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v2, "SpassFingerprintSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVersion failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x64

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x33

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_7
        0xc -> :sswitch_2
        0xd -> :sswitch_6
        0x33 -> :sswitch_8
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v3, "drawable"

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    const-string v1, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.providers.context"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->s:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Fingerprint Service is not supported in the platform."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Fingerprint Service is not running on the device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    return-void
.end method

.method private static g()Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "com.samsung.android.feature.FloatingFeature"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getEnableStatus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/fingerprint/IFingerprintClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-object v0
.end method

.method static synthetic i(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-void
.end method

.method static synthetic j(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic k(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->s:Z

    return v0
.end method

.method final b()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:I

    const v2, 0x1010100

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final c()Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    :try_start_0
    const-string v0, "com.samsung.android.fingerprint.FingerprintManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isSupportFingerprintIds"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isSupportFingerprintIds()Z

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v2, "SpassFingerprintSDK"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    goto :goto_1
.end method

.method public cancelIdentify()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/app/Dialog;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Identify request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->cancel(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cancel() returned RESULT_FAILED due to FingerprintService Error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    const/4 v1, 0x4

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->notifyAppActivityState(ILandroid/os/Bundle;)V

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/app/Dialog;

    return-void
.end method

.method public changeStandbyString(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setStandbyString is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the standby text passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the standby text passed is longer than 100 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    return-void
.end method

.method final d()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    :try_start_0
    const-string v1, "com.samsung.android.fingerprint.FingerprintManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isSupportBackupPassword"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isSupportBackupPassword()Z

    move-result v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v3, "SpassFingerprintSDK"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_0
.end method

.method public getGuideForPoorQuality()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FingerprintGuide is Invalid. This API must be called inside IdentifyListener.onFinished() with STATUS_QUALITY_FAILED only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifiedFingerprintIndex()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FingerprintIndex is Invalid. This API must be called inside IdentifyListener.onFinished() only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:I

    return v0
.end method

.method public getRegisteredFingerprintName()Landroid/util/SparseArray;
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result v3

    if-gtz v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    move v1, v2

    :goto_0
    const/16 v4, 0xa

    if-gt v1, v4, :cond_0

    shl-int v4, v2, v1

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v4, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getIndexName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getRegisteredFingerprintUniqueID()Landroid/util/SparseArray;
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getRegisteredFingerprintUniqueID is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result v3

    if-gtz v3, :cond_2

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    move v1, v2

    :goto_0
    const/16 v4, 0xa

    if-gt v1, v4, :cond_1

    shl-int v4, v2, v1

    and-int/2addr v4, v3

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v4, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getFingerprintId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasRegisteredFinger()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFinger(Landroid/content/Context;Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activityContext passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isEnrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->notifyEnrollEnd()Z

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    new-instance v1, Lcom/samsung/android/sdk/pass/b;

    invoke-direct {v1, p2}, Lcom/samsung/android/sdk/pass/b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activityContext is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activityContext is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setCanceledOnTouchOutside is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    return-void
.end method

.method public setDialogBgTransparency(I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDialogBGTransparency is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the transparency passed is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:I

    return-void
.end method

.method public setDialogButton(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDialogButton is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the buttonText passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the title text passed is longer than 32 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    return-void
.end method

.method public setDialogIcon(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDialogIcon is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the iconName passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the iconName passed is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:Ljava/lang/String;

    return-void
.end method

.method public setDialogTitle(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDialogTitle is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the titletext passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the title text passed is longer than 256 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    ushr-int/lit8 v0, p2, 0x18

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha value is not supported in the titleColor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/lang/String;

    const/high16 v0, -0x1000000

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:I

    return-void
.end method

.method public setIntendedFingerprintIndex(Ljava/util/ArrayList;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    if-nez p1, :cond_1

    const-string v0, "SpassFingerprintSDK"

    const-string v1, "requestedIndex is null. Identify is carried out for all indexes."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setIntendedFingerprintIndex is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public startIdentify(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Identify request is denied because a previous request is still in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Lcom/samsung/android/fingerprint/IFingerprintClient;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a([I)Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a()Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->b()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "failed because registerClient returned null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Identify request is denied because a previous request is still in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v1, 0x33

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;

    const-string v1, "Identify request is denied because 5 identify attempts are failed."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->hasPendingCommand()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->cancel(Landroid/os/IBinder;)Z

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Identify operation is failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Lcom/samsung/android/fingerprint/IFingerprintClient;

    check-cast v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    return-void
.end method

.method public startIdentifyWithDialog(Landroid/content/Context;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activityContext passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-direct {v0, p0, p2, v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/fingerprint/IFingerprintClient;

    :try_start_1
    const-string v0, "%d.%d.%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "password"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/sdk/pass/SpassFingerprint;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Pass-v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "demandExtraEvent"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    if-eqz v0, :cond_3

    const-string v0, "request_template_index_list"

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "titletext"

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:I

    if-eq v0, v7, :cond_5

    const-string v0, "titlecolor"

    iget v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "iconname"

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:I

    if-eq v0, v7, :cond_7

    const-string v0, "transparency"

    iget v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    if-eqz v0, :cond_8

    const-string v0, "touchoutside"

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "button_name"

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "standby_string"

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-interface {v0, p1, v3, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Identify operation is failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/lang/String;

    iput v7, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:I

    iput v7, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:I

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activityContext is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_c
    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:[I

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/lang/String;

    iput v7, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:I

    iput v7, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:I

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    :goto_1
    return-void

    :cond_d
    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-direct {v0, p0, p2, v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1, p1, v0, v6, p3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/app/Dialog;

    if-nez v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Identify operation is failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/app/Dialog;

    new-instance v2, Lcom/samsung/android/sdk/pass/a;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/pass/a;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method
