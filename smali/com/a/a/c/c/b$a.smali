.class public final Lcom/a/a/c/c/b$a;
.super Ljava/lang/Object;
.source "InsertQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/a/a/c/c/b$b;
    .locals 1

    .prologue
    .line 128
    const-string v0, "Table name is null or empty"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/a/a/c/c/b$b;

    invoke-direct {v0, p1}, Lcom/a/a/c/c/b$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
