.class public Lcom/bumptech/glide/load/resource/bitmap/m;
.super Ljava/lang/Object;
.source "ImageVideoDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/e/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/b",
        "<",
        "Lcom/bumptech/glide/load/c/g;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/l;

.field private final b:Lcom/bumptech/glide/load/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/e",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/c/h;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/e/b;Lcom/bumptech/glide/e/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/b",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/e/b",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lcom/bumptech/glide/e/b;->d()Lcom/bumptech/glide/load/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->c:Lcom/bumptech/glide/load/f;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/c/h;

    invoke-interface {p1}, Lcom/bumptech/glide/e/b;->c()Lcom/bumptech/glide/load/b;

    move-result-object v1

    invoke-interface {p2}, Lcom/bumptech/glide/e/b;->c()Lcom/bumptech/glide/load/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/c/h;-><init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/b;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->d:Lcom/bumptech/glide/load/c/h;

    .line 31
    invoke-interface {p1}, Lcom/bumptech/glide/e/b;->a()Lcom/bumptech/glide/load/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->b:Lcom/bumptech/glide/load/e;

    .line 32
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-interface {p1}, Lcom/bumptech/glide/e/b;->b()Lcom/bumptech/glide/load/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/bumptech/glide/e/b;->b()Lcom/bumptech/glide/load/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>(Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->a:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->b:Lcom/bumptech/glide/load/e;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/bumptech/glide/load/c/g;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->a:Lcom/bumptech/glide/load/resource/bitmap/l;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b",
            "<",
            "Lcom/bumptech/glide/load/c/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->d:Lcom/bumptech/glide/load/c/h;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->c:Lcom/bumptech/glide/load/f;

    return-object v0
.end method
