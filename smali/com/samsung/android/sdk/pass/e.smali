.class final Lcom/samsung/android/sdk/pass/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

.field private final synthetic b:Lcom/samsung/android/fingerprint/FingerprintEvent;

.field private final synthetic c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;Lcom/samsung/android/fingerprint/FingerprintEvent;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    iput-object p2, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iput-object p3, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getFingerIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onFinished(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onCompleted()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    const-string v1, "IdentifyListener.onFinished"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
