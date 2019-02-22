.class public final Lcom/lody/virtual/client/service/ProviderCall$Builder;
.super Ljava/lang/Object;
.source "ProviderCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/service/ProviderCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private arg:Ljava/lang/String;

.field private auth:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private context:Landroid/content/Context;

.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    .line 40
    iput-object p1, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->auth:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public addArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/lody/virtual/client/service/ProviderCall$Builder;
    .locals 3

    .prologue
    .line 55
    if-eqz p2, :cond_0

    .line 56
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    :cond_0
    :goto_0
    return-object p0

    .line 58
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 60
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 64
    :cond_4
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 66
    :cond_5
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_6

    .line 67
    iget-object v0, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 69
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in Bundle."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arg(Ljava/lang/String;)Lcom/lody/virtual/client/service/ProviderCall$Builder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->arg:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public call()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->auth:Ljava/lang/String;

    iget-object v1, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->methodName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->arg:Ljava/lang/String;

    iget-object v4, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lody/virtual/client/service/ProviderCall;->call(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public methodName(Ljava/lang/String;)Lcom/lody/virtual/client/service/ProviderCall$Builder;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lody/virtual/client/service/ProviderCall$Builder;->methodName:Ljava/lang/String;

    .line 46
    return-object p0
.end method
