.class La/d/d/h$2$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements La/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/d/h$2;->a(La/c/a;)La/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/c/a;

.field final synthetic b:La/g$a;

.field final synthetic c:La/d/d/h$2;


# direct methods
.method constructor <init>(La/d/d/h$2;La/c/a;La/g$a;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, La/d/d/h$2$1;->c:La/d/d/h$2;

    iput-object p2, p0, La/d/d/h$2$1;->a:La/c/a;

    iput-object p3, p0, La/d/d/h$2$1;->b:La/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, La/d/d/h$2$1;->a:La/c/a;

    invoke-interface {v0}, La/c/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, La/d/d/h$2$1;->b:La/g$a;

    invoke-virtual {v0}, La/g$a;->d_()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, La/d/d/h$2$1;->b:La/g$a;

    invoke-virtual {v1}, La/g$a;->d_()V

    throw v0
.end method
