.class final La/d/c/h$c;
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
    name = "c"
.end annotation


# instance fields
.field final a:La/d/c/h;

.field final b:La/d/d/i;


# direct methods
.method public constructor <init>(La/d/c/h;La/d/d/i;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 184
    iput-object p1, p0, La/d/c/h$c;->a:La/d/c/h;

    .line 185
    iput-object p2, p0, La/d/c/h$c;->b:La/d/d/i;

    .line 186
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, La/d/c/h$c;->a:La/d/c/h;

    invoke-virtual {v0}, La/d/c/h;->b()Z

    move-result v0

    return v0
.end method

.method public d_()V
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, La/d/c/h$c;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, La/d/c/h$c;->b:La/d/d/i;

    iget-object v1, p0, La/d/c/h$c;->a:La/d/c/h;

    invoke-virtual {v0, v1}, La/d/d/i;->b(La/k;)V

    .line 198
    :cond_0
    return-void
.end method
