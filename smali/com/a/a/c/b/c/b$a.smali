.class public Lcom/a/a/c/b/c/b$a;
.super Ljava/lang/Object;
.source "PreparedPut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b/c/b;
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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/a/a/c/b/c/b$a;->a:Lcom/a/a/c/c;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Lcom/a/a/c/b/c/c$a;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/a/a/c/b/c/c$a;

    iget-object v1, p0, Lcom/a/a/c/b/c/b$a;->a:Lcom/a/a/c/c;

    invoke-direct {v0, v1, p1}, Lcom/a/a/c/b/c/c$a;-><init>(Lcom/a/a/c/c;Landroid/content/ContentValues;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/a/a/c/b/c/d$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/a/a/c/b/c/d$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/a/a/c/b/c/d$a;

    iget-object v1, p0, Lcom/a/a/c/b/c/b$a;->a:Lcom/a/a/c/c;

    invoke-direct {v0, v1, p1}, Lcom/a/a/c/b/c/d$a;-><init>(Lcom/a/a/c/c;Ljava/lang/Object;)V

    return-object v0
.end method
