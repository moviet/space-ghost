.class public final Lcom/a/a/c/b$d;
.super Ljava/lang/Object;
.source "SQLiteTypeMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
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


# direct methods
.method constructor <init>(Lcom/a/a/c/b/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/b/c/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/a/a/c/b$d;->a:Lcom/a/a/c/b/c/e;

    .line 96
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c/b/b/b;)Lcom/a/a/c/b$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/b/b/b",
            "<TT;>;)",
            "Lcom/a/a/c/b$c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    const-string v0, "Please specify GetResolver"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/a/a/c/b$c;

    iget-object v1, p0, Lcom/a/a/c/b$d;->a:Lcom/a/a/c/b/c/e;

    invoke-direct {v0, v1, p1}, Lcom/a/a/c/b$c;-><init>(Lcom/a/a/c/b/c/e;Lcom/a/a/c/b/b/b;)V

    return-object v0
.end method
