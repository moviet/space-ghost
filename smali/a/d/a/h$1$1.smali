.class La/d/a/h$1$1;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements La/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/a/h$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/d/a/h$1;


# direct methods
.method constructor <init>(La/d/a/h$1;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, La/d/a/h$1$1;->a:La/d/a/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, La/d/a/h$1$1;->a:La/d/a/h$1;

    iget-boolean v0, v0, La/d/a/h$1;->a:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, La/d/a/h$1$1;->a:La/d/a/h$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, La/d/a/h$1;->a:Z

    .line 59
    iget-object v0, p0, La/d/a/h$1$1;->a:La/d/a/h$1;

    iget-object v0, v0, La/d/a/h$1;->c:La/j;

    invoke-virtual {v0}, La/j;->a()V

    .line 61
    :cond_0
    return-void
.end method
