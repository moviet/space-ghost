.class public Lcom/a/a/c/b;
.super Ljava/lang/Object;
.source "SQLiteTypeMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/b$b;,
        Lcom/a/a/c/b$c;,
        Lcom/a/a/c/b$d;,
        Lcom/a/a/c/b$a;
    }
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
.field private final a:Lcom/a/a/c/b/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/c/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/c/b/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/b/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/c/b/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/a/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/a/a/c/b/c/e;Lcom/a/a/c/b/b/b;Lcom/a/a/c/b/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/b/c/e",
            "<TT;>;",
            "Lcom/a/a/c/b/b/b",
            "<TT;>;",
            "Lcom/a/a/c/b/a/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/a/a/c/b;->a:Lcom/a/a/c/b/c/e;

    .line 31
    iput-object p2, p0, Lcom/a/a/c/b;->b:Lcom/a/a/c/b/b/b;

    .line 32
    iput-object p3, p0, Lcom/a/a/c/b;->c:Lcom/a/a/c/b/a/b;

    .line 33
    return-void
.end method

.method public static c()Lcom/a/a/c/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/c/b$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/a/a/c/b$a;

    invoke-direct {v0}, Lcom/a/a/c/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/a/c/b/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/c/b/c/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/a/a/c/b;->a:Lcom/a/a/c/b/c/e;

    return-object v0
.end method

.method public b()Lcom/a/a/c/b/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/c/b/b/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/a/a/c/b;->b:Lcom/a/a/c/b/b/b;

    return-object v0
.end method
