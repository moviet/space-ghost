.class La/d/a/j$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements La/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/a/j;->a(La/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/j;

.field final synthetic b:La/g$a;

.field final synthetic c:La/d/a/j;


# direct methods
.method constructor <init>(La/d/a/j;La/j;La/g$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, La/d/a/j$1;->c:La/d/a/j;

    iput-object p2, p0, La/d/a/j$1;->a:La/j;

    iput-object p3, p0, La/d/a/j$1;->b:La/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 50
    new-instance v1, La/d/a/j$1$1;

    iget-object v2, p0, La/d/a/j$1;->a:La/j;

    invoke-direct {v1, p0, v2, v0}, La/d/a/j$1$1;-><init>(La/d/a/j$1;La/j;Ljava/lang/Thread;)V

    .line 94
    iget-object v0, p0, La/d/a/j$1;->c:La/d/a/j;

    iget-object v0, v0, La/d/a/j;->b:La/d;

    invoke-virtual {v0, v1}, La/d;->a(La/j;)La/k;

    .line 95
    return-void
.end method
