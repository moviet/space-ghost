.class public Lmirror/android/content/IIntentReceiverJB;
.super Ljava/lang/Object;
.source "IIntentReceiverJB.java"


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static performReceive:Lmirror/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefMethod",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lmirror/MethodParams;
        value = {
            Landroid/content/Intent;,
            I,
            Ljava/lang/String;,
            Landroid/os/Bundle;,
            Z,
            Z,
            I
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-class v0, Lmirror/android/content/IIntentReceiverJB;

    const-string v1, "android.content.IIntentReceiver"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/content/IIntentReceiverJB;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
