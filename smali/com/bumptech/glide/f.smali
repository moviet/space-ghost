.class public Lcom/bumptech/glide/f;
.super Lcom/bumptech/glide/e;
.source "GifTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e",
        "<TModelType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/j$c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/load/c/l;Lcom/bumptech/glide/j$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/c/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/j$c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p1, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/g;

    const-class v1, Lcom/bumptech/glide/load/resource/c/b;

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/c/l;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/e/e;

    move-result-object v0

    const-class v1, Lcom/bumptech/glide/load/resource/c/b;

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/e;-><init>(Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/c;)V

    .line 42
    iput-object p2, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/load/c/l;

    .line 43
    iput-object p3, p0, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/j$c;

    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->c()Lcom/bumptech/glide/e;

    .line 47
    return-void
.end method

.method private static a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/c/l;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/e/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/load/c/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/e/c",
            "<",
            "Lcom/bumptech/glide/load/resource/c/b;",
            "TR;>;)",
            "Lcom/bumptech/glide/e/e",
            "<TA;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/c/b;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 31
    :cond_0
    if-nez p3, :cond_1

    .line 32
    const-class v0, Lcom/bumptech/glide/load/resource/c/b;

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/e/c;

    move-result-object p3

    .line 34
    :cond_1
    const-class v0, Ljava/io/InputStream;

    const-class v1, Lcom/bumptech/glide/load/resource/c/b;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/e/b;

    move-result-object v1

    .line 36
    new-instance v0, Lcom/bumptech/glide/e/e;

    invoke-direct {v0, p1, p3, v1}, Lcom/bumptech/glide/e/e;-><init>(Lcom/bumptech/glide/load/c/l;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/e/b;)V

    goto :goto_0
.end method
