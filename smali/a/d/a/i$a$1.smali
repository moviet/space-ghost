.class La/d/a/i$a$1;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements La/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/a/i$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/d/a/i$a;


# direct methods
.method constructor <init>(La/d/a/i$a;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, La/d/a/i$a$1;->a:La/d/a/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, La/d/a/i$a$1;->a:La/d/a/i$a;

    iget-object v0, v0, La/d/a/i$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, La/d/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 145
    iget-object v0, p0, La/d/a/i$a$1;->a:La/d/a/i$a;

    invoke-virtual {v0}, La/d/a/i$a;->e()V

    .line 147
    :cond_0
    return-void
.end method
