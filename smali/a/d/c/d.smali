.class final enum La/d/c/d;
.super Ljava/lang/Enum;
.source "GenericScheduledExecutorServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/d/c/d;",
        ">;"
    }
.end annotation


# static fields
.field static final a:La/d/d/g;

.field private static final synthetic b:[La/d/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [La/d/c/d;

    sput-object v0, La/d/c/d;->b:[La/d/c/d;

    .line 33
    new-instance v0, La/d/d/g;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, La/d/d/g;-><init>(Ljava/lang/String;)V

    sput-object v0, La/d/c/d;->a:La/d/d/g;

    return-void
.end method

.method static a()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 36
    sget-object v0, La/d/c/d;->a:La/d/d/g;

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, La/f/c;->c()La/c/d;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    invoke-static {}, La/d/c/d;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, La/c/d;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0
.end method

.method static c()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-static {}, La/d/c/d;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)La/d/c/d;
    .locals 1

    .prologue
    .line 29
    const-class v0, La/d/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/d/c/d;

    return-object v0
.end method

.method public static values()[La/d/c/d;
    .locals 1

    .prologue
    .line 29
    sget-object v0, La/d/c/d;->b:[La/d/c/d;

    invoke-virtual {v0}, [La/d/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/d/c/d;

    return-object v0
.end method
