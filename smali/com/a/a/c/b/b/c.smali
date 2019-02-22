.class public abstract Lcom/a/a/c/b/b/c;
.super Ljava/lang/Object;
.source "PreparedGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/b/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/a/a/c/c;

.field protected final b:Lcom/a/a/c/c/c;

.field protected final c:Lcom/a/a/c/c/d;


# direct methods
.method constructor <init>(Lcom/a/a/c/c;Lcom/a/a/c/c/c;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/a/a/c/b/b/c;->a:Lcom/a/a/c/c;

    .line 29
    iput-object p2, p0, Lcom/a/a/c/b/b/c;->b:Lcom/a/a/c/c/c;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/b/b/c;->c:Lcom/a/a/c/c/d;

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/a/a/c/c;Lcom/a/a/c/c/d;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/a/a/c/b/b/c;->a:Lcom/a/a/c/c;

    .line 35
    iput-object p2, p0, Lcom/a/a/c/b/b/c;->c:Lcom/a/a/c/c/d;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/b/b/c;->b:Lcom/a/a/c/c/c;

    .line 37
    return-void
.end method
