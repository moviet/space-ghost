.class final Lcom/samsung/android/sdk/pass/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

.field private final synthetic b:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    iput-object p2, p0, Lcom/samsung/android/sdk/pass/d;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onReady()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onStarted()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
