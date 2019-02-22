.class public Lcom/a/a/c/b/a/e;
.super Lcom/a/a/c/b/a/d;
.source "PreparedDeleteByQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/b/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/c/b/a/d",
        "<",
        "Lcom/a/a/c/b/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/a/a/c/c/a;

.field private final c:Lcom/a/a/c/b/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/a/b",
            "<",
            "Lcom/a/a/c/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/c/c;Lcom/a/a/c/c/a;Lcom/a/a/c/b/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "Lcom/a/a/c/c/a;",
            "Lcom/a/a/c/b/a/b",
            "<",
            "Lcom/a/a/c/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/a/a/c/b/a/d;-><init>(Lcom/a/a/c/c;)V

    .line 34
    iput-object p2, p0, Lcom/a/a/c/b/a/e;->b:Lcom/a/a/c/c/a;

    .line 35
    iput-object p3, p0, Lcom/a/a/c/b/a/e;->c:Lcom/a/a/c/b/a/b;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/c/b/a/c;
    .locals 4

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/b/a/e;->c:Lcom/a/a/c/b/a/b;

    iget-object v1, p0, Lcom/a/a/c/b/a/e;->a:Lcom/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/c/b/a/e;->b:Lcom/a/a/c/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/c/b/a/b;->a(Lcom/a/a/c/c;Ljava/lang/Object;)Lcom/a/a/c/b/a/c;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/a/a/c/b/a/c;->a()I

    move-result v1

    if-lez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/a/a/c/b/a/e;->a:Lcom/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c/b/a/c;->b()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/c/a;->a(Ljava/util/Set;)Lcom/a/a/c/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c/c$a;->a(Lcom/a/a/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lcom/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error has occurred during Delete operation. query = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/c/b/a/e;->b:Lcom/a/a/c/c/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
