.class public Lorg/jdeferred/android/a;
.super Lorg/jdeferred/a/c;
.source "AndroidDeferredManager.java"


# static fields
.field private static b:[Ljava/lang/Void;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    sput-object v0, Lorg/jdeferred/android/a;->b:[Ljava/lang/Void;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/jdeferred/a/c;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lorg/jdeferred/c;)Lorg/jdeferred/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/c",
            "<TD;TP;>;)",
            "Lorg/jdeferred/h",
            "<TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lorg/jdeferred/android/b;

    invoke-super {p0, p1}, Lorg/jdeferred/a/c;->a(Lorg/jdeferred/c;)Lorg/jdeferred/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdeferred/android/b;-><init>(Lorg/jdeferred/h;)V

    invoke-virtual {v0}, Lorg/jdeferred/android/b;->a()Lorg/jdeferred/h;

    move-result-object v0

    return-object v0
.end method
