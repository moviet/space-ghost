.class public Lcom/lody/virtual/client/hook/providers/DownloadProviderHook;
.super Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;
.source "DownloadProviderHook.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;-><init>(Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public insert(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;->insert(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
