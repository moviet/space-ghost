.class public Lcom/lody/virtual/client/fixer/ContextFixer;
.super Ljava/lang/Object;
.source "ContextFixer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/lody/virtual/client/fixer/ContextFixer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/fixer/ContextFixer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixContext(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 35
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/PatchManager;->getInstance()Lcom/lody/virtual/client/core/PatchManager;

    move-result-object v0

    const-class v1, Lcom/lody/virtual/client/hook/patchs/graphics/GraphicsStatsPatch;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/PatchManager;->checkEnv(Ljava/lang/Class;)V

    .line 39
    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    .line 40
    :goto_1
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    .line 41
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 42
    add-int/lit8 v0, v1, 0x1

    .line 43
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    move v1, v0

    move-object v0, p0

    goto :goto_1

    .line 47
    :cond_2
    sget-object v1, Lmirror/android/app/ContextImpl;->mPackageManager:Lmirror/RefObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 49
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 53
    invoke-static {}, Lcom/lody/virtual/client/core/PatchManager;->getInstance()Lcom/lody/virtual/client/core/PatchManager;

    move-result-object v2

    const-class v3, Lcom/lody/virtual/client/hook/patchs/dropbox/DropBoxManagerPatch;

    invoke-virtual {v2, v3}, Lcom/lody/virtual/client/core/PatchManager;->getHookObject(Ljava/lang/Class;)Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/client/hook/binders/DropBoxBinderDelegate;

    .line 54
    if-eqz v2, :cond_3

    .line 56
    :try_start_0
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v1

    const-string v3, "mService"

    invoke-virtual {v2}, Lcom/lody/virtual/client/hook/binders/DropBoxBinderDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/lody/virtual/helper/utils/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_0
    .catch Lcom/lody/virtual/helper/utils/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_3
    :goto_2
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    .line 62
    sget-object v2, Lmirror/android/app/ContextImpl;->mBasePackageName:Lmirror/RefObject;

    invoke-virtual {v2, v0, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_4

    .line 64
    sget-object v2, Lmirror/android/app/ContextImplKitkat;->mOpPackageName:Lmirror/RefObject;

    invoke-virtual {v2, v0, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 67
    sget-object v2, Lmirror/android/content/ContentResolverJBMR2;->mPackageName:Lmirror/RefObject;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    invoke-virtual {v1}, Lcom/lody/virtual/helper/utils/ReflectException;->printStackTrace()V

    goto :goto_2
.end method
