.class public Lmirror/android/app/ContextImplICS;
.super Ljava/lang/Object;
.source "ContextImplICS.java"


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static mExternalCacheDir:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static mExternalFilesDir:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-class v0, Lmirror/android/app/ContextImplICS;

    const-string v1, "android.app.ContextImpl"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/app/ContextImplICS;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
