.class public final Lcom/a/a/c/b$a;
.super Ljava/lang/Object;
.source "SQLiteTypeMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c/b/c/e;)Lcom/a/a/c/b$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/b/c/e",
            "<TT;>;)",
            "Lcom/a/a/c/b$d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    const-string v0, "Please specify PutResolver"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/a/a/c/b$d;

    invoke-direct {v0, p1}, Lcom/a/a/c/b$d;-><init>(Lcom/a/a/c/b/c/e;)V

    return-object v0
.end method
