.class Lorg/jdeferred/android/b$1;
.super Ljava/lang/Object;
.source "AndroidDeferredObject.java"

# interfaces
.implements Lorg/jdeferred/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jdeferred/android/b;-><init>(Lorg/jdeferred/h;Lorg/jdeferred/android/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jdeferred/f",
        "<TF;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/jdeferred/android/b;


# direct methods
.method constructor <init>(Lorg/jdeferred/android/b;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/jdeferred/android/b$1;->a:Lorg/jdeferred/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jdeferred/android/b$1;->a:Lorg/jdeferred/android/b;

    invoke-virtual {v0, p1}, Lorg/jdeferred/android/b;->b(Ljava/lang/Object;)Lorg/jdeferred/b;

    .line 67
    return-void
.end method
