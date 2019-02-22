.class final La/d/d/f$2;
.super La/d/d/d;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, La/d/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, La/d/d/f$2;->c()La/d/d/b/j;

    move-result-object v0

    return-object v0
.end method

.method protected c()La/d/d/b/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/d/d/b/j",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, La/d/d/b/j;

    sget v1, La/d/d/f;->a:I

    invoke-direct {v0, v1}, La/d/d/b/j;-><init>(I)V

    return-object v0
.end method
