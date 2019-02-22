.class public final Lcom/a/a/c/c/a$a;
.super Ljava/lang/Object;
.source "DeleteQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/a/a/c/c/a$b;
    .locals 1

    .prologue
    .line 144
    const-string v0, "Table name is null or empty"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/a/a/c/c/a$b;

    invoke-direct {v0, p1}, Lcom/a/a/c/c/a$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
