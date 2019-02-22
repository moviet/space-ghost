.class public final Lcom/a/a/a/a/a$b;
.super Ljava/lang/Object;
.source "DefaultStorIOContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object",
            "<*>;>;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/a/a/a/a/a$b;->a:Landroid/content/ContentResolver;

    .line 144
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/a/a/a;
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/a/a/a/a/a$b;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StorIOContentResolverNotificationsThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/a/a/a/a/a$b;->c:Landroid/os/Handler;

    .line 190
    :cond_0
    new-instance v0, Lcom/a/a/a/a/a;

    iget-object v1, p0, Lcom/a/a/a/a/a$b;->a:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/a/a/a/a/a$b;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/a/a/a/a/a$b;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/a/a/a;-><init>(Landroid/content/ContentResolver;Landroid/os/Handler;Ljava/util/Map;)V

    return-object v0
.end method
