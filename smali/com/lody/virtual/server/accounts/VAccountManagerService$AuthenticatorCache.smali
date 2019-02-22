.class final Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;
.super Ljava/lang/Object;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/accounts/VAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AuthenticatorCache"
.end annotation


# instance fields
.field final authenticators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;)V
    .locals 1

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    return-void
.end method
