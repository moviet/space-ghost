.class public Lcom/a/a/c/b/c/c$b;
.super Ljava/lang/Object;
.source "PreparedPutContentValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/a/a/c/c;

.field private final b:Landroid/content/ContentValues;

.field private final c:Lcom/a/a/c/b/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/c/e",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/c/c;Landroid/content/ContentValues;Lcom/a/a/c/b/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "Landroid/content/ContentValues;",
            "Lcom/a/a/c/b/c/e",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/a/a/c/b/c/c$b;->a:Lcom/a/a/c/c;

    .line 181
    iput-object p2, p0, Lcom/a/a/c/b/c/c$b;->b:Landroid/content/ContentValues;

    .line 182
    iput-object p3, p0, Lcom/a/a/c/b/c/c$b;->c:Lcom/a/a/c/b/c/e;

    .line 183
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/c/b/c/c;
    .locals 4

    .prologue
    .line 192
    new-instance v0, Lcom/a/a/c/b/c/c;

    iget-object v1, p0, Lcom/a/a/c/b/c/c$b;->a:Lcom/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/c/b/c/c$b;->b:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/a/a/c/b/c/c$b;->c:Lcom/a/a/c/b/c/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/c/b/c/c;-><init>(Lcom/a/a/c/c;Landroid/content/ContentValues;Lcom/a/a/c/b/c/e;)V

    return-object v0
.end method
