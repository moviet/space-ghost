.class public Lcom/a/a/c/b/b/c$a;
.super Ljava/lang/Object;
.source "PreparedGet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/a/a/c/c;


# direct methods
.method public constructor <init>(Lcom/a/a/c/c;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/a/a/c/b/b/c$a;->a:Lcom/a/a/c/c;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/a/a/c/b/b/d$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/a/a/c/b/b/d$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/a/a/c/b/b/d$a;

    iget-object v1, p0, Lcom/a/a/c/b/b/c$a;->a:Lcom/a/a/c/c;

    invoke-direct {v0, v1, p1}, Lcom/a/a/c/b/b/d$a;-><init>(Lcom/a/a/c/c;Ljava/lang/Class;)V

    return-object v0
.end method
