.class final La/d/d/h$d;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements La/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/f;"
    }
.end annotation


# instance fields
.field final a:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(La/j;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, La/d/d/h$d;->a:La/j;

    .line 255
    iput-object p2, p0, La/d/d/h$d;->b:Ljava/lang/Object;

    .line 256
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 260
    iget-boolean v0, p0, La/d/d/h$d;->c:Z

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_2
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/d/h$d;->c:Z

    .line 270
    iget-object v0, p0, La/d/d/h$d;->a:La/j;

    .line 271
    invoke-virtual {v0}, La/j;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, La/d/d/h$d;->b:Ljava/lang/Object;

    .line 276
    :try_start_0
    invoke-virtual {v0, v1}, La/j;->a_(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    invoke-virtual {v0}, La/j;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    invoke-virtual {v0}, La/j;->a()V

    goto :goto_0

    .line 277
    :catch_0
    move-exception v2

    .line 278
    invoke-static {v2, v0, v1}, La/b/b;->a(Ljava/lang/Throwable;La/e;Ljava/lang/Object;)V

    goto :goto_0
.end method
