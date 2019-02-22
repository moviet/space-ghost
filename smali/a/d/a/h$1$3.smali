.class La/d/a/h$1$3;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements La/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/a/h$1;->a_(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:La/d/a/h$1;


# direct methods
.method constructor <init>(La/d/a/h$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, La/d/a/h$1$3;->b:La/d/a/h$1;

    iput-object p2, p0, La/d/a/h$1$3;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, La/d/a/h$1$3;->b:La/d/a/h$1;

    iget-boolean v0, v0, La/d/a/h$1;->a:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, La/d/a/h$1$3;->b:La/d/a/h$1;

    iget-object v0, v0, La/d/a/h$1;->c:La/j;

    iget-object v1, p0, La/d/a/h$1$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, La/j;->a_(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method
