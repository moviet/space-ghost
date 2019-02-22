.class public Lcom/a/a/c/b/b/d$b;
.super Ljava/lang/Object;
.source "PreparedGetListOfObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/a/a/c/c/c;

.field b:Lcom/a/a/c/c/d;

.field private final c:Lcom/a/a/c/c;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private e:Lcom/a/a/c/b/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/b/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/c/c;Ljava/lang/Class;Lcom/a/a/c/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/a/a/c/c/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/a/a/c/b/b/d$b;->c:Lcom/a/a/c/c;

    .line 295
    iput-object p2, p0, Lcom/a/a/c/b/b/d$b;->d:Ljava/lang/Class;

    .line 296
    iput-object p3, p0, Lcom/a/a/c/b/b/d$b;->a:Lcom/a/a/c/c/c;

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/b/b/d$b;->b:Lcom/a/a/c/c/d;

    .line 298
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/c/b/b/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/c/b/b/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/a/a/c/b/b/d$b;->a:Lcom/a/a/c/c/c;

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Lcom/a/a/c/b/b/d;

    iget-object v1, p0, Lcom/a/a/c/b/b/d$b;->c:Lcom/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/c/b/b/d$b;->d:Ljava/lang/Class;

    iget-object v3, p0, Lcom/a/a/c/b/b/d$b;->a:Lcom/a/a/c/c/c;

    iget-object v4, p0, Lcom/a/a/c/b/b/d$b;->e:Lcom/a/a/c/b/b/b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/c/b/b/d;-><init>(Lcom/a/a/c/c;Ljava/lang/Class;Lcom/a/a/c/c/c;Lcom/a/a/c/b/b/b;)V

    .line 339
    :goto_0
    return-object v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/b/b/d$b;->b:Lcom/a/a/c/c/d;

    if-eqz v0, :cond_1

    .line 339
    new-instance v0, Lcom/a/a/c/b/b/d;

    iget-object v1, p0, Lcom/a/a/c/b/b/d$b;->c:Lcom/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/c/b/b/d$b;->d:Ljava/lang/Class;

    iget-object v3, p0, Lcom/a/a/c/b/b/d$b;->b:Lcom/a/a/c/c/d;

    iget-object v4, p0, Lcom/a/a/c/b/b/d$b;->e:Lcom/a/a/c/b/b/b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/c/b/b/d;-><init>(Lcom/a/a/c/c;Ljava/lang/Class;Lcom/a/a/c/c/d;Lcom/a/a/c/b/b/b;)V

    goto :goto_0

    .line 346
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please specify Query or RawQuery"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
