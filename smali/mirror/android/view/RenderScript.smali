.class public Lmirror/android/view/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static setupDiskCache:Lmirror/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefStaticMethod",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lmirror/MethodParams;
        value = {
            Ljava/io/File;
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-class v0, Lmirror/android/view/RenderScript;

    const-class v1, Landroid/renderscript/RenderScript;

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/view/RenderScript;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
