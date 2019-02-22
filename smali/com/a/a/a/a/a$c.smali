.class public Lcom/a/a/a/a/a$c;
.super Lcom/a/a/a/a$a;
.source "DefaultStorIOContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/a/a;

.field private final b:Ljava/util/Map;
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

.field private final c:Ljava/util/Map;
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


# direct methods
.method protected constructor <init>(Lcom/a/a/a/a/a;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lcom/a/a/a/a/a$c;->a:Lcom/a/a/a/a/a;

    invoke-direct {p0}, Lcom/a/a/a/a$a;-><init>()V

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/a$c;->c:Ljava/util/Map;

    .line 204
    if-eqz p2, :cond_0

    .line 205
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/a/a/a/a/a$c;->b:Ljava/util/Map;

    .line 207
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
