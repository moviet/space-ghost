.class final Lcom/a/a/c/b/a/e$a$1;
.super Lcom/a/a/c/b/a/a;
.source "PreparedDeleteByQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b/a/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/c/b/a/a",
        "<",
        "Lcom/a/a/c/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/a/a/c/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c/c/a;)Lcom/a/a/c/c/a;
    .locals 0

    .prologue
    .line 137
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/a/a/c/c/a;
    .locals 1

    .prologue
    .line 133
    check-cast p1, Lcom/a/a/c/c/a;

    invoke-virtual {p0, p1}, Lcom/a/a/c/b/a/e$a$1;->a(Lcom/a/a/c/c/a;)Lcom/a/a/c/c/a;

    move-result-object v0

    return-object v0
.end method
