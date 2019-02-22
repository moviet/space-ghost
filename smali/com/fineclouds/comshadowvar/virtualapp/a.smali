.class public Lcom/fineclouds/spaceghostq1/virtualapp/a;
.super Ljava/lang/Object;
.source "MyPhoneInfoDelegate.java"

# interfaces
.implements Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId(Ljava/lang/Object;)Lcom/lody/virtual/client/hook/base/DelegateResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lody/virtual/client/hook/base/DelegateResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    const-string v0, "0"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 21
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 22
    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_0
    new-instance v1, Lcom/lody/virtual/client/hook/base/DelegateResult;

    invoke-direct {v1, v0}, Lcom/lody/virtual/client/hook/base/DelegateResult;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 27
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
