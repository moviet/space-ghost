.class final Lcom/lody/virtual/client/hook/providers/ProviderHook$2;
.super Ljava/lang/Object;
.source "ProviderHook.java"

# interfaces
.implements Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/providers/ProviderHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(ZLandroid/os/IInterface;)Lcom/lody/virtual/client/hook/providers/ProviderHook;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/providers/DownloadProviderHook;

    invoke-direct {v0, p2}, Lcom/lody/virtual/client/hook/providers/DownloadProviderHook;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
