.class public Lcom/a/a/c/b/c/c;
.super Lcom/a/a/c/b/c/b;
.source "PreparedPutContentValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/b/c/c$b;,
        Lcom/a/a/c/b/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/c/b/c/b",
        "<",
        "Lcom/a/a/c/b/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/content/ContentValues;

.field private final c:Lcom/a/a/c/b/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/c/e",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/c/c;Landroid/content/ContentValues;Lcom/a/a/c/b/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "Landroid/content/ContentValues;",
            "Lcom/a/a/c/b/c/e",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/a/a/c/b/c/b;-><init>(Lcom/a/a/c/c;)V

    .line 34
    iput-object p2, p0, Lcom/a/a/c/b/c/c;->b:Landroid/content/ContentValues;

    .line 35
    iput-object p3, p0, Lcom/a/a/c/b/c/c;->c:Lcom/a/a/c/b/c/e;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/c/b/c/f;
    .locals 4

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/b/c/c;->c:Lcom/a/a/c/b/c/e;

    iget-object v1, p0, Lcom/a/a/c/b/c/c;->a:Lcom/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/c/b/c/c;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/c/b/c/e;->a(Lcom/a/a/c/c;Ljava/lang/Object;)Lcom/a/a/c/b/c/f;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/a/a/c/b/c/f;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/a/a/c/b/c/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/a/a/c/b/c/c;->a:Lcom/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c/b/c/f;->c()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/c/a;->a(Ljava/util/Set;)Lcom/a/a/c/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c/c$a;->a(Lcom/a/a/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_1
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lcom/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error has occurred during Delete operation. contentValues = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/c/b/c/c;->b:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
