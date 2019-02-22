.class final Lcom/samsung/android/sdk/pass/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;


# instance fields
.field private final synthetic a:Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollFinish()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;->onFinished()V

    return-void
.end method
