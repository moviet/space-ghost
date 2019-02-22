.class public Lcom/a/a/c/b/c/d$a;
.super Ljava/lang/Object;
.source "PreparedPutObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b/c/d;
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

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Lcom/a/a/c/b/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/c/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/c/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/a/a/c/b/c/d$a;->a:Lcom/a/a/c/c;

    .line 171
    iput-object p2, p0, Lcom/a/a/c/b/c/d$a;->b:Ljava/lang/Object;

    .line 172
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/c/b/c/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/c/b/c/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lcom/a/a/c/b/c/d;

    iget-object v1, p0, Lcom/a/a/c/b/c/d$a;->a:Lcom/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/c/b/c/d$a;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/a/a/c/b/c/d$a;->c:Lcom/a/a/c/b/c/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/c/b/c/d;-><init>(Lcom/a/a/c/c;Ljava/lang/Object;Lcom/a/a/c/b/c/e;)V

    return-object v0
.end method
