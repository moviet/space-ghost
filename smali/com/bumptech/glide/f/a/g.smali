.class public Lcom/bumptech/glide/f/a/g;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/f/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/f/a/d",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/f/a/f$a;

.field private b:Lcom/bumptech/glide/f/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/a/c",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/f/a/f$a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/f/a/g;->a:Lcom/bumptech/glide/f/a/f$a;

    .line 27
    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/f/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/f/a/c",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 40
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/f/a/e;->b()Lcom/bumptech/glide/f/a/c;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/f/a/g;->b:Lcom/bumptech/glide/f/a/c;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/bumptech/glide/f/a/f;

    iget-object v1, p0, Lcom/bumptech/glide/f/a/g;->a:Lcom/bumptech/glide/f/a/f$a;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/f/a/f;-><init>(Lcom/bumptech/glide/f/a/f$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/f/a/g;->b:Lcom/bumptech/glide/f/a/c;

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/f/a/g;->b:Lcom/bumptech/glide/f/a/c;

    goto :goto_0
.end method
