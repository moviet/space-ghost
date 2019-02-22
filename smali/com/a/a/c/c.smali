.class public abstract Lcom/a/a/c/c;
.super Ljava/lang/Object;
.source "StorIOSQLite.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/c/b/b/c$a;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/a/a/c/b/b/c$a;

    invoke-direct {v0, p0}, Lcom/a/a/c/b/b/c$a;-><init>(Lcom/a/a/c/c;)V

    return-object v0
.end method

.method public b()Lcom/a/a/c/b/c/b$a;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/a/a/c/b/c/b$a;

    invoke-direct {v0, p0}, Lcom/a/a/c/b/c/b$a;-><init>(Lcom/a/a/c/c;)V

    return-object v0
.end method

.method public c()Lcom/a/a/c/b/a/d$a;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/a/a/c/b/a/d$a;

    invoke-direct {v0, p0}, Lcom/a/a/c/b/a/d$a;-><init>(Lcom/a/a/c/c;)V

    return-object v0
.end method

.method public abstract d()Lcom/a/a/c/c$a;
.end method
