.class public final Lcom/a/a/c/c/c$b;
.super Ljava/lang/Object;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/a/a/c/c/c$b;->a:Ljava/lang/String;

    .line 308
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/a/a/c/c/c$b;
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/a/a/c/c/c$b;->d:Ljava/lang/String;

    .line 388
    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/a/a/c/c/c$b;
    .locals 1

    .prologue
    .line 405
    invoke-static {p1}, Lcom/a/a/b/d;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/c/c$b;->e:Ljava/util/List;

    .line 406
    return-object p0
.end method

.method public a()Lcom/a/a/c/c/c;
    .locals 11

    .prologue
    .line 576
    iget-object v0, p0, Lcom/a/a/c/c/c$b;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/c/c$b;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/c/c$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can not use whereArgs without where clause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_0
    new-instance v0, Lcom/a/a/c/c/c;

    iget-boolean v1, p0, Lcom/a/a/c/c/c$b;->b:Z

    iget-object v2, p0, Lcom/a/a/c/c/c$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/c/c/c$b;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/a/a/c/c/c$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/a/a/c/c/c$b;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/a/a/c/c/c$b;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/a/a/c/c/c$b;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/a/a/c/c/c$b;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/a/a/c/c/c$b;->i:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/a/a/c/c/c;-><init>(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/a/a/c/c/c$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/a/a/c/c/c$b;
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/a/a/c/c/c$b;->h:Ljava/lang/String;

    .line 489
    return-object p0
.end method
