.class La/d/a/h$1$2;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements La/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/a/h$1;->a(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:La/d/a/h$1;


# direct methods
.method constructor <init>(La/d/a/h$1;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, La/d/a/h$1$2;->b:La/d/a/h$1;

    iput-object p2, p0, La/d/a/h$1$2;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, La/d/a/h$1$2;->b:La/d/a/h$1;

    iget-boolean v0, v0, La/d/a/h$1;->a:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, La/d/a/h$1$2;->b:La/d/a/h$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, La/d/a/h$1;->a:Z

    .line 73
    iget-object v0, p0, La/d/a/h$1$2;->b:La/d/a/h$1;

    iget-object v0, v0, La/d/a/h$1;->c:La/j;

    iget-object v1, p0, La/d/a/h$1$2;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, La/j;->a(Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, La/d/a/h$1$2;->b:La/d/a/h$1;

    iget-object v0, v0, La/d/a/h$1;->b:La/g$a;

    invoke-virtual {v0}, La/g$a;->d_()V

    .line 76
    :cond_0
    return-void
.end method
