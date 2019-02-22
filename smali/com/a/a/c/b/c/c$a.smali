.class public Lcom/a/a/c/b/c/c$a;
.super Ljava/lang/Object;
.source "PreparedPutContentValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/a/a/c/c;

.field private final b:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/a/a/c/c;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/a/a/c/b/c/c$a;->a:Lcom/a/a/c/c;

    .line 142
    iput-object p2, p0, Lcom/a/a/c/b/c/c$a;->b:Landroid/content/ContentValues;

    .line 143
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c/b/c/e;)Lcom/a/a/c/b/c/c$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/b/c/e",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/a/a/c/b/c/c$b;"
        }
    .end annotation

    .prologue
    .line 155
    const-string v0, "Please specify put resolver"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/a/a/c/b/c/c$b;

    iget-object v1, p0, Lcom/a/a/c/b/c/c$a;->a:Lcom/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/c/b/c/c$a;->b:Landroid/content/ContentValues;

    invoke-direct {v0, v1, v2, p1}, Lcom/a/a/c/b/c/c$b;-><init>(Lcom/a/a/c/c;Landroid/content/ContentValues;Lcom/a/a/c/b/c/e;)V

    return-object v0
.end method
