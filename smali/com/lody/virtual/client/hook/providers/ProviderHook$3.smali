.class final Lcom/lody/virtual/client/hook/providers/ProviderHook$3;
.super Ljava/lang/Object;
.source "ProviderHook.java"

# interfaces
.implements Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/providers/ProviderHook;->fetchHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(ZLandroid/os/IInterface;)Lcom/lody/virtual/client/hook/providers/ProviderHook;
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;

    invoke-direct {v0, p2}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;-><init>(Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lody/virtual/client/hook/providers/InternalProviderHook;

    invoke-direct {v0, p2}, Lcom/lody/virtual/client/hook/providers/InternalProviderHook;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
