.class public Lmirror/libcore/io/Libcore;
.super Ljava/lang/Object;
.source "Libcore.java"


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static os:Lmirror/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefStaticObject",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-class v0, Lmirror/libcore/io/Libcore;

    const-string v1, "libcore.io.Libcore"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/libcore/io/Libcore;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
