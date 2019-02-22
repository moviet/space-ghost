.class final Lcom/samsung/android/sdk/pass/SpassFingerprint$b;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pass/SpassFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

.field private synthetic b:Lcom/samsung/android/sdk/pass/SpassFingerprint;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    return-void
.end method

.method public final onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_1

    const-string v0, "SpassFingerprintSDK"

    const-string v1, "onFingerprintEvent: null event will be ignored!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/pass/c;

    invoke-direct {v2, p0, p1, v1}, Lcom/samsung/android/sdk/pass/c;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;Lcom/samsung/android/fingerprint/FingerprintEvent;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x10

    :cond_2
    iget v2, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    if-ne v2, v0, :cond_0

    const-string v2, "SpassFingerprintSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCompletedEventId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    :cond_4
    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onCompleted()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpassFingerprintSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFingerprintEvent: Error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
