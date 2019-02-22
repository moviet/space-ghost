.class Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInstaller$1;
.super Ljava/lang/Object;
.source "GetPackageInstaller.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInstaller;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInstaller;

.field final synthetic val$installer:Landroid/os/IInterface;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInstaller;Landroid/os/IInterface;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInstaller$1;->this$0:Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInstaller;

    iput-object p2, p0, Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInstaller$1;->val$installer:Landroid/os/IInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "getMySessions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/HookUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInstaller$1;->val$installer:Landroid/os/IInterface;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 37
    :cond_1
    const-string v1, "createSession"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/HookUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method
