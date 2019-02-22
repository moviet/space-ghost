.class public Lcom/a/a/c/b/a/d$a;
.super Ljava/lang/Object;
.source "PreparedDelete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b/a/d;
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
    iput-object p1, p0, Lcom/a/a/c/b/a/d$a;->a:Lcom/a/a/c/c;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c/c/a;)Lcom/a/a/c/b/a/e$a;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/a/a/c/b/a/e$a;

    iget-object v1, p0, Lcom/a/a/c/b/a/d$a;->a:Lcom/a/a/c/c;

    invoke-direct {v0, v1, p1}, Lcom/a/a/c/b/a/e$a;-><init>(Lcom/a/a/c/c;Lcom/a/a/c/c/a;)V

    return-object v0
.end method
