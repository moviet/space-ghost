.class final La/d/c/a$c;
.super La/d/c/g;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private c:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .prologue
    .line 241
    invoke-direct {p0, p1}, La/d/c/g;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/d/c/a$c;->c:J

    .line 243
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 250
    iput-wide p1, p0, La/d/c/a$c;->c:J

    .line 251
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, La/d/c/a$c;->c:J

    return-wide v0
.end method
