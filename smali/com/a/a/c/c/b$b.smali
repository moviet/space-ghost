.class public final Lcom/a/a/c/c/b$b;
.super Ljava/lang/Object;
.source "InsertQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/a/a/c/c/b$b;->a:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/c/c/b;
    .locals 4

    .prologue
    .line 193
    new-instance v0, Lcom/a/a/c/c/b;

    iget-object v1, p0, Lcom/a/a/c/c/b$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/c/c/b$b;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/c/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/c/c/b$1;)V

    return-object v0
.end method
