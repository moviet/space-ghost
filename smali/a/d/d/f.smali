.class public La/d/d/f;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements La/k;


# static fields
.field public static final a:I

.field public static final b:La/d/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/d/d",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:La/d/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/d/d",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:La/d/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/d/d",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 243
    const/16 v0, 0x80

    .line 246
    invoke-static {}, La/d/d/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/16 v0, 0x10

    .line 251
    :cond_0
    const-string v1, "rx.ring-buffer.size"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_1

    .line 254
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 260
    :cond_1
    :goto_0
    sput v0, La/d/d/f;->a:I

    .line 265
    new-instance v0, La/d/d/f$1;

    invoke-direct {v0}, La/d/d/f$1;-><init>()V

    sput-object v0, La/d/d/f;->b:La/d/d/d;

    .line 275
    new-instance v0, La/d/d/f$2;

    invoke-direct {v0}, La/d/d/f$2;-><init>()V

    sput-object v0, La/d/d/f;->c:La/d/d/d;

    return-void

    .line 255
    :catch_0
    move-exception v2

    .line 256
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set \'rx.buffer.size\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, La/d/d/f;->d:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/d/d/f;->d:Ljava/util/Queue;

    .line 314
    iget-object v1, p0, La/d/d/f;->e:La/d/d/d;

    .line 315
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 317
    const/4 v2, 0x0

    iput-object v2, p0, La/d/d/f;->d:Ljava/util/Queue;

    .line 318
    invoke-virtual {v1, v0}, La/d/d/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_0
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 324
    invoke-virtual {p0}, La/d/d/f;->c()V

    .line 325
    return-void
.end method
