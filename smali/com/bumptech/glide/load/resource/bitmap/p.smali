.class public Lcom/bumptech/glide/load/resource/bitmap/p;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/e",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/f;

.field private b:Lcom/bumptech/glide/load/b/a/c;

.field private c:Lcom/bumptech/glide/load/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/a;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/f;->a:Lcom/bumptech/glide/load/resource/bitmap/f;

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/resource/bitmap/f;Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/a;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/f;Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/a;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->a:Lcom/bumptech/glide/load/resource/bitmap/f;

    .line 44
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->b:Lcom/bumptech/glide/load/b/a/c;

    .line 45
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->c:Lcom/bumptech/glide/load/a;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/b/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->a:Lcom/bumptech/glide/load/resource/bitmap/f;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->b:Lcom/bumptech/glide/load/b/a/c;

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->c:Lcom/bumptech/glide/load/a;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/f;->a(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/c;IILcom/bumptech/glide/load/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->b:Lcom/bumptech/glide/load/b/a/c;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/c;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/c;)Lcom/bumptech/glide/load/resource/bitmap/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/p;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->a:Lcom/bumptech/glide/load/resource/bitmap/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->c:Lcom/bumptech/glide/load/a;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->d:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->d:Ljava/lang/String;

    return-object v0
.end method