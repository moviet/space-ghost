.class abstract La/d/d/b/k;
.super La/d/d/b/m;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "La/d/d/b/m",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final d:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, La/d/d/b/k;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, La/d/d/b/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, La/d/d/b/k;->d:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, La/d/d/b/m;-><init>(I)V

    .line 66
    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, La/d/d/b/k;->consumerIndex:J

    return-wide v0
.end method

.method protected final b(JJ)Z
    .locals 9

    .prologue
    .line 73
    sget-object v0, La/d/d/b/y;->a:Lsun/misc/Unsafe;

    sget-wide v2, La/d/d/b/k;->d:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
