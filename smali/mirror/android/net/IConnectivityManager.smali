.class public Lmirror/android/net/IConnectivityManager;
.super Ljava/lang/Object;
.source "IConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmirror/android/net/IConnectivityManager$Stub;
    }
.end annotation


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-class v0, Lmirror/android/net/IConnectivityManager;

    const-string v1, "android.net.IConnectivityManager"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/net/IConnectivityManager;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
