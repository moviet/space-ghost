.class La/d/a/j$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements La/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/a/j$1$1;->a(La/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/f;

.field final synthetic b:La/d/a/j$1$1;


# direct methods
.method constructor <init>(La/d/a/j$1$1;La/f;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, La/d/a/j$1$1$1;->b:La/d/a/j$1$1;

    iput-object p2, p0, La/d/a/j$1$1$1;->a:La/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, La/d/a/j$1$1$1;->b:La/d/a/j$1$1;

    iget-object v0, v0, La/d/a/j$1$1;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, La/d/a/j$1$1$1;->a:La/f;

    invoke-interface {v0, p1, p2}, La/f;->a(J)V

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, La/d/a/j$1$1$1;->b:La/d/a/j$1$1;

    iget-object v0, v0, La/d/a/j$1$1;->b:La/d/a/j$1;

    iget-object v0, v0, La/d/a/j$1;->b:La/g$a;

    new-instance v1, La/d/a/j$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, La/d/a/j$1$1$1$1;-><init>(La/d/a/j$1$1$1;J)V

    invoke-virtual {v0, v1}, La/g$a;->a(La/c/a;)La/k;

    goto :goto_0
.end method
