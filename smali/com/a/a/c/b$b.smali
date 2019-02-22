.class public final Lcom/a/a/c/b$b;
.super Ljava/lang/Object;
.source "SQLiteTypeMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
.method constructor <init>(Lcom/a/a/c/b/c/e;Lcom/a/a/c/b/b/b;Lcom/a/a/c/b/a/b;)V
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
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/a/a/c/b$b;->a:Lcom/a/a/c/b/c/e;

    .line 167
    iput-object p2, p0, Lcom/a/a/c/b$b;->b:Lcom/a/a/c/b/b/b;

    .line 168
    iput-object p3, p0, Lcom/a/a/c/b$b;->c:Lcom/a/a/c/b/a/b;

    .line 169
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/c/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/c/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Lcom/a/a/c/b;

    iget-object v1, p0, Lcom/a/a/c/b$b;->a:Lcom/a/a/c/b/c/e;

    iget-object v2, p0, Lcom/a/a/c/b$b;->b:Lcom/a/a/c/b/b/b;

    iget-object v3, p0, Lcom/a/a/c/b$b;->c:Lcom/a/a/c/b/a/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/c/b;-><init>(Lcom/a/a/c/b/c/e;Lcom/a/a/c/b/b/b;Lcom/a/a/c/b/a/b;)V

    return-object v0
.end method
