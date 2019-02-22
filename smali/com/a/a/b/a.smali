.class public final Lcom/a/a/b/a;
.super Ljava/lang/Object;
.source "ChangesBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    new-instance v0, Lcom/a/a/b/e;

    invoke-direct {v0}, Lcom/a/a/b/e;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/e;

    .line 22
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/e;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/e;

    invoke-virtual {v0, p1}, Lcom/a/a/b/e;->a(Ljava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method
