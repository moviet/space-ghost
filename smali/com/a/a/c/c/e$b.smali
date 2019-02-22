.class public final Lcom/a/a/c/c/e$b;
.super Ljava/lang/Object;
.source "UpdateQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

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


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/a/a/c/c/e$b;->a:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/a/a/c/c/e$b;
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/a/a/c/c/e$b;->b:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/a/a/c/c/e$b;
    .locals 1

    .prologue
    .line 220
    invoke-static {p1}, Lcom/a/a/b/d;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/c/e$b;->c:Ljava/util/List;

    .line 221
    return-object p0
.end method

.method public a()Lcom/a/a/c/c/e;
    .locals 5

    .prologue
    .line 231
    iget-object v0, p0, Lcom/a/a/c/c/e$b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/c/e$b;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/c/e$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can not use whereArgs without where clause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    new-instance v0, Lcom/a/a/c/c/e;

    iget-object v1, p0, Lcom/a/a/c/c/e$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/c/c/e$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/c/c/e$b;->c:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/c/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/a/a/c/c/e$1;)V

    return-object v0
.end method
