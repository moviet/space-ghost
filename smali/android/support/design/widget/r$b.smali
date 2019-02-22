.class Landroid/support/design/widget/r$b;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/design/widget/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method static synthetic a(Landroid/support/design/widget/r$b;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/design/widget/r$b;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Landroid/support/design/widget/r$b;)I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Landroid/support/design/widget/r$b;->b:I

    return v0
.end method


# virtual methods
.method a(Landroid/support/design/widget/r$a;)Z
    .locals 1

    .prologue
    .line 178
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/r$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
