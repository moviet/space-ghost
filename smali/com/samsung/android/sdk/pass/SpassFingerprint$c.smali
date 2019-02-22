.class final Lcom/samsung/android/sdk/pass/SpassFingerprint$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pass/SpassFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

.field private b:Lcom/samsung/android/fingerprint/FingerprintEvent;

.field private synthetic c:Lcom/samsung/android/sdk/pass/SpassFingerprint;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/pass/e;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/sdk/pass/e;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;Lcom/samsung/android/fingerprint/FingerprintEvent;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    iput-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    :cond_0
    return-void
.end method

.method public final onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 4

    :try_start_0
    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/pass/d;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/pass/d;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;
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

    goto :goto_0
.end method
