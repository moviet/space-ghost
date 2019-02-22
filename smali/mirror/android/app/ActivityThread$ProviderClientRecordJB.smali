.class public Lmirror/android/app/ActivityThread$ProviderClientRecordJB;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmirror/android/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderClientRecordJB"
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

.field public static ctor:Lmirror/RefConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefConstructor",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lmirror/MethodReflectParams;
        value = {
            "android.app.ActivityThread",
            "[Ljava.lang.String;",
            "android.content.IContentProvider",
            "android.content.ContentProvider",
            "android.app.IActivityManager$ContentProviderHolder"
        }
    .end annotation
.end field

.field public static mHolder:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static mProvider:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject",
            "<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-class v0, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;

    const-string v1, "android.app.ActivityThread$ProviderClientRecord"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
