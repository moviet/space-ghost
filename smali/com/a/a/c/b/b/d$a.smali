.class public Lcom/a/a/c/b/b/d$a;
.super Ljava/lang/Object;
.source "PreparedGetListOfObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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


# instance fields
.field private final a:Lcom/a/a/c/c;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/c/c;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/a/a/c/b/b/d$a;->a:Lcom/a/a/c/c;

    .line 239
    iput-object p2, p0, Lcom/a/a/c/b/b/d$a;->b:Ljava/lang/Class;

    .line 240
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c/c/c;)Lcom/a/a/c/b/b/d$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c/c;",
            ")",
            "Lcom/a/a/c/b/b/d$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 252
    const-string v0, "Please specify query"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/a/a/c/b/b/d$b;

    iget-object v1, p0, Lcom/a/a/c/b/b/d$a;->a:Lcom/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/c/b/b/d$a;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1}, Lcom/a/a/c/b/b/d$b;-><init>(Lcom/a/a/c/c;Ljava/lang/Class;Lcom/a/a/c/c/c;)V

    return-object v0
.end method
