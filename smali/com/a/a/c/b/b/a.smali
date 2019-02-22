.class public abstract Lcom/a/a/c/b/b/a;
.super Lcom/a/a/c/b/b/b;
.source "DefaultGetResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/c/b/b/b",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/a/a/c/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c/c;Lcom/a/a/c/c/c;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/a/c/c$a;->a(Lcom/a/a/c/c/c;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/a/c/c;Lcom/a/a/c/c/d;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/a/c/c$a;->a(Lcom/a/a/c/c/d;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
