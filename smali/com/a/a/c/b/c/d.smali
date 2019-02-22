.class public Lcom/a/a/c/b/c/d;
.super Lcom/a/a/c/b/c/b;
.source "PreparedPutObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/b/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/c/b/c/b",
        "<",
        "Lcom/a/a/c/b/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/c/b/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/c/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/c/c;Ljava/lang/Object;Lcom/a/a/c/b/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "TT;",
            "Lcom/a/a/c/b/c/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/a/a/c/b/c/b;-><init>(Lcom/a/a/c/c;)V

    .line 38
    iput-object p2, p0, Lcom/a/a/c/b/c/d;->b:Ljava/lang/Object;

    .line 39
    iput-object p3, p0, Lcom/a/a/c/b/c/d;->c:Lcom/a/a/c/b/c/e;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/c/b/c/f;
    .locals 4

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/b/c/d;->a:Lcom/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v1

    .line 61
    iget-object v0, p0, Lcom/a/a/c/b/c/d;->c:Lcom/a/a/c/b/c/e;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/a/a/c/b/c/d;->c:Lcom/a/a/c/b/c/e;

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/a/a/c/b/c/d;->a:Lcom/a/a/c/c;

    iget-object v3, p0, Lcom/a/a/c/b/c/d;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/a/a/c/b/c/e;->a(Lcom/a/a/c/c;Ljava/lang/Object;)Lcom/a/a/c/b/c/f;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/a/a/c/b/c/f;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/a/a/c/b/c/f;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/a/a/c/b/c/f;->c()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/c/a;->a(Ljava/util/Set;)Lcom/a/a/c/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c/c$a;->a(Lcom/a/a/c/a;)V

    .line 81
    :cond_1
    return-object v0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/a/a/c/b/c/d;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/a/c/c$a;->a(Ljava/lang/Class;)Lcom/a/a/c/b;

    move-result-object v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object does not have type mapping: object = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/c/b/c/d;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", object.class = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/c/b/c/d;->b:Ljava/lang/Object;

    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "db was not affected by this operation, please add type mapping for this type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Lcom/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error has occurred during Put operation. object = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/c/b/c/d;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/a/a/c/b;->a()Lcom/a/a/c/b/c/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method
