.class La/d/c/k$a$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements La/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/c/k$a;->a(La/c/a;J)La/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/d/c/k$b;

.field final synthetic b:La/d/c/k$a;


# direct methods
.method constructor <init>(La/d/c/k$a;La/d/c/k$b;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, La/d/c/k$a$1;->b:La/d/c/k$a;

    iput-object p2, p0, La/d/c/k$a$1;->a:La/d/c/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, La/d/c/k$a$1;->b:La/d/c/k$a;

    iget-object v0, v0, La/d/c/k$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, La/d/c/k$a$1;->a:La/d/c/k$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method
