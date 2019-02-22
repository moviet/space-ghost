.class public Lcom/bumptech/glide/e;
.super Lcom/bumptech/glide/c;
.source "GifRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/c",
        "<TModelType;",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/c/b;",
        "Lcom/bumptech/glide/load/resource/c/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/f",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/c/b;",
            "Lcom/bumptech/glide/load/resource/c/b;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/bumptech/glide/load/resource/c/b;",
            ">;",
            "Lcom/bumptech/glide/c",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/c;-><init>(Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/c;)V

    .line 42
    return-void
.end method

.method private c([Lcom/bumptech/glide/load/g;)[Lcom/bumptech/glide/load/resource/c/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)[",
            "Lcom/bumptech/glide/load/resource/c/e;"
        }
    .end annotation

    .prologue
    .line 197
    array-length v0, p1

    new-array v1, v0, [Lcom/bumptech/glide/load/resource/c/e;

    .line 198
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 199
    new-instance v2, Lcom/bumptech/glide/load/resource/c/e;

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/load/b/a/c;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/c/e;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/a/c;)V

    aput-object v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/g;->c()Lcom/bumptech/glide/load/resource/bitmap/e;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/e;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/c;->b(II)Lcom/bumptech/glide/c;

    .line 386
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/b;",
            ")",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/c;

    .line 377
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b",
            "<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;

    .line 395
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/c;

    .line 410
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/c/b;",
            ">;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/c;

    .line 106
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    .line 416
    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b(Z)Lcom/bumptech/glide/c;

    .line 368
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Lcom/bumptech/glide/load/resource/c/b;",
            ">;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/bumptech/glide/c;->b([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/c;

    .line 216
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/d;",
            ")",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e;->c([Lcom/bumptech/glide/load/g;)[Lcom/bumptech/glide/load/resource/c/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/e;->a([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/e;->a(II)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e;->a(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e;->a(Z)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e;->a([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/g;->d()Lcom/bumptech/glide/load/resource/bitmap/i;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/e;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lcom/bumptech/glide/f/a/a;

    invoke-direct {v0}, Lcom/bumptech/glide/f/a/a;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/f/a/d;)Lcom/bumptech/glide/c;

    .line 234
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/e;->d()Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 421
    invoke-super {p0}, Lcom/bumptech/glide/c;->g()Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e;

    return-object v0
.end method

.method e()V
    .locals 0

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/bumptech/glide/e;->b()Lcom/bumptech/glide/e;

    .line 427
    return-void
.end method

.method f()V
    .locals 0

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/e;

    .line 432
    return-void
.end method

.method public synthetic g()Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/e;->d()Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method
