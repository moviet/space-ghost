.class Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$ProxyIIntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "RegisterReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyIIntentReceiver"
.end annotation


# instance fields
.field old:Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IInterface;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$ProxyIIntentReceiver;->old:Landroid/os/IInterface;

    .line 113
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$ProxyIIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 136
    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "_VA_|_intent_"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 118
    if-eqz v0, :cond_2

    .line 121
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Lcom/lody/virtual/client/env/SpecialComponentList;->restoreAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    .line 127
    sget-object v1, Lmirror/android/content/IIntentReceiverJB;->performReceive:Lmirror/RefMethod;

    iget-object v2, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$ProxyIIntentReceiver;->old:Landroid/os/IInterface;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const/4 v0, 0x3

    aput-object p4, v3, v0

    const/4 v0, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_1
    return-void

    .line 129
    :cond_1
    sget-object v1, Lmirror/android/content/IIntentReceiver;->performReceive:Lmirror/RefMethod;

    iget-object v2, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$ProxyIIntentReceiver;->old:Landroid/os/IInterface;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const/4 v0, 0x3

    aput-object p4, v3, v0

    const/4 v0, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method
