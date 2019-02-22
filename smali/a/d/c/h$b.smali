.class final La/d/c/h$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements La/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:La/d/c/h;

.field final b:La/i/b;


# direct methods
.method public constructor <init>(La/d/c/h;La/i/b;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 159
    iput-object p1, p0, La/d/c/h$b;->a:La/d/c/h;

    .line 160
    iput-object p2, p0, La/d/c/h$b;->b:La/i/b;

    .line 161
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, La/d/c/h$b;->a:La/d/c/h;

    invoke-virtual {v0}, La/d/c/h;->b()Z

    move-result v0

    return v0
.end method

.method public d_()V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, La/d/c/h$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, La/d/c/h$b;->b:La/i/b;

    iget-object v1, p0, La/d/c/h$b;->a:La/d/c/h;

    invoke-virtual {v0, v1}, La/i/b;->b(La/k;)V

    .line 173
    :cond_0
    return-void
.end method
