.class public final Lcom/a/a/c/b$c;
.super Ljava/lang/Object;
.source "SQLiteTypeMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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


# direct methods
.method constructor <init>(Lcom/a/a/c/b/c/e;Lcom/a/a/c/b/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/b/c/e",
            "<TT;>;",
            "Lcom/a/a/c/b/b/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/a/a/c/b$c;->a:Lcom/a/a/c/b/c/e;

    .line 126
    iput-object p2, p0, Lcom/a/a/c/b$c;->b:Lcom/a/a/c/b/b/b;

    .line 127
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c/b/a/b;)Lcom/a/a/c/b$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/b/a/b",
            "<TT;>;)",
            "Lcom/a/a/c/b$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "Please specify DeleteResolver"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/a/a/c/b$b;

    iget-object v1, p0, Lcom/a/a/c/b$c;->a:Lcom/a/a/c/b/c/e;

    iget-object v2, p0, Lcom/a/a/c/b$c;->b:Lcom/a/a/c/b/b/b;

    invoke-direct {v0, v1, v2, p1}, Lcom/a/a/c/b$b;-><init>(Lcom/a/a/c/b/c/e;Lcom/a/a/c/b/b/b;Lcom/a/a/c/b/a/b;)V

    return-object v0
.end method
